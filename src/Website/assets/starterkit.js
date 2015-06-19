jQuery(document).ready(function ($) {
    var pic = $('#productImage');
    var x;

    
    $('#product a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    })

    if (window.location.hash) {
        $('#product a[href="' + window.location.hash + '"]').tab('show')
    }
    else {
        $('#product a:first').tab('show')
    }
});

function openTutorial(anchor) {
    var winWidth = '350';
	var args = '';
        args += "height="+(screen.availHeight-50)+",";
        args += "width="+winWidth+",";
        args += "screenx="+(screen.availWidth-winWidth-25)+",";
        args += "screeny=0,";
        args += "left="+(screen.availWidth-winWidth-25)+",";
        args += "top=0,";
        args += "scrollbars=1,";
        args += "resizable=1,";
        args += "toolbar=0,";
        args += "status=0,";
   
	var win = window.open(anchor, "Tutorial", args);
	return false;
}

function EmbedFlash(path, height, width, flashvars)
{
  var obj = "<object codeBase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0\" quality=\"high\" ";
  if(height.length > 0)
      obj += "height=\"" + height + "\" ";
  
  if(width.length > 0)
      obj += "width=\""+ width + "\" ";
  
  obj += "classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" VIEWASTEXT>\r\n";
    
  document.write( obj)
  document.write( "<param name=\"flashvars\" value=\"" + flashvars + "\" />\r\n" );
  document.write( "<param name=\"movie\" value=\"" + path + "\" />\r\n" );
  document.write( "<param name=\"src\" value=\"" + path + "\" />\r\n" );
  document.write( "<param name=\"quality\" value=\"high\" />\r\n" );
  document.write( "<embed src=\"" + path + "\" quality=\"high\" flashvars=\"" + flashvars + "\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" menu=\"false\" height=\"" + height + "\" width=\"" + width + "\" />\r\n" );
  document.write( "</object>\r\n" );
}

function doClear(inputField)
{
  if (inputField.value == inputField.defaultValue) 
  {
    inputField.value = "";
    inputField.style.color = "black";
  }
}