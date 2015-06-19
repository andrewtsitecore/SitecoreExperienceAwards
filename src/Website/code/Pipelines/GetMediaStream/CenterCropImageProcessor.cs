/********************************************************************** 
* File   : ImageProcessor.cs                          Part of Sitecore
* Version: 1.0                                        www.sitecore.net
* Purpose: On-the-fly image manipulation via the getMediaStream Pipeline                                                    
* Bugs   : None known.                                                                                 
* Status : Published.                                                                                     
* Copyright (C) 1999-2008 by Sitecore A/S. All rights reserved.                      
* This work is the property of:                                                                
*        Sitecore A/S                                                                                                  
*        Meldahlsgade 5, 4.                                                                                      
*        1613 Copenhagen V.                                                                                    
*        Denmark                                                                                                      
* This is a Sitecore published work under Sitecore's                                                    
* shared source license.                                                                                          
**********************************************************************/

namespace Officecore.Website.code.Pipelines.GetMediaStream
{
    using System;
    using System.Drawing;
    using System.Drawing.Drawing2D;
    using System.Drawing.Imaging;
    using System.IO;

    using Sitecore.Configuration;
    using Sitecore.Data.Items;
    using Sitecore.Diagnostics;
    using Sitecore.Resources.Media;

    /// <summary>
    /// Performs image manipulation on the fly, hooking into the Sitecore getMediaStream pipeline
    /// </summary>
    public class CenterCropImageProcessor
    {
        /// <summary>
        /// Quality of output JPG image (out of 100)
        /// </summary>
        private long _JPG_QUALITY = (long)Convert.ToInt16(Settings.GetSetting("ImageCropperJpegQuality"));

        /// <summary>
        /// Called by Sitecore getMediaStream processor
        /// </summary>
        /// <param name="args">Args from Sitecore getMediaStream pipeline containing image to process</param>
        public void Process(GetMediaStreamPipelineArgs args)
        {
            // only crop image if we have a custom width and height (and crop=1)
            if (args.Options.CustomOptions["crop"] != null && args.Options.Height > 0 && args.Options.Width > 0)
            {
                int templateWidth = args.Options.Width;
                int templateHeight = args.Options.Height;

                if (args.OutputStream != null && args.OutputStream.Stream != null)
                {
                    CropImage(templateWidth, templateHeight, args);
                }
            }

            /**********************************************
             *  Add more image processing options here.. 
             **********************************************/
        }

        /// <summary>
        /// Crops the given image (from pipeline args) to the given dimensions
        /// </summary>
        /// <param name="templateWidth">Width to crop image</param>
        /// <param name="templateHeight">Height to crop image</param>
        /// <param name="args">Args from Sitecore getMediaStream pipeline containing image to process</param>
        private void CropImage(int templateWidth, int templateHeight, GetMediaStreamPipelineArgs args)
        {
            var initImage = (Bitmap)Bitmap.FromStream(args.OutputStream.Stream);
            double templateRate = double.Parse(templateWidth.ToString()) / templateHeight;
            double initRate = double.Parse(initImage.Width.ToString()) / initImage.Height;

            if (templateRate == initRate) // if requested w/h is the same ratio as original
            {
                Image templateImage = new Bitmap(templateWidth, templateHeight);
                Graphics templateG = Graphics.FromImage(templateImage);
                templateG.InterpolationMode = InterpolationMode.High;
                templateG.SmoothingMode = SmoothingMode.None;
                templateG.Clear(Color.White);
                templateG.DrawImage(initImage, new Rectangle(0, 0, templateWidth, templateHeight), new Rectangle(0, 0, initImage.Width, initImage.Height), GraphicsUnit.Pixel);

                try
                {
                    var stream = new MemoryStream();
                    EncoderParameters ep = new EncoderParameters(1);
                    ep.Param[0] = new EncoderParameter(Encoder.Quality, _JPG_QUALITY);
                    templateImage.Save(stream, GetEncoder(ImageFormat.Jpeg), ep);
                    args.OutputStream = new MediaStream(stream, "jpg", args.MediaData.MediaItem);
                }
                catch (Exception ex)
                {
                    if (Convert.ToBoolean(Settings.GetSetting("ImageCropperEnableLog")))
                    {
                        Log.Error("[Image Cropper] fail: " + ex.Message, this);
                    }
                }
            }
            else // if a new ratio is requested
            {
                Image pickedImage = null;
                Graphics pickedG = null;
                Rectangle fromR = new Rectangle(0, 0, 0, 0);
                Rectangle toR = new Rectangle(0, 0, 0, 0);

                // calculate dimensions of new image
                if (templateRate > initRate)
                {
                    pickedImage = new Bitmap(initImage.Width, int.Parse(Math.Floor(initImage.Width / templateRate).ToString()));
                    pickedG = Graphics.FromImage(pickedImage);
                    fromR.X = 0;
                    fromR.Y = int.Parse(Math.Floor((initImage.Height - initImage.Width / templateRate) / 2).ToString());
                    fromR.Width = initImage.Width;
                    fromR.Height = int.Parse(Math.Floor(initImage.Width / templateRate).ToString());
                    toR.X = 0;
                    toR.Y = 0;
                    toR.Width = initImage.Width;
                    toR.Height = int.Parse(Math.Floor(initImage.Width / templateRate).ToString());
                }
                else
                {
                    pickedImage = new Bitmap(int.Parse(Math.Floor(initImage.Height * templateRate).ToString()), initImage.Height);
                    pickedG = Graphics.FromImage(pickedImage);
                    fromR.X = int.Parse(Math.Floor((initImage.Width - initImage.Height * templateRate) / 2).ToString());
                    fromR.Y = 0;
                    fromR.Width = int.Parse(Math.Floor(initImage.Height * templateRate).ToString());
                    fromR.Height = initImage.Height;
                    toR.X = 0;
                    toR.Y = 0;
                    toR.Width = int.Parse(Math.Floor(initImage.Height * templateRate).ToString());
                    toR.Height = initImage.Height;
                }

                pickedG.DrawImage(initImage, toR, fromR, GraphicsUnit.Pixel);
                Image templateImage = new Bitmap(templateWidth, templateHeight);
                Graphics templateG = Graphics.FromImage(templateImage);
                templateG.Clear(Color.White);
                templateG.DrawImage(pickedImage, new Rectangle(0, 0, templateWidth, templateHeight), new Rectangle(0, 0, pickedImage.Width, pickedImage.Height), GraphicsUnit.Pixel);

                try
                {
                    var stream = new MemoryStream();
                    EncoderParameters ep = new EncoderParameters(1);
                    ep.Param[0] = new EncoderParameter(Encoder.Quality, _JPG_QUALITY);
                    templateImage.Save(stream, GetEncoder(ImageFormat.Jpeg), ep);
                    MediaItem mi = args.MediaData.MediaItem;
                    args.OutputStream = new MediaStream(stream, "jpg", args.MediaData.MediaItem);
                }
                catch (Exception ex)
                {
                    if (Convert.ToBoolean(Settings.GetSetting("ImageCropperEnableLog")))
                    {
                        Log.Error("[Image Cropper] fail: " + ex.Message, this);
                    }
                }

                templateG.Dispose();
                templateImage.Dispose();
                pickedG.Dispose();
                pickedImage.Dispose();
            }
            initImage.Dispose();
        }


        /// <summary>
        /// Used to retrieve image encoding detils from the GDI
        /// </summary>
        /// <param name="format"></param>
        /// <returns></returns>
        public static ImageCodecInfo GetEncoder(ImageFormat format)
        {
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageDecoders();
            foreach (ImageCodecInfo codec in codecs)
            {
                if (codec.FormatID == format.Guid)
                {
                    return codec;
                }
            }
            return null;
        }

    }
}