﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Office-supplies.aspx.cs" Inherits="Officecore.Website.layouts.Officecore.Layouts.Google.Office_supplies" %>

<!DOCTYPE html>
<html>
<head>
    <meta content="IE=9" http-equiv="X-UA-Compatible">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="/images/google_favicon_128.png" itemprop="image">
    <meta content="origin" id="mref" name="referrer">
    <title>office supplies - Google Search</title>

    <style id="ostyle">
        @-webkit-keyframes gb__a {
            0% {
                opacity: 0;
            }

            50% {
                opacity: 1;
            }
        }

        @keyframes gb__a {
            0% {
                opacity: 0;
            }

            50% {
                opacity: 1;
            }
        }

        .gb_0b {
            left: 0;
            min-width: 1084px;
            position: absolute;
            top: 0;
            -webkit-user-select: none;
            width: 100%;
        }

        .gb_zb {
            font: 13px/27px Arial,sans-serif;
            position: relative;
            height: 60px;
            width: 100%;
        }

        #gba {
            height: 60px;
        }

            #gba.gb_1b {
                height: 90px;
            }

        .gb_zb > .gb_k {
            height: 60px;
            line-height: 58px;
            vertical-align: middle;
        }

        .gb_zb::before {
            background: #e5e5e5;
            bottom: 0;
            content: '';
            display: none;
            height: 1px;
            left: 0;
            position: absolute;
            right: 0;
        }

        .gb_zb {
            background: #f1f1f1;
        }

        .gb_2b .gb_zb {
            background: #fff;
        }

            .gb_2b .gb_zb::before {
                display: none;
            }

        .gb_p .gb_zb, .gb_q .gb_zb {
            background: transparent;
        }

            .gb_p .gb_zb::before {
                background: #e1e1e1;
                background: rgba(0,0,0,.12);
            }

            .gb_q .gb_zb::before {
                background: #333;
                background: rgba(255,255,255,.2);
            }

        .gb_k {
            display: inline-block;
            -webkit-flex: 0 0 auto;
            flex: 0 0 auto;
        }

            .gb_k.gb_3b {
                float: right;
                -webkit-order: 1;
                order: 1;
            }

        .gb_4b {
            white-space: nowrap;
            display: -webkit-flex;
            display: flex;
        }

        .gb_0b.gb_ib {
            min-width: 980px;
        }

        .gb_4b, .gb_k {
            margin-left: 0!important;
            margin-right: 0!important;
        }

        .gb_h {
            background-size: 237px 778px;
        }

        @media (min-resolution:1.25dppx),(-webkit-min-device-pixel-ratio:1.25),(min-device-pixel-ratio:1.25) {
        }

        .gb_Va {
            display: inline-block;
            padding: 0 0 0 15px;
            vertical-align: middle;
        }

            .gb_Va:first-child, #gbsfw:first-child + .gb_Va {
                padding-left: 0;
            }

        .gb_La {
            position: relative;
        }

        .gb_s {
            display: inline-block;
            outline: none;
            vertical-align: middle;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            height: 30px;
            width: 30px;
        }

        #gb#gb a.gb_s {
            color: #404040;
            cursor: default;
            text-decoration: none;
        }

            #gb#gb a.gb_s:hover, #gb#gb a.gb_s:focus {
                color: #000;
            }

        .gb_S {
            border-color: transparent;
            border-bottom-color: #fff;
            border-style: dashed dashed solid;
            border-width: 0 8px 8px;
            display: none;
            position: absolute;
            left: 7px;
            top: 37px;
            z-index: 1;
            height: 0;
            width: 0;
            -webkit-animation: gb__a .2s;
            animation: gb__a .2s;
        }

        .gb_T {
            border-color: transparent;
            border-style: dashed dashed solid;
            border-width: 0 8px 8px;
            display: none;
            position: absolute;
            left: 7px;
            z-index: 1;
            height: 0;
            width: 0;
            -webkit-animation: gb__a .2s;
            animation: gb__a .2s;
            border-bottom-color: #ccc;
            border-bottom-color: rgba(0,0,0,.2);
            top: 36px;
        }

        x:-o-prefocus, div.gb_T {
            border-bottom-color: #ccc;
        }

        .gb_t {
            background: #fff;
            border: 1px solid #ccc;
            border-color: rgba(0,0,0,.2);
            box-shadow: 0 2px 10px rgba(0,0,0,.2);
            display: none;
            overflow: hidden;
            position: absolute;
            right: 0;
            top: 44px;
            -webkit-animation: gb__a .2s;
            animation: gb__a .2s;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            -webkit-user-select: text;
        }

        .gb_Va.gb_pa .gb_S, .gb_Va.gb_pa .gb_T, .gb_Va.gb_pa .gb_t {
            display: block;
        }

        .gb_Qb {
            position: absolute;
            right: 0;
            top: 44px;
            z-index: -1;
        }

        .gb_zb ::-webkit-scrollbar {
            height: 15px;
            width: 15px;
        }

        .gb_zb ::-webkit-scrollbar-button {
            height: 0;
            width: 0;
        }

        .gb_zb ::-webkit-scrollbar-thumb {
            background-clip: padding-box;
            background-color: rgba(0,0,0,.3);
            border: 5px solid transparent;
            border-radius: 10px;
            min-height: 20px;
            min-width: 20px;
            height: 5px;
            width: 5px;
        }

            .gb_zb ::-webkit-scrollbar-thumb:hover, .gb_zb ::-webkit-scrollbar-thumb:active {
                background-color: rgba(0,0,0,.4);
            }

        .gb_Ab {
            display: none!important;
        }

        .gb_a {
            background-size: 64px 64px;
        }

        @media (min-resolution:1.25dppx),(-webkit-min-device-pixel-ratio:1.25),(min-device-pixel-ratio:1.25) {
            
        }

        .gb_b {
            display: inline-block;
            vertical-align: top;
            height: 100px;
            width: 88px;
        }

                .gb_b.gb_c {
                    visibility: hidden;
                }

                .gb_b.gb_d {
                    background: #fff;
                    border: 1px solid #ddd;
                    cursor: -moz-grabbing;
                    cursor: -webkit-grabbing;
                    margin: -1px;
                    visibility: visible;
                    z-index: 1001;
                    -webkit-box-shadow: 0 0 3px #ddd;
                    box-shadow: 0 0 3px #ddd;
                }

            .gb_e {
                opacity: .5;
            }

            .gb_b.gb_d a {
                color: #404040!important;
                cursor: -moz-grabbing;
                cursor: -webkit-grabbing;
                font: 13px/27px Arial,sans-serif;
                text-decoration: none!important;
            }

            .gb_f {
                display: inline-block;
                font-size: 13px;
                margin: 8px 2px;
                text-align: center;
                outline: none;
            }

            #gb#gb a.gb_f, #gb#gb a.gb_g {
                color: #404040;
                text-decoration: none;
            }

            .gb_f .gb_h, .gb_f .gb_a {
                display: inline-block;
                vertical-align: top;
                height: 64px;
                width: 64px;
            }

            .gb_i {
                display: block;
                line-height: 20px;
                overflow: hidden;
                white-space: nowrap;
                width: 84px;
                text-overflow: ellipsis;
            }

            .gb_b:hover .gb_f {
                position: relative;
            }

            .gb_b:hover .gb_i {
                background: rgba(255,255,255,.9);
                white-space: normal;
                overflow-wrap: break-word;
                word-wrap: break-word;
            }

            .gb_j.gb_k {
                display: none;
                padding-left: 15px;
                vertical-align: middle;
            }

                .gb_j.gb_k:first-child {
                    padding-left: 0;
                }

            .gb_l.gb_k {
                display: inline-block;
                -webkit-flex: 0 1 auto;
                flex: 0 1 auto;
                display: -webkit-flex;
                display: flex;
            }

            .gb_m .gb_l {
                display: none;
            }

            .gb_j .gb_g {
                display: inline-block;
                line-height: 24px;
                outline: none;
                vertical-align: middle;
            }

            .gb_l .gb_g {
                min-width: 60px;
                overflow: hidden;
                -webkit-flex: 0 1 auto;
                flex: 0 1 auto;
                text-overflow: ellipsis;
            }

            #gb#gb a.gb_g:hover, #gb#gb a.gb_g:focus {
                color: #000;
                text-decoration: underline;
            }

            .gb_f.gb_n {
                cursor: default;
                filter: url("data:image/svg+xml;utf8,\00003csvg xmlns=\000027http://www.w3.org/2000/svg\000027\00003e\00003cfilter id=\000027g\000027\00003e\00003cfeColorMatrix values=\0000270.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\000027/\00003e\00003c/filter\00003e\00003c/svg\00003e#g");
                -webkit-filter: grayscale(1);
                opacity: .4;
            }

            .gb_o .gb_l .gb_g {
                width: 0!important;
            }

            .gb_p .gb_g {
                font-weight: bold;
                text-shadow: 0 1px 1px rgba(255,255,255,.9);
            }

            .gb_q .gb_g {
                font-weight: bold;
                text-shadow: 0 1px 1px rgba(0,0,0,.6);
            }

            #gb#gb.gb_q a.gb_g {
                color: #fff;
            }

            .gb_r .gb_s {
                background-position: 0 -588px;
                opacity: .55;
            }

                .gb_r .gb_s:hover, .gb_r .gb_s:focus {
                    opacity: .85;
                }

            .gb_r .gb_t {
                min-height: 196px;
                overflow-y: auto;
                width: 320px;
            }

            .gb_u {
                -webkit-transition: height .2s ease-in-out;
                transition: height .2s ease-in-out;
            }

            .gb_v {
                background: #fff;
                margin: 0;
                min-height: 100px;
                padding: 28px;
                padding-right: 27px;
                text-align: left;
                white-space: normal;
                width: 265px;
            }

            .gb_w {
                background: #f5f5f5;
                cursor: pointer;
                height: 40px;
                overflow: hidden;
                position: absolute;
            }

            .gb_x {
                position: relative;
            }

            .gb_w {
                display: block;
                line-height: 40px;
                text-align: center;
                width: 320px;
            }

            .gb_x {
                display: block;
                line-height: 40px;
                text-align: center;
            }

                .gb_x.gb_y {
                    line-height: 0;
                }

            #gb a.gb_w, #gb a.gb_w:visited, #gb a.gb_w:active, #gb a.gb_x, #gb a.gb_x:visited {
                color: #737373;
                text-decoration: none;
            }

                #gb a.gb_x:active {
                    color: #737373;
                }

            .gb_x, .gb_v {
                display: none;
            }

            .gb_z, .gb_z + .gb_x, .gb_A .gb_x, .gb_A .gb_v {
                display: block;
            }

            #gb a.gb_x:hover, #gb a.gb_x:active {
                text-decoration: underline;
            }

            .gb_x {
                border-bottom: 1px solid #ebebeb;
                left: 28px;
                width: 264px;
            }

            .gb_A .gb_w {
                display: none;
            }

            .gb_x:last-child {
                border-bottom-width: 0;
            }

            .gb_B.gb_C {
                height: 100px;
                text-align: center;
            }

                .gb_B.gb_C img {
                    padding: 34px 0;
                    height: 32px;
                    width: 32px;
                }

            .gb_B .gb_h {
                background-position: 0 -138px;
            }

                .gb_B .gb_h + img {
                    border: 0;
                    margin: 8px;
                    height: 48px;
                    width: 48px;
                }

            .gb_B div.gb_D {
                background: #ffa;
                border-radius: 5px;
                padding: 5px;
                text-align: center;
            }

            .gb_E .gb_w {
                margin-top: 0;
                position: static;
            }

            .gb_F {
                display: inline-block;
            }

            .gb_H {
                width: 264px;
                -webkit-border-radius: 2px;
                border-radius: 2px;
            }

            .gb_I {
                background-size: 32px 32px;
                display: inline-block;
                margin: 8px;
                vertical-align: middle;
                height: 32px;
                width: 32px;
            }

            .gb_K {
                color: #737373;
                display: inline-block;
                font: 13px/18px Arial,sans-serif;
                margin-right: 48px;
                vertical-align: middle;
                white-space: normal;
            }

            #gb#gb .gb_L {
                color: #427fed;
                text-decoration: none;
            }

                #gb#gb .gb_L:hover {
                    text-decoration: underline;
                }

            .gb_p .gb_r .gb_s {
                background-position: -207px -138px;
                opacity: .7;
            }

                .gb_p .gb_r .gb_s:hover, .gb_p .gb_r .gb_s:focus {
                    opacity: .85;
                }

            .gb_q .gb_r .gb_s {
                background-position: -69px -69px;
                opacity: 1;
            }

            .gb_M {
                background: #f8f8f8;
                border: 1px solid #c6c6c6;
                display: inline-block;
                line-height: 28px;
                padding: 0 12px;
                -webkit-border-radius: 2px;
                border-radius: 2px;
            }

            #gb a.gb_M.gb_M {
                color: #666;
                cursor: default;
                text-decoration: none;
            }

            .gb_N {
                border: 1px solid #cb4437;
                font-weight: bold;
                outline: none;
                text-transform: uppercase;
                background: #cb4437;
                background: -webkit-linear-gradient(top,#e04a3f,#cd372d);
                background: linear-gradient(top,#e04a3f,#cd372d);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#e04a3f,endColorstr=#cd372d,GradientType=0);
            }

            #gb a.gb_N.gb_N {
                color: #fff;
            }

            .gb_N:hover {
                -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15);
                box-shadow: 0 1px 0 rgba(0,0,0,.15);
            }

            .gb_N:active {
                -webkit-box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                background: #b73d32;
                background: -webkit-linear-gradient(top,#ca4339,#b93229);
                background: linear-gradient(top,#ca4339,#b93229);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ca4339,endColorstr=#b93229,GradientType=0);
            }

            .gb_O {
                border: 1px solid #4285f4;
                font-weight: bold;
                outline: none;
                background: #4285f4;
                background: -webkit-linear-gradient(top,#4387fd,#4683ea);
                background: linear-gradient(top,#4387fd,#4683ea);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4387fd,endColorstr=#4683ea,GradientType=0);
            }

            #gb a.gb_O.gb_O {
                color: #fff;
            }

            .gb_O:hover {
                -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15);
                box-shadow: 0 1px 0 rgba(0,0,0,.15);
            }

            .gb_O:active {
                -webkit-box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                background: #3c78dc;
                background: -webkit-linear-gradient(top,#3c7ae4,#3f76d3);
                background: linear-gradient(top,#3c7ae4,#3f76d3);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#3c7ae4,endColorstr=#3f76d3,GradientType=0);
            }

            .gb_P {
                display: inline-block;
                line-height: normal;
                position: relative;
                z-index: 987;
            }

            .gb_Q {
                background-size: 32px 32px;
                border-radius: 50%;
                display: block;
                margin: -1px;
                height: 32px;
                width: 32px;
            }

                .gb_Q:hover, .gb_Q:focus {
                    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    box-shadow: 0 1px 0 rgba(0,0,0,.15);
                }

                .gb_Q:active {
                    -webkit-box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                    box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                }

                    .gb_Q:active::after {
                        background: rgba(0,0,0,.1);
                        border-radius: 50%;
                        content: '';
                        display: block;
                        height: 100%;
                    }

            .gb_R {
                cursor: pointer;
                line-height: 30px;
                min-width: 30px;
                overflow: hidden;
                vertical-align: middle;
                width: auto;
                text-overflow: ellipsis;
            }

                .gb_R ~ .gb_S, .gb_R ~ .gb_T {
                    left: auto;
                    right: 7px;
                }

            .gb_U {
                border-top: 4px solid #404040;
                border-left: 4px dashed transparent;
                border-right: 4px dashed transparent;
                display: inline-block;
                margin-left: 6px;
                vertical-align: middle;
            }

            .gb_V:hover .gb_U {
                border-top-color: #000;
            }

            #gb a.gb_W.gb_W, #gb .gb_X.gb_X a {
                color: #36c;
                text-decoration: none;
            }

            #gb a.gb_W:active, #gb a.gb_W:hover, #gb .gb_X a:active, #gb .gb_X a:hover {
                text-decoration: underline;
            }

            .gb_Z {
                margin: 20px;
            }

            .gb_0, .gb_1 {
                display: inline-block;
                vertical-align: top;
            }

            .gb_0 {
                margin-right: 20px;
                position: relative;
            }

            .gb_2 {
                background-size: 96px 96px;
                border: none;
                vertical-align: top;
                height: 96px;
                width: 96px;
            }

            .gb_3 {
                background: rgba(78,144,254,.7);
                bottom: 0;
                color: #fff;
                font-size: 9px;
                font-weight: bold;
                left: 0;
                line-height: 9px;
                position: absolute;
                padding: 7px 0;
                text-align: center;
                width: 96px;
            }

            .gb_4 {
                font-weight: bold;
                margin: -4px 0 1px 0;
            }

            .gb_5 {
                color: #666;
            }

            .gb_X {
                color: #ccc;
                margin: 6px 0;
            }

                .gb_X a {
                    margin: 0 10px;
                }

                    .gb_X a:first-child {
                        margin-left: 0;
                    }

                    .gb_X a:last-child {
                        margin-right: 0;
                    }

            .gb_1 .gb_M {
                background: #4d90fe;
                border-color: #3079ed;
                font-weight: bold;
                margin: 10px 0 0 0;
            }

            #gb .gb_1 a.gb_M.gb_M {
                color: #fff;
            }

            .gb_1 .gb_M:hover {
                background: #357ae8;
                border-color: #2f5bb7;
            }

            .gb_6 {
                background: #f5f5f5;
                border-top: 1px solid #ccc;
                border-color: rgba(0,0,0,.2);
                padding: 10px 0;
                width: 100%;
                display: table;
            }

                .gb_6 .gb_M {
                    margin: 0 20px;
                }

                .gb_6 > div {
                    display: table-cell;
                    text-align: right;
                }

                    .gb_6 > div:first-child {
                        text-align: left;
                    }

                .gb_6 .gb_7 {
                    display: block;
                    text-align: center;
                }

            .gb_8 .gb_S {
                border-bottom-color: #fef9db;
            }

            .gb_9 {
                background: #fef9db;
                font-size: 11px;
                padding: 10px 20px;
                white-space: normal;
            }

                .gb_9 b, .gb_W {
                    white-space: nowrap;
                }

            .gb_aa {
                background: #f5f5f5;
                border-top: 1px solid #ccc;
                border-top-color: rgba(0,0,0,.2);
                max-height: 230px;
                overflow: auto;
            }

            .gb_ba {
                border-top: 1px solid #ccc;
                border-top-color: rgba(0,0,0,.2);
                display: block;
                padding: 10px 20px;
            }

                .gb_ba:hover {
                    background: #eee;
                }

                .gb_ba:first-child, .gb_ca:first-child + .gb_ba {
                    border-top: 0;
                }

            .gb_ca {
                display: none;
            }

            .gb_da {
                cursor: default;
            }

                .gb_da:hover {
                    background: transparent;
                }

            .gb_ea {
                border: none;
                vertical-align: top;
            }

            .gb_fa {
                display: inline-block;
                margin: 6px 0 0 10px;
            }

            .gb_da .gb_ea, .gb_da .gb_fa {
                opacity: .4;
            }

            .gb_ga {
                color: #000;
            }

            .gb_da .gb_ga {
                color: #666;
            }

            .gb_ha {
                color: #666;
            }

            .gb_ia {
                background: #f5f5f5;
                border-top: 1px solid #ccc;
                border-top-color: rgba(0,0,0,.2);
                display: block;
            }

            .gb_ja {
                background-position: -125px -69px;
                display: inline-block;
                margin: 11px 10px 11px 20px;
                vertical-align: middle;
                height: 25px;
                width: 25px;
            }

            .gb_p .gb_R {
                font-weight: bold;
                text-shadow: 0 1px 1px rgba(255,255,255,.9);
            }

            .gb_q .gb_R {
                font-weight: bold;
                text-shadow: 0 1px 1px rgba(0,0,0,.6);
            }

            #gb#gb.gb_q a.gb_R {
                color: #fff;
            }

            .gb_p .gb_Q, .gb_q .gb_Q {
                -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
                box-shadow: 0 1px 2px rgba(0,0,0,.2);
            }

                .gb_p .gb_Q:hover, .gb_q .gb_Q:hover, .gb_p .gb_Q:focus, .gb_q .gb_Q:focus {
                    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2);
                    box-shadow: 0 1px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2);
                }

            .gb_ka .gb_la {
                position: absolute;
                right: 1px;
            }

            .gb_la.gb_k, .gb_ma.gb_k, .gb_V.gb_k {
                -webkit-flex: 0 1 auto;
                flex: 0 1 auto;
            }

            .gb_na.gb_o .gb_R {
                width: 30px!important;
            }

            #gbsfw {
                min-width: 400px;
                overflow: visible;
            }

                .gb_oa, #gbsfw.gb_pa {
                    display: block;
                    outline: none;
                }

            .gb_qa {
                min-width: 127px;
                overflow: hidden;
                position: relative;
                z-index: 987;
            }

            .gb_ra {
                position: absolute;
                padding: 0 20px 0 15px;
            }

            .gb_sa .gb_ra {
                right: 100%;
                margin-right: -127px;
            }

            .gb_ta {
                display: inline-block;
                outline: none;
                vertical-align: middle;
            }

            .gb_ua .gb_ta {
                position: relative;
                top: 2px;
            }

            .gb_ta .gb_h, .gb_va {
                display: block;
            }

            .gb_wa {
                border: none;
                display: block;
                visibility: hidden;
            }

            .gb_ta .gb_h {
                background-position: -35px -674px;
                height: 33px;
                width: 92px;
            }

            .gb_va {
                background-repeat: no-repeat;
            }

            .gb_q .gb_ta .gb_h {
                background-position: -35px -600px;
                margin: -3px 0 0 -10px;
                height: 52px;
                width: 112px;
            }

            .gb_p .gb_ta .gb_h {
                margin: -3px 0 0 -10px;
                height: 52px;
                width: 112px;
                background-position: 0 -276px;
            }

            @-webkit-keyframes gb__nb {
                0% {
                    -webkit-transform: scale(0,0);
                    transform: scale(0,0);
                }

                20% {
                    -webkit-transform: scale(1.4,1.4);
                    transform: scale(1.4,1.4);
                }

                50% {
                    -webkit-transform: scale(.8,.8);
                    transform: scale(.8,.8);
                }

                85% {
                    -webkit-transform: scale(1.1,1.1);
                    transform: scale(1.1,1.1);
                }

                to {
                    -webkit-transform: scale(1.0,1.0);
                    transform: scale(1.0,1.0);
                }
            }

            @keyframes gb__nb {
                0% {
                    -webkit-transform: scale(0,0);
                    transform: scale(0,0);
                }

                20% {
                    -webkit-transform: scale(1.4,1.4);
                    transform: scale(1.4,1.4);
                }

                50% {
                    -webkit-transform: scale(.8,.8);
                    transform: scale(.8,.8);
                }

                85% {
                    -webkit-transform: scale(1.1,1.1);
                    transform: scale(1.1,1.1);
                }

                to {
                    -webkit-transform: scale(1.0,1.0);
                    transform: scale(1.0,1.0);
                }
            }

            .gb_Ka .gb_La {
                font-size: 14px;
                font-weight: bold;
                top: 0;
                right: 0;
            }

            .gb_Ka .gb_s {
                display: inline-block;
                vertical-align: middle;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                height: 30px;
                width: 30px;
            }

            .gb_Ma {
                background-position: -207px -714px;
                opacity: .55;
                height: 100%;
                width: 100%;
            }

            .gb_s:hover .gb_Ma, .gb_s:focus .gb_Ma {
                opacity: .85;
            }

            .gb_Ca .gb_Ma {
                background-position: 0 -679px;
            }

            .gb_Da {
                background-color: #cb4437;
                border-radius: 2px;
                font: bold 11px Arial;
                color: #fff;
                line-height: 15px;
                min-width: 15px;
                position: absolute;
                right: 0;
                text-align: center;
                text-shadow: 0 1px 0 rgba(0,0,0,0.1);
                top: 0;
                visibility: hidden;
                z-index: 990;
            }

            .gb_Ea .gb_Da, .gb_Ea .gb_Fa, .gb_Ea .gb_Fa.gb_Ha {
                visibility: visible;
            }

            .gb_Fa {
                padding: 0 2px;
                visibility: hidden;
            }

            .gb_Ka .gb_T {
                left: 3px;
            }

            .gb_Ka .gb_S {
                left: 3px;
                border-bottom-color: #e5e5e5;
            }

            .gb_Da.gb_Ja {
                -webkit-animation: gb__nb .6s 1s both ease-in-out;
                animation: gb__nb .6s 1s both ease-in-out;
                -webkit-perspective-origin: top right;
                perspective-origin: top right;
                -webkit-transform: scale(1,1);
                transform: scale(1,1);
                -webkit-transform-origin: top right;
                transform-origin: top right;
            }

            .gb_Ja .gb_Fa {
                visibility: visible;
            }

            .gb_p .gb_s .gb_Ma {
                background-position: -69px -345px;
                opacity: .7;
            }

            .gb_p .gb_Ca .gb_Ma {
                background-position: -117px -276px;
            }

            .gb_p .gb_s:hover .gb_Ma, .gb_p .gb_s:focus .gb_Ma {
                opacity: .85;
            }

            .gb_q .gb_s .gb_Ma {
                background-position: -69px -414px;
                opacity: 1;
            }

            .gb_q .gb_Ca .gb_Ma {
                background-position: 0 -623px;
            }

            .gb_p .gb_Da, .gb_q .gb_Da {
                border: none;
                -webkit-box-shadow: -1px 1px 1px rgba(0,0,0,.2);
                box-shadow: -1px 1px 1px rgba(0,0,0,.2);
            }

            .gb_Na {
                display: none;
                margin: 28px;
                margin-bottom: -12px;
                position: relative;
                width: 264px;
                -webkit-border-radius: 2px;
                border-radius: 2px;
                -webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.1),0 0 1px rgba(0,0,0,0.1);
                box-shadow: 0 1px 2px rgba(0,0,0,0.1),0 0 1px rgba(0,0,0,0.1);
            }

                .gb_Na.gb_pa {
                    display: block;
                }

            .gb_Oa {
                display: inline-block;
                margin: 12px;
                vertical-align: top;
                height: 45px;
                width: 44px;
            }

            .gb_Pa {
                background: #eee;
                -webkit-border-radius: 5px;
                border-radius: 5px;
                height: 34px;
                width: 34px;
            }

                .gb_Pa + .gb_Pa {
                    background: #c0c0c0;
                    margin-left: 10px;
                    margin-top: -23px;
                }

            .gb_Qa {
                display: inline-block;
                margin-right: 68px;
                padding: 16px 16px 16px 0;
                vertical-align: top;
                white-space: normal;
            }

                .gb_Qa:first-child {
                    padding-left: 16px;
                }

            .gb_Ra {
                color: #262626;
                font: 16px/24px Arial,sans-serif;
            }

            .gb_Sa {
                color: #737373;
                font: 13px/18px Arial,sans-serif;
            }

            #gb#gb .gb_Na .gb_Ta {
                color: #427fed;
                text-decoration: none;
            }

                #gb#gb .gb_Na .gb_Ta:hover {
                    text-decoration: underline;
                }

            .gb_Na .gb_Ua {
                background-position: -224px -69px;
                cursor: pointer;
                opacity: .27;
                position: absolute;
                right: 4px;
                top: 4px;
                height: 12px;
                width: 12px;
            }

                .gb_Na .gb_Ua:hover {
                    opacity: .55;
                }

            .gb_Va.gb_Wa {
                padding: 0;
            }

            .gb_Wa .gb_t {
                padding: 26px 26px 22px;
                background: #ffffff;
            }

            .gb_Xa.gb_Wa .gb_t {
                background: #4d90fe;
            }

            a.gb_Za {
                color: #666666!important;
                font-size: 22px;
                height: 9px;
                opacity: .8;
                position: absolute;
                right: 14px;
                top: 4px;
                text-decoration: none!important;
                width: 9px;
            }

            .gb_Xa a.gb_Za {
                color: #c1d1f4!important;
            }

            a.gb_Za:hover, a.gb_Za:active {
                opacity: 1;
            }

            .gb_0a {
                padding: 0;
                width: 258px;
                white-space: normal;
            }

            .gb_Xa .gb_0a {
                width: 200px;
            }

            .gb_1a {
                color: #333333;
                font-size: 16px;
                line-height: 20px;
                margin: 0;
                margin-bottom: 16px;
            }

            .gb_Xa .gb_1a {
                color: #ffffff;
            }

            .gb_2a {
                color: #666666;
                line-height: 17px;
                margin: 0;
                margin-bottom: 5px;
            }

            .gb_Xa .gb_2a {
                color: #ffffff;
            }

            .gb_3a {
                position: absolute;
                background: transparent;
                top: -999px;
                z-index: -1;
                visibility: hidden;
                margin-top: 1px;
                margin-left: 1px;
            }

            #gb .gb_Wa {
                margin: 0;
            }

            .gb_Wa .gb_M {
                background: #4d90fe;
                border-color: #3079ed;
                margin-top: 15px;
            }

            #gb .gb_Wa a.gb_M.gb_M {
                color: #ffffff;
            }

            .gb_Wa .gb_M:hover {
                background: #357ae8;
                border-color: #2f5bb7;
            }

            .gb_4a .gb_La .gb_S {
                border-bottom-color: #ffffff;
                display: block;
            }

            .gb_5a .gb_La .gb_S {
                border-bottom-color: #4d90fe;
                display: block;
            }

            .gb_4a .gb_La .gb_T, .gb_5a .gb_La .gb_T {
                display: block;
            }

            .gb_9a {
                color: #ffffff;
                font-size: 13px;
                font-weight: bold;
                height: 25px;
                line-height: 19px;
                padding-top: 5px;
                padding-left: 12px;
                position: relative;
                background-color: #4d90fe;
            }

                .gb_9a .gb_Ua {
                    color: #ffffff;
                    cursor: default;
                    font-size: 22px;
                    font-weight: normal;
                    position: absolute;
                    right: 12px;
                    top: 5px;
                }

                .gb_9a .gb_Ta, .gb_9a .gb_ab {
                    color: #ffffff;
                    display: inline-block;
                    font-size: 11px;
                    margin-left: 16px;
                    padding: 0 8px;
                }

            .gb_bb {
                background: none;
                background-image: -webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,0.16)),to(rgba(0,0,0,0.2)));
                background-image: linear-gradient(top,rgba(0,0,0,0.16),rgba(0,0,0,0.2));
                background-image: -webkit-linear-gradient(top,rgba(0,0,0,0.16),rgba(0,0,0,0.2));
                border-radius: 2px;
                border: 1px solid #dcdcdc;
                border: 1px solid rgba(0,0,0,0.1);
                cursor: default!important;
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#160000ff,endColorstr=#220000ff);
                text-decoration: none!important;
                -webkit-border-radius: 2px;
            }

                .gb_bb:hover {
                    background: none;
                    background-image: -webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,0.14)),to(rgba(0,0,0,0.2)));
                    background-image: linear-gradient(top,rgba(0,0,0,0.14),rgba(0,0,0,0.2));
                    background-image: -webkit-linear-gradient(top,rgba(0,0,0,0.14),rgba(0,0,0,0.2));
                    border: 1px solid rgba(0,0,0,0.2);
                    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
                    -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#14000000,endColorstr=#22000000);
                }

                .gb_bb:active {
                    box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
                    -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
                }

            .gb_cb {
                display: none;
            }

                .gb_cb.gb_pa {
                    display: block;
                }

            .gbqfb, .gbqfba, .gbqfbb {
                cursor: default!important;
                display: inline-block;
                font-weight: bold;
                height: 29px;
                line-height: 29px;
                min-width: 54px;
                padding: 0 8px;
                text-align: center;
                text-decoration: none!important;
                -webkit-border-radius: 2px;
                border-radius: 2px;
                -webkit-user-select: none;
            }

                .gbqfb:focus, .gbqfba:focus, .gbqfbb:focus {
                    border: 1px solid #4d90fe;
                    outline: none;
                    -webkit-box-shadow: inset 0 0 0 1px rgba(255,255,255,0.5);
                    box-shadow: inset 0 0 0 1px rgba(255,255,255,0.5);
                }

                .gbqfb:hover {
                    border-color: #2f5bb7;
                    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    background: #357ae8;
                    background: -webkit-linear-gradient(top,#4d90fe,#357ae8);
                    background: linear-gradient(top,#4d90fe,#357ae8);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4d90fe,endColorstr=#357ae8,GradientType=1);
                }

                .gbqfba:hover {
                    border-color: #c6c6c6;
                    color: #222!important;
                    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    background: #f8f8f8;
                    background: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);
                    background: linear-gradient(top,#f8f8f8,#f1f1f1);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#f8f8f8,endColorstr=#f1f1f1,GradientType=1);
                }

                .gbqfbb:hover {
                    border-color: #c6c6c6;
                    color: #222!important;
                    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    background: #fff;
                    background: -webkit-linear-gradient(top,#fff,#f8f8f8);
                    background: linear-gradient(top,#fff,#f8f8f8);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#fff,endColorstr=#f8f8f8,GradientType=1);
                }

                    .gbqfb:hover:focus, .gbqfba:hover:focus, .gbqfbb:hover:focus {
                        -webkit-box-shadow: inset 0 0 0 1px #fff,0 1px 1px rgba(0,0,0,0.1);
                        box-shadow: inset 0 0 0 1px #fff,0 1px 1px rgba(0,0,0,0.1);
                    }

                .gbqfb:active {
                    background-color: inherit;
                    -webkit-box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                    box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                }

                .gbqfb::-moz-focus-inner {
                    border: 0;
                }

                .gbqfba::-moz-focus-inner {
                    border: 0;
                }

                .gbqfbb::-moz-focus-inner {
                    border: 0;
                }

            .gbqfba, .gbqfbb {
                border: 1px solid #dcdcdc;
                border-color: rgba(0,0,0,0.1);
                color: #444!important;
                font-size: 11px;
            }

            .gbqfb {
                border: 1px solid #3079ed;
                color: #fff!important;
                margin: 0;
                background: #4d90fe;
                background: -webkit-linear-gradient(top,#4d90fe,#4787ed);
                background: linear-gradient(top,#4d90fe,#4787ed);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4d90fe,endColorstr=#4787ed,GradientType=1);
            }

            .gbqfba {
                background: #f5f5f5;
                background: -webkit-linear-gradient(top,#f5f5f5,#f1f1f1);
                background: linear-gradient(top,#f5f5f5,#f1f1f1);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#f5f5f5,endColorstr=#f1f1f1,GradientType=1);
            }

            .gbqfbb {
                background: #fff;
                background: -webkit-linear-gradient(top,#fff,#fbfbfb);
                background: linear-gradient(top,#fff,#fbfbfb);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#fff,endColorstr=#fbfbfb,GradientType=1);
            }

                .gbqfba:active, .gbqfbb:active {
                    -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
                    box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
                }

            .gb_hb {
                position: relative;
                width: 657px;
                z-index: 986;
            }

            #gbq2 {
                padding-top: 15px;
            }

            .gb_ib .gb_hb {
                min-width: 200px;
                -webkit-flex: 0 2 auto;
                flex: 0 2 auto;
            }

            .gb_ib #gbqf {
                margin-right: 0;
                display: -webkit-flex;
                display: flex;
            }

            .gb_ib .gbqff {
                min-width: 0;
                -webkit-flex: 1 1 auto;
                flex: 1 1 auto;
            }

            #gbq2 {
                display: block;
            }

            #gbqf {
                display: block;
                margin: 0;
                margin-right: 60px;
                white-space: nowrap;
            }

            .gbqff {
                border: none;
                display: inline-block;
                margin: 0;
                padding: 0;
                vertical-align: top;
                width: 100%;
            }

            .gbqfqw, #gbqfb, .gbqfwa {
                vertical-align: top;
            }

            #gbqfaa, #gbqfab, #gbqfqwb {
                position: absolute;
            }

            #gbqfaa {
                left: 0;
            }

            #gbqfab {
                right: 0;
            }

            .gbqfqwb, .gbqfqwc {
                right: 0;
                left: 0;
                height: 100%;
            }

            .gbqfqwb {
                padding: 0 8px;
            }

            #gbqfbw {
                display: inline-block;
                vertical-align: top;
            }

            #gbqfb {
                border: none;
                border-bottom-left-radius: 0;
                border-top-left-radius: 0;
                height: 30px;
                outline: none;
                padding: 0 0;
                width: 60px;
                -webkit-box-shadow: none;
                box-shadow: none;
                background: #4285f4;
                background: -webkit-linear-gradient(top,#4387fd,#4683ea);
                background: linear-gradient(top,#4387fd,#4683ea);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4387fd,endColorstr=#4683ea,GradientType=1);
            }

                #gbqfb:hover {
                    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15);
                    box-shadow: 0 1px 0 rgba(0,0,0,.15);
                }

                #gbqfb:active {
                    -webkit-box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                    box-shadow: inset 0 2px 0 rgba(0,0,0,.15);
                    background: inherit;
                    background: -webkit-linear-gradient(top,#3c7ae4,#3f76d3);
                    background: linear-gradient(top,#3c7ae4,#3f76d3);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#3c7ae4,endColorstr=#3f76d3,GradientType=1);
                }

            .gbqfi {
                background-position: -69px -449px;
                display: inline-block;
                height: 30px;
                width: 30px;
            }

            .gbqfqw {
                background: #fff;
                background-clip: padding-box;
                border: 1px solid #cdcdcd;
                border-color: rgba(0,0,0,.15);
                border-right-width: 0;
                height: 30px;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            #gbfwc .gbqfqw {
                border-right-width: 1px;
            }

            #gbqfqw {
                position: relative;
            }

            .gbqfqw.gbqfqw:hover {
                border-color: #a9a9a9;
                border-color: rgba(0,0,0,.3);
            }

            .gbqfwa {
                display: inline-block;
                width: 100%;
            }

            .gbqfwb {
                width: 40%;
            }

            .gbqfwc {
                width: 60%;
            }

            .gbqfwb .gbqfqw {
                margin-left: 10px;
            }

            .gbqfqw.gbqfqw:active, .gbqfqw.gbqfqwf.gbqfqwf {
                border-color: #4285f4;
            }

            #gbqfq, #gbqfqb, #gbqfqc {
                background: transparent;
                border: none;
                height: 20px;
                margin-top: 4px;
                padding: 0;
                vertical-align: top;
                width: 100%;
            }

                #gbqfq:focus, #gbqfqb:focus, #gbqfqc:focus {
                    outline: none;
                }

            .gbqfif, .gbqfsf {
                color: #222;
                font: 16px arial,sans-serif;
            }

            #gbqfbwa {
                display: none;
                text-align: center;
                height: 0;
            }

                #gbqfbwa .gbqfba {
                    margin: 16px 8px;
                }

            #gbqfsa, #gbqfsb {
                font: bold 11px/27px Arial,sans-serif!important;
                vertical-align: top;
            }

            .gb_p .gbqfqw.gbqfqw, .gb_q .gbqfqw.gbqfqw {
                border-color: rgba(255,255,255,1);
                -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
                box-shadow: 0 1px 2px rgba(0,0,0,.2);
            }

            .gb_p #gbqfb, .gb_q #gbqfb {
                -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
                box-shadow: 0 1px 2px rgba(0,0,0,.2);
            }

                .gb_p #gbqfb:hover, .gb_q #gbqfb:hover {
                    -webkit-box-shadow: 0 1px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2);
                    box-shadow: 0 1px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2);
                }

                .gb_p #gbqfb:active, .gb_q #gbqfb:active {
                    -webkit-box-shadow: inset 0 2px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2);
                    box-shadow: inset 0 2px 0 rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.2);
                }

            .gb_ub .gb_s {
                background: #e7e7e7;
                background: rgba(0,0,0,.04);
                border-bottom-right-radius: 0;
                line-height: 30px;
                position: relative;
                text-align: center;
                width: 60px;
            }

                .gb_ub .gb_s:hover, .gb_ub .gb_s:focus {
                    background: #dbdbdb;
                    background: rgba(0,0,0,.08);
                }

                .gb_ub .gb_s::after {
                    border-left: 4px solid #e7e7e7;
                    border-left: 4px solid rgba(0,0,0,.04);
                    border-top: 4px solid transparent;
                    bottom: 0;
                    content: '';
                    position: absolute;
                    right: -4px;
                    height: 0;
                    width: 0;
                }

                .gb_ub .gb_s:hover::after, .gb_ub .gb_s:focus::after {
                    border-left-color: #dbdbdb;
                    border-left-color: rgba(0,0,0,.08);
                }

            .gb_vb, .gb_wb {
                overflow: hidden;
                position: relative;
                width: 100%;
            }

            .gb_vb {
                display: none;
                visibility: hidden;
            }

            .gb_xb {
                background-position: -138px 0;
                opacity: .55;
                visibility: visible;
                height: 30px;
                width: 30px;
            }

            .gb_ub.gb_yb .gb_s {
                height: 30px;
                width: 30px;
            }

            .gb_yb .gb_wb {
                display: none;
            }

            .gb_yb .gb_vb {
                display: block;
            }

            .gb_ub .gb_S {
                border-bottom-color: #f5f5f5;
            }

            .gb_p .gb_vb {
                background-size: 237px 778px;
                padding: 5px 10px 7px 6px;
                top: -5px;
                left: -6px;
            }

            .gb_p .gb_wb {
                background-position: -86px -553px;
                background-size: 237px 778px;
                padding: 5px 10px 7px 6px;
                top: -5px;
                left: -6px;
            }

            .gb_q .gb_vb {
                background-image: url('//ssl.gstatic.com/gb/images/v1_29726984.png');
                background-size: 237px 778px;
                padding: 5px 10px 7px 6px;
                top: -5px;
                left: -6px;
            }

            .gb_q .gb_wb {
                background-image: url('//ssl.gstatic.com/gb/images/v1_29726984.png');
                background-position: -86px -553px;
                background-size: 237px 778px;
                padding: 5px 10px 7px 6px;
                top: -5px;
                left: -6px;
            }

            .gb_p .gb_vb, .gb_q .gb_vb {
                background-position: -35px -553px;
                visibility: visible;
            }

            @media (min-resolution:1.25dppx),(-webkit-min-device-pixel-ratio:1.25),(min-device-pixel-ratio:1.25) {
                .gb_p .gb_vb, .gb_p .gb_wb, .gb_q .gb_vb, .gb_q .gb_wb {
                    background-image: url('//ssl.gstatic.com/gb/images/v2_cb5a2ef6.png');
                }
            }

            .gb_p .gb_ub .gb_s::after, .gb_q .gb_ub .gb_s::after {
                display: none;
            }

            .gb_na {
                min-width: 240px;
                padding-left: 30px;
                padding-right: 30px;
                position: relative;
                text-align: right;
                z-index: 986;
                -webkit-align-items: center;
                align-items: center;
                -webkit-justify-content: flex-end;
                justify-content: flex-end;
            }

                .gb_na.gb_k {
                    -webkit-flex: 1 1 auto;
                    flex: 1 1 auto;
                }

            .gb_Rb {
                display: inline-block;
                line-height: normal;
                position: relative;
                text-align: left;
            }

                .gb_Rb.gb_k, .gb_Sb.gb_k {
                    -webkit-flex: 0 1 auto;
                    flex: 0 1 auto;
                }

            .gb_Tb {
                display: inline-block;
                padding: 0 0 0 15px;
                position: relative;
                vertical-align: middle;
            }

            .gb_Sb {
                line-height: normal;
                padding-right: 15px;
            }

            .gb_na .gb_Sb.gb_m {
                padding-right: 0;
            }

            .gb_Ub {
                background-clip: content-box;
                background-origin: content-box;
                opacity: .27;
                padding: 22px;
                height: 16px;
                width: 16px;
            }

                .gb_Ub.gb_k {
                    display: none;
                }

                .gb_Ub:hover, .gb_Ub:focus {
                    opacity: .55;
                }

            .gb_Vb {
                background-position: 0 -658px;
            }

            .gb_Wb {
                background-position: -104px -69px;
                padding-left: 30px;
                padding-right: 14px;
                position: absolute;
                right: 0;
                z-index: 990;
            }

            .gb_ka .gb_Wb, .gb_Xb .gb_Vb {
                display: inline-block;
            }

            .gb_ka .gb_Zb {
                display: none;
            }

            .gb_na.gb_Xb {
                padding-left: 0;
            }

            .gb_ka .gb_Rb {
                overflow: hidden;
                padding: 1px 1px 1px 0;
                width: 75px;
            }

            .gb_na.gb_ka {
                padding-right: 29px;
            }

            .gb_ib .gb_na {
                min-width: 0;
            }

            .gb_na.gb_o {
                min-width: 0!important;
                -webkit-flex: 0 0 auto!important;
                flex: 0 0 auto!important;
            }

                .gb_na.gb_o .gb_k {
                    -webkit-flex: 0 0 auto!important;
                    flex: 0 0 auto!important;
                }

                .gb_na.gb_o .gb_Rb {
                    min-width: 0!important;
                }

            #gb.gb_5b {
                min-width: 980px;
            }

                #gb.gb_5b .gb_hb {
                    min-width: 0;
                    position: static;
                    width: 0;
                }

            .gb_5b .gb_zb {
                background: transparent;
                border-bottom-color: transparent;
            }

                .gb_5b .gb_zb::before {
                    display: none;
                }

            .gb_5b .gb_j {
                display: inline-block;
            }

            .gb_5b .gb_na .gb_Sb.gb_m {
                padding-right: 15px;
            }

            .gb_5b .gb_l.gb_4b {
                display: -webkit-flex;
                display: flex;
            }

            .gb_5b #gbqf {
                display: block;
            }

            .gb_5b #gbq {
                height: 0;
                position: absolute;
            }

            .gb_5b .gb_na {
                z-index: 987;
            }

            .gb_ra.gb_6b {
                padding-left: 30px;
            }

            .gb_sa .gb_6b {
                margin-right: -142px;
            }

            sentinel {
            }

            .gbii {
                background-image: url(//ssl.gstatic.com/gb/images/silhouette_27.png);
            }

            .gbip {
                background-image: url();
            }

            @media (min-resolution:1.25dppx),(-o-min-device-pixel-ratio:5/4),(-webkit-min-device-pixel-ratio:1.25),(min-device-pixel-ratio:1.25) {
                .gbii {
                    background-image: url(//ssl.gstatic.com/gb/images/silhouette_27.png);
                }

                .gbip {
                    background-image: url();
                }
            }

            #gbq .gbgt-hvr, #gbq .gbgt:focus {
                background-color: transparent;
                background-image: none;
            }

            .gbqfh#gbq1 {
                display: none;
            }

            .gbxx {
                display: none !important;
            }

            #gbq {
                line-height: normal;
                position: relative;
                top: 0px;
                white-space: nowrap;
            }

            #gbq {
                left: 0;
                width: 100%;
            }

            #gbq2 {
                top: 0px;
                z-index: 986;
            }

            #gbq4 {
                display: inline-block;
                max-height: 29px;
                overflow: hidden;
                position: relative;
            }

            .gbqfh#gbq2 {
                z-index: 985;
            }

            .gbqfh#gbq2 {
                margin: 0;
                margin-left: 0 !important;
                padding-top: 0;
                position: relative;
                top: 310px;
            }

            .gbqfh #gbqf {
                margin: auto;
                min-width: 534px;
                padding: 0 !important;
            }

            .gbqfh #gbqfbw {
                display: none;
            }

            .gbqfh #gbqfbwa {
                display: block;
            }

            .gbqfh #gbqf {
                max-width: 572px;
                min-width: 572px;
            }

            .gbqfh .gbqfqw {
                border-right-width: 1px;
            }

            .gsfe_a.gsfe_a {
                border-right-width: 0;
                -moz-box-shadow: none;
                -webkit-box-shadow: none;
                box-shadow: none;
            }

            .gsfe_b.gsfe_b {
                border-right-width: 0;
                border-color: #4285f4;
                -moz-box-shadow: none;
                -webkit-box-shadow: none;
                box-shadow: none;
            }

            .gbqfh .gsfe_a, .gbqfh .gsfe_b {
                border-width: 1px;
            }

            .gbm {
                background: #fff;
                border: 1px solid #bebebe;
                box-shadow: 0 2px 4px rgba(0,0,0,.2);
                -moz-box-shadow: -1px 1px 1px rgba(0,0,0,.2);
                -webkit-box-shadow: 0 2px 4px rgba(0,0,0,.2);
                position: absolute;
                top: -999px;
                visibility: hidden;
                z-index: 999;
            }
    </style>
    <style data-jiis="cc" id="gstyle">
        body {
            color: #000;
            margin: 0;
            overflow-y: scroll;
        }

        body, #leftnav, #tbdi, #hidden_modes, #hmp {
            background: #fff;
        }

        a.gb1, a.gb2, a.gb3, .link {
            color: #1e0fbe!important;
        }

        .ts {
            border-collapse: collapse;
        }

            .ts td {
                padding: 0;
            }

        .ti, .bl {
            display: inline;
        }

        .ti {
            display: inline-table;
        }

        #rhs_block {
            padding-bottom: 15px;
        }

        a:link, .w, #prs a:visited, #prs a:active, .q:active, .q:visited, .kl:active, .tbotu {
            color: #1e0fbe;
        }

        .mblink:visited, a:visited {
            color: #609;
        }

        .vst:link {
            color: #609;
        }

        .cur, .b {
            font-weight: bold;
        }

        .j {
            width: 42em;
            font-size: 82%;
        }

        .s {
            max-width: 42em;
        }

        .sl {
            font-size: 82%;
        }

        .hd {
            position: absolute;
            width: 1px;
            height: 1px;
            top: -1000em;
            overflow: hidden;
        }

        .f, .f a:link, .m, .descbox {
            color: #666;
        }

        .c h2, #mbEnd h2, #tads h2, #tadsb h2 {
            color: #666;
        }

        .f, .f a:link {
            color: #808080;
        }

        .a, cite, cite a:link, cite a:visited, .cite, .cite:link, #ans > i, .bc a:link {
            color: #006621;
            font-style: normal;
        }

        .itbc {
            overflow: hidden;
        }

        .mslg cite {
            display: none;
        }

        .ng {
            color: #dd4b39;
        }

        h1, ol, ul, li {
            margin: 0;
            padding: 0;
        }

            li.g, body, html, .std, h1 {
                font-size: small;
                font-family: arial,sans-serif;
            }

        .c h2, #mbEnd h2, h1 {
            font-weight: normal;
        }

        .clr {
            clear: both;
            margin: 0 8px;
        }

        .blk a {
            color: #000;
        }

        #nav a {
            display: block;
        }

        #nav .i {
            color: #a90a08;
            font-weight: bold;
        }

        .csb, .ss, .micon, .close_btn, #tbp, .mbi {
            background: url(/assets/images/google/nav_logo170.png) no-repeat;
            overflow: hidden;
        }

        .csb, .ss {
            background-position: 0 0;
            height: 40px;
            display: block;
        }

        .spell {
            font-size: 16px;
        }

        .spell_orig {
            font-size: 13px;
            text-decoration: none;
        }

        a.spell_orig:hover {
            text-decoration: underline;
        }

        .mbi {
            background-position: -153px -70px;
            display: inline-block;
            float: left;
            height: 13px;
            margin-right: 3px;
            margin-top: 4px;
            width: 13px;
        }

        .mbt {
            color: #11c;
            float: left;
            font-size: 13px;
            margin-right: 5px;
            position: relative;
        }

            .mbt.mbto {
            }

        #nav td {
            padding: 0;
            text-align: center;
        }

        .ch {
            cursor: pointer;
        }

        h3, .med {
            font-size: medium;
            font-weight: normal;
            margin: 0;
            padding: 0;
        }

        #res h3 {
            font-size: 18px!important;
        }

        .e {
            margin: 2px 0 .75em;
        }

        .slk div {
            padding-left: 12px;
            text-indent: -10px;
        }

        #bsf, .blk {
            border-top: 1px solid #6b90da;
            background: #f0f7f9;
        }

        #bsf {
            border-bottom: 1px solid #6b90da;
        }

        #cnt {
            clear: both;
        }

        #res {
            padding-right: 1em;
            margin: 0 16px;
        }

        .xsm {
            font-size: x-small;
        }

        ol li {
            list-style: none;
        }

        #ncm ul li {
            list-style-type: disc;
        }

        .sm li {
            margin: 0;
        }

        .gl, #foot a, .nobr {
            white-space: nowrap;
        }

        .sl, .r {
            display: inline;
            font-weight: normal;
            margin: 0;
        }

        .r {
            font-size: medium;
        }

        h4.r {
            font-size: small;
        }

        .jsb {
            display: block;
        }

        .nojsb {
            display: none;
        }

        .vshid {
            display: none;
        }

        .gic {
            position: relative;
            overflow: hidden;
            z-index: 0;
        }

        .nwd {
            font-size: 10px;
            padding: 0 16px 30px 16px;
            text-align: center;
        }

        .rt1 {
            background: transparent url(/images/bubble1.png) no-repeat;
        }

        .rt2 {
            background: transparent url(/images/bubble2.png) repeat 0 0 scroll;
        }

        .sb {
            background: url(/images/scrollbar.png) repeat scroll 0 0;
            cursor: pointer;
            width: 14px;
        }

        #rtr .g {
            margin: 1em 0 2em;
        }

        .cpb {
            max-width: 130px;
            overflow: hidden;
            position: relative;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .cpc {
            background: url(//ssl.gstatic.com/s2/oz/images/circles/cpw.png) no-repeat scroll 0 -28px;
            height: 13px;
            margin: 7px 5px 0 0;
            width: 13px;
        }

        div.cpss {
            height: 13px;
            line-height: 13px;
            font-size: 10px;
            padding: 0 6px;
            margin-bottom: 0;
            margin-top: 1px;
        }

            div.cpss .cpc {
                background-position: 0 -42px;
                height: 10px;
                margin-top: 2px;
                width: 10px;
            }

        .cpbb {
            background: -webkit-gradient(linear,left top,left bottom,from(#9e9e9e),to(#999));
            border: 1px solid #999;
            color: #fff;
        }

            .cpbb:hover {
                background: -webkit-gradient(linear,left top,left bottom,from(#9e9e9e),to(#8e8e8e));
                border: 1px solid #888;
            }

            .cpbb:active {
                background: -webkit-gradient(linear,left top,left bottom,from(#9e9e9e),to(#7e7e7e));
            }

        #ss-box {
            background: #fff;
            border: 1px solid;
            border-color: #c9d7f1 #36c #36c #a2bae7;
            left: 0;
            margin-top: .1em;
            position: absolute;
            visibility: hidden;
            z-index: 103;
        }

            #ss-box a {
                display: block;
                padding: .2em .31em;
                text-decoration: none;
            }

                #ss-box a:hover {
                    background: #4d90fe;
                    color: #fff !important;
                }

        a.ss-selected {
            color: #222 !important;
            font-weight: bold;
        }

        a.ss-unselected {
            color: #12c !important;
        }

        .ss-selected .mark {
            display: inline;
        }

        .ss-unselected .mark {
            visibility: hidden;
        }

        #ss-barframe {
            background: #fff;
            left: 0;
            position: absolute;
            visibility: hidden;
            z-index: 100;
        }

        .speaker-icon-listen-off {
            background: url(//ssl.gstatic.com/dictionary/static/images/icons/1/pronunciation.png);
            opacity: 0.55;
            filter: alpha(opacity=55);
            border: 1px solid transparent;
            display: inline-block;
            float: none;
            height: 16px;
            vertical-align: bottom;
            width: 16px;
        }

            .speaker-icon-listen-off:hover {
                opacity: 1.0;
                filter: alpha(opacity=100);
                cursor: pointer;
            }

        .speaker-icon-listen-on {
            background: url(//ssl.gstatic.com/dictionary/static/images/icons/1/pronunciation.png);
            opacity: 1.0;
            filter: alpha(opacity=100);
            border: 1px solid transparent;
            display: inline-block;
            float: none;
            height: 16px;
            vertical-align: bottom;
            width: 16px;
        }

            .speaker-icon-listen-on:hover {
                opacity: 1.0;
                filter: alpha(opacity=100);
                cursor: pointer;
            }

        #sx {
            border: hidden;
            font-size: small;
            overflow: hidden;
        }

        .sxcategory {
            margin: 0 0 1em;
            padding: 0 0 0.5em;
        }

        .sxheader {
            margin-right: 3 em;
            padding: 0 0 0.2em;
        }

            .sxheader > h3 {
                color: #000;
                font-size: 15px;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }

        .sxconditions {
            border: 0;
            margin: 0;
            padding: 0;
        }

        .sxconditionsquery {
            font-weight: bold;
        }

        .sxcondition {
            line-height: 19px;
        }

        .sxconditionterm {
            display: inline-block;
            line-height: 1.2em;
            padding: 0 13px;
            text-indent: -13px;
            width: 11em;
        }

        .sxconditiondefinition {
            display: inline-block;
            max-width: 25em;
            overflow: hidden;
            text-overflow: ellipsis;
            vertical-align: top;
            white-space: nowrap;
        }

        .sxconditionellipsis {
            display: none;
            padding: 0 0 0 1px;
        }

        .sxlink {
            color: #2200C1;
            cursor: pointer;
            text-decoration: none;
        }

        .sxattribution {
            color: #666;
            font-size: 11px;
            padding: 0.3em 0 0.5em;
        }

        .sxattributiondomain {
            color: #0E774A;
        }

        ul.lsnip {
            font-size: 90%;
        }

        .lsnip > li {
            overflow: hidden;
            text-overflow: ellipsis;
            -ms-text-overflow: ellipsis;
            -o-text-overflow: ellipsis;
            white-space: nowrap;
        }

        table.tsnip {
            border-spacing: 0;
            border-collapse: collapse;
            border-style: hidden;
            margin: 2px 0 0;
            white-space: nowrap;
        }

            table.tsnip td, table.tsnip th {
                padding-bottom: 0;
                padding-top: 0;
                padding-right: 10px;
                padding-left: 0;
                margin: 0;
                line-height: 16px;
                text-align: left;
            }

            table.tsnip th {
                color: #777;
                font-weight: normal;
            }

        #rhs {
            display: block;
            margin-left: 712px;
            padding-bottom: 10px;
            min-width: 268px;
        }

        #nyc {
            bottom: 0;
            display: none;
            left: 0;
            margin-left: 663px;
            min-width: 317px;
            overflow: hidden;
            position: fixed;
            right: 0;
            visibility: visible;
        }

        #leftnav div#lc {
            margin-left: 8px;
        }

        #leftnav #tbpi {
            margin-left: 16px;
        }

        .mdm #nyc {
            margin-left: 683px;
        }

        .mdm #rhs {
            margin-left: 732px;
        }

        .big #nyc {
            margin-left: 743px;
        }

        .big #rhs {
            margin-left: 792px;
        }

        body .big #subform_ctrl {
            margin-left: 229px;
        }

        .rhslink {
            width: 68px;
        }

        .rhsdw .rhslink {
            width: 156px;
        }

        .rhsimg {
            width: 70px;
        }

            .rhsimg.rhsdw {
                width: 158px;
            }

            .rhsimg.rhsn1st {
                margin-left: 16px;
            }

        #nyc .rhsvw, #rhs .scrt.rhsvw, #rhs table.rhsvw {
            border: 0;
        }

        #nyc .rhsvw {
            padding-left: 0;
            padding-right: 0;
        }

        #rhs .rhsvw {
            border: 1px solid #ebebeb;
            padding-left: 15px;
            padding-right: 15px;
            position: relative;
            width: 424px;
        }

        #nyc .rhsvw {
            width: 424px;
        }

        #center_col .rhsl4, #center_col .rhsl5, #center_col .rhsn5 {
            display: none;
        }

        #rhs .rhstc4 .rhsvw, #nyc.rhstc4 .rhsvw {
            width: 336px;
        }

        #rhs .rhstc3 .rhsvw, #nyc.rhstc3 .rhsvw {
            width: 248px;
        }

        .rhstc4 .rhsg4, .rhstc3 .rhsg4, .rhstc3 .rhsg3 {
            background: none !important;
            display: none !important;
        }

        .rhstc5 .rhsl5, .rhstc5 .rhsl4, .rhstc4 .rhsl4 {
            background: none !important;
            display: none !important;
        }

        .rhstc4 .rhsn4 {
            background: none !important;
            display: none !important;
        }

        .nrgt {
            margin-left: 22px;
        }

        .mslg .vsc {
            border: 1px solid transparent;
            border-radius: 2px;
            -webkit-border-radius: 2px;
            -webkit-transition: opacity .2s ease;
            margin-top: 2px;
            padding: 3px 0 3px 5px;
            transition: opacity .2s ease;
            width: 250px;
        }

        .mslg > td {
            padding-right: 6px;
            padding-top: 4px;
        }

        button.vspib {
            display: none;
        }

        div.vspib {
            background: transparent;
            bottom: 0;
            cursor: default;
            height: auto;
            margin: 0;
            min-height: 40px;
            padding-left: 9px;
            padding-right: 4px;
            position: absolute;
            right: -37px;
            top: -2px;
            width: 28px;
            z-index: 3;
        }

        .nyc_open div.vspib {
            z-index: 103;
        }

        div.vspib:focus {
            outline: none;
        }

        .vspii .vspiic {
            background: url(/assets/images/google/nav_logo170.png);
            background-position: -3px -260px;
            width: 15px;
            height: 13px;
            margin-left: 6px;
            margin-top: -7px;
            opacity: .3;
            position: absolute;
            top: 50%;
            visibility: hidden;
        }

        .vsh .vsc:hover .vspii .vspiic {
            visibility: visible;
        }

        .vsh .vspib .vspii:hover .vspiic {
            opacity: 1;
            visibility: visible;
            -webkit-transition: opacity .25s ease;
        }

        .vsh .vsdth .vspiic {
            opacity: 1;
            visibility: visible;
            -webkit-transition: opacity 1.5s ease;
        }

        .nyc_open.vsh .vsdth .vspiic, .nyc_open.vsh .vspib .vspii:hover .vspiic {
            -webkit-transition: 0;
        }

        .vspib:focus .vspiic {
            opacity: 1;
            visibility: visible;
        }

        .vsh .vspib:focus .vspiic {
            opacity: .3;
            visibility: hidden;
        }

        .vso .vspiic, .vso .vspib:focus .vspiic {
            opacity: 1;
            visibility: visible;
        }

        .vspii {
            border: 1px solid transparent;
            border-radius: 2px;
            border-right: none;
            cursor: default;
            user-select: none;
            -webkit-user-select: none;
        }

        .vsh.nyc_opening .vsc:hover .vspii, .vsh.nyc_open .vsc:hover .vspii, .vso .vspii {
            background-color: #fafafa;
            border-color: #e6e6e6;
            height: 100%;
        }

        .vsh.nyc_open .mslg .vsc:hover, .vsh.nyc_opening .mslg .vsc:hover {
            border-right-color: #ebebeb;
        }

        .vso .vspib {
            padding-right: 0;
        }

        .nyc_open #nycx {
            background: url(/assets/images/google/nav_logo170.png) no-repeat;
            background-position: -140px -230px;
            height: 11px;
            width: 11px;
        }

        .vsc {
            display: inline-block;
            position: relative;
            width: 100%;
        }

        #nyc cite button.esw {
            display: none;
        }

        button.esw {
            vertical-align: text-bottom;
        }

        #res h3.r {
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            -webkit-text-overflow: ellipsis;
            white-space: nowrap;
        }

        #res h3.inl {
            display: inline;
            white-space: normal;
        }

        #hdtb {
            background: #fff;
            color: #666;
            outline-width: 0;
            outline: none;
            position: relative;
            z-index: 102;
        }

        #hdtb_msb > .hdtb_mitem a {
            margin: 0 8px;
            padding: 0 8px;
        }

        .hdtb_mitem a, #hdtb_more_mn a {
            padding: 0 16px;
            color: #777;
            text-decoration: none;
            display: block;
        }

            .hdtbItm label:hover, .hdtbItm a:hover, #hdtb_more_mn a:hover, #hdtb .hdtb_mitem a:hover, .hdtb-mn-hd:hover, #hdtb_more:hover, #hdtb_tls:hover {
                color: #222;
            }

        #hdtb.notl * {
            outline-width: 0;
            outline: none;
        }

        #hdtb_msb > .hdtb_mitem a:active, #hdtb .hdtb_mitem a:active, #hdtb_more:active, .hdtb-mn-hd:active, .mn-hd-txt:active {
            color: #dd4b39;
        }

        #hdtb_more_mn a:hover, .hdtbItm.hdtbSel:hover, .hdtbItm a:hover, #cdrlnk:hover {
            background-color: #f1f1f1;
        }

        .hdtbItm.hdtbSel.checked:hover {
            background-color: inherit;
        }

        .hdtbItm.hdtbSel, #hdtb .hdtbItm a, #hdtb_more_mn a, .hdtbItm > label, #cdrlnk {
            color: #777;
            text-decoration: none;
            padding: 6px 44px 6px 30px;
            line-height: 17px;
            display: block;
        }

        .hdtbItm > label {
            padding-left: 9px;
        }

        .hdtbItm .kcb {
            margin-right: 11px;
        }

        .hdtbItm.hdtbSel.checked {
            padding: 0;
            background-image: none;
        }

        #hdtb_msb > a {
            color: #666;
            text-decoration: none;
        }

        #hdtb_msb > .hdtb_mitem > a {
            display: inline-block;
        }

        #hdtb_more_mn a {
            padding: 6px 16px;
        }

        #hdtb_more_mn {
            min-width: 120px;
        }

        #hdtb td {
            padding: 0;
        }

        #hdtbMenus {
            background: #fff;
            padding-bottom: 5px;
            padding-top: 7px;
            top: 0;
            width: 100%;
            height: 22px;
            position: absolute;
            transition: top 220ms ease-in-out;
            -webkit-transition: top 220ms ease-in-out;
        }

        .hdtb-td-h {
            display: none;
        }

        #hdtbMenus.hdtb-td-o {
            top: 40px;
        }

        body.vasq #hdtbMenus.hdtb-td-o {
            top: 59px;
        }

        #hdtbMenus.hdtb-td-c {
            overflow: hidden;
            border-top: 0;
            display: none;
        }

        #resultStats {
            position: absolute;
            top: 0;
            -webkit-transition: all 220ms ease-in-out;
        }

        .hdtb-ab-o #resultStats {
            opacity: 0;
            filter: alpha(opacity=0);
            top: 13px;
        }

        .hdtb-ab-o #botabar {
            border-top: 1px solid #ebebeb;
        }

        .hdtbU {
            top: -500px;
            white-space: nowrap;
        }

            .hdtbU .hdtbItm, .hdtbU li {
                list-style: none outside none;
            }

                .hdtbU li.tbou {
                    line-height: 1.3;
                    padding-left: 6px;
                    text-indent: 4px;
                }

        #hdtb form {
            display: inline;
        }

        .hdtbSel, .hdtbSel span.q {
            color: #000;
            cursor: default;
            padding-right: 15px;
            text-decoration: none;
        }

        #cdr_opt {
            background-image: none;
            background: #fff;
            padding: 0 !important;
        }

        .cdr_sep {
            border-top: 1px solid #ebebeb;
            height: 0;
            margin: 5px 0;
            width: 100%;
        }

        #cdrlnk {
            cursor: pointer;
        }

        #hdtbSum {
            background: #fff;
            border-bottom: 1px solid #ebebeb;
            height: 40px;
            line-height: 35px;
            padding: 0;
            position: relative;
            z-index: 102;
        }

        .hdtbItm {
            background: #fff;
        }

        #loc_opt {
            padding: 3px 12px;
        }

        .hdtbSel, .hdtbSel #cdrlnk {
            background-image: url(//ssl.gstatic.com/ui/v1/menu/checkmark2.png);
            background-position: left center;
            background-repeat: no-repeat;
        }

        #color-specific.hdtbSel {
            background: none;
        }

        .hdtbItm .sc:hover {
            background: #000;
        }

        .hdtb-mn-o, .hdtb-mn-c {
            -webkit-box-shadow: 0 2px 4px #d6d6d6;
            background: #fff;
            border: 1px solid #d6d6d6;
            box-shadow: 0 2px 4px #d6d6d6;
            color: #333;
            position: absolute;
            z-index: 103;
            line-height: 17px;
            padding-top: 5px;
            padding-bottom: 5px;
            top: 36px;
        }

        .hdtb-mn-c {
            display: none;
        }

        #hdtb_msb {
            display: inline-block;
            float: left;
            position: relative;
            white-space: nowrap;
        }

            #hdtb_msb .hdtb_mitem {
                display: inline-block;
            }

        .hdtb-mn-o .hdtb_mitem, .hdtb-mn-c .hdtb_mitem {
            display: block !important;
        }

        #hdtb_msb .hdtb_mitem.hdtb_msel, #hdtb_msb .hdtb_mitem.hdtb_msel_pre {
            border-bottom: 3px solid #dd4b39;
            color: #dd4b39;
            font-weight: bold;
            height: 35px;
            margin: 2px 8px 0;
            padding: 0 8px;
        }

            #hdtb_msb .hdtb_mitem.hdtb_msel:hover {
                cursor: pointer;
            }

            #hdtb_msb .hdtb_mitem.hdtb_msel:active {
                background: none;
            }

        #hdtb .hdtb_mitem a {
            color: #777;
        }

        #hdtb_msb #hdtb_more, #hdtb_msb #hdtb_tls {
            color: #777;
        }

        #hdtb_tls {
            text-decoration: none;
        }

        #hdtb_more {
            display: inline-block;
            padding: 0 16px;
            position: relative;
            -webkit-tap-highlight-color: rgba(255,255,255,0);
        }

            #hdtb_more:hover {
                cursor: pointer;
            }

        .hdtb_mitem .micon, #hdtbMenus .lnsep {
            display: none;
        }

        .hdtb-mn-cont {
            height: 22px;
            white-space: nowrap;
        }

        .hdtb-mn-hd {
            color: #777;
            display: inline-block;
            position: relative;
            padding-top: 0;
            padding-bottom: 0;
            padding-right: 22px;
            padding-left: 16px;
            line-height: 22px;
            cursor: pointer;
        }

        .hdtb-msel {
            font-weight: bold;
        }

        #hdtb-mn-gp {
            display: inline-block;
        }

        .mn-hd-txt {
            display: inline-block;
            padding-right: 6px;
            white-space: nowrap;
        }

        .mn-dwn-arw {
            border-color: #909090 transparent;
            border-style: solid;
            border-width: 4px 4px 0 4px;
            width: 0;
            height: 0;
            margin-left: -2px;
            top: 50%;
            margin-top: -2px;
            position: absolute;
        }

        .hdtb-mn-hd:hover .mn-dwn-arw, #hdtb_more:hover .mn-dwn-arw {
            border-color: #222 transparent;
        }

        .hdtb-mn-hd:active .mn-dwn-arw, #hdtb_more:active .mn-dwn-arw {
            border-color: #dd4b39 transparent;
        }

        .hdtb-tl {
            border: 1px solid transparent;
            display: inline-block;
            min-width: 54px;
            text-align: center;
            border-radius: 2px;
            padding: 4px 8px;
            line-height: 19px;
            margin-left: 9px;
            cursor: pointer;
            margin-right: 24px;
        }

        #hdtb_msb .hdtb-tl-sel, #hdtb_msb .hdtb-tl-sel:hover {
            background: -webkit-linear-gradient(top,#eee,#e0e0e0);
            -webkit-box-shadow: inset 0 1px 2px 0 rgba(0,0,0,0.1);
            border: 1px solid #d7d7d7;
            box-shadow: inset 0 1px 2px 0 rgba(0,0,0,0.1);
            margin-left: 9px;
        }

        #hdtb #hdtb_tls:active {
            color: #000;
        }

        #ab_ctls a {
            text-decoration: none;
        }

            #ab_ctls a.ab_button:active, #ab_ctls a.ab_dropdownlnk:active {
                color: #333;
            }

        #loc_opt {
            display: none;
        }

        #ab_shopping {
            display: none;
        }

        .hdtb-loc {
            border-top: 1px solid #ebebeb;
            padding-bottom: 10px;
            padding-right: 16px;
            padding-top: 15px;
            padding-left: 27px;
        }

            .hdtb-loc .ksb.mini {
                margin-top: 0;
            }

        em {
            font-weight: bold;
            font-style: normal;
        }

        li.w0 .ws, td.w0 .ws {
            opacity: 0.5;
        }

        li.w0:hover .ws, td.w0:hover .ws {
            opacity: 1;
        }

        ol, ul, li {
            border: 0;
            margin: 0;
            padding: 0;
        }

        li {
            line-height: 1.2;
        }

            li.g {
                margin-top: 0;
                margin-bottom: 23px;
            }

        .ibk {
            display: inline-block;
            vertical-align: top;
        }

        .tsw {
            width: 595px;
        }

        #cnt {
            margin-left: 14px;
            min-width: 833px;
            margin-left: 0;
            padding-top: 0;
        }

        .mw {
            max-width: 1197px;
        }

        .big .mw {
            max-width: 1250px;
        }

        #cnt #center_col, #cnt #foot {
            width: 528px;
        }

        .gbh {
            top: 24px;
        }

        #gbar {
            margin-left: 8px;
            height: 20px;
        }

        #guser {
            margin-right: 8px;
            padding-bottom: 5px!important;
        }

        .mbi {
            margin-bottom: -1px;
        }

        .uc {
            padding-left: 8px;
            position: relative;
            margin-left: 128px;
        }

        .ucm {
            padding-bottom: 5px;
            padding-top: 5px;
            margin-bottom: 8px;
        }

        .col {
            float: left;
        }

        #leftnavc, #center_col, #rhs {
            position: relative;
        }

        #center_col {
            margin-left: 138px;
            margin-right: 254px;
            padding: 0 8px;
            padding: 0 8px 0 8px;
        }

        .mdm #center_col {
            margin-left: 138px;
            padding: 0 8px;
        }

        .big #center_col {
            margin-left: 138px;
            padding: 0 8px;
        }

        #subform_ctrl {
            font-size: 11px;
            min-height: 19px;
            margin-right: 480px;
            position: relative;
            z-index: 99;
        }

            #subform_ctrl a.gl {
                color: #1e0fbe;
            }

        #center_col {
            clear: both;
        }

        #res {
            border: 0;
            margin: 0;
            padding: 0 8px;
        }

        #ires {
            padding-top: 6px;
        }

        #leftnav li {
            display: block;
        }

        .micon, .close_btn {
            border: 0;
        }

        #leftnav h2 {
            font-size: small;
            color: #767676;
            font-weight: normal;
            margin: 8px 0 0 8px;
            padding-left: 8px;
            width: 124px;
        }

        #tbbc {
            background: #ebeff9;
            margin-bottom: 4px;
        }

            #tbbc dfn {
                padding: 4px;
            }

            #tbbc.bigger .std {
                font-size: 154%;
                font-weight: bold;
                text-decoration: none;
            }

            #tbbc .tbbclm {
                text-decoration: none;
            }

        .close_btn {
            background-position: -138px -84px;
            float: right;
            height: 14px;
            width: 14px;
        }

        #leftnav a {
            text-decoration: none;
        }

            #leftnav a:hover {
                text-decoration: underline;
            }

        .mitem, #showmodes {
            border-bottom: 1px solid transparent;
            line-height: 29px;
            opacity: 1.0;
        }

            .mitem .kl, #showmodes {
                padding-left: 16px;
            }

                .mitem .kl:hover, .msel .kls:hover, #showmodes:hover {
                    opacity: 1.0;
                    background-color: #eee;
                }

        #ms a:hover {
            text-decoration: none;
        }

        .mitem > .kl, #more_link > .kl {
            color: #222;
            display: block;
        }

        .msel {
            color: #dd4b39;
            cursor: pointer;
        }

            .msel .kls {
                border-left: 5px solid #dd4b39;
                padding-left: 11px;
            }

        .mitem > .kl, #more_link > .kl, .msel {
            font-size: 13px;
        }

        .open .msm, .msl {
            display: none;
        }

        .open .msl {
            display: inline;
        }

        .open #hidden_modes, .open #hmp {
            display: block;
        }

        #tbd, #atd {
            display: block;
            min-height: 1px;
        }

        .tbt {
            font-size: 13px;
            line-height: 1.2;
        }

        .tbnow {
            white-space: nowrap;
        }

        .tbou, .tbos, .tbots, .tbotu {
            margin-right: 8px;
            padding-left: 16px;
            padding-bottom: 3px;
            text-indent: -8px;
        }

        .tbos, .tbots {
            font-weight: bold;
        }

        #leftnav .tbots a {
            color: #000!important;
            cursor: default;
            text-decoration: none;
        }

        .tbst {
            margin-top: 8px;
        }

        #iszlt_sel.tbcontrol_vis {
            margin-left: 0;
        }

        .tbpc, .tbpo, .lcso {
            font-size: 13px;
        }

        .tbpc, .tbo .tbpo {
            display: inline;
        }

        .tbo .tbpc, .tbpo, .lco .lcso, .lco .lcot, #set_location_section {
            display: none;
        }

        .lco #set_location_section {
            display: block;
        }

        .lcot {
            display: block;
            margin: 0 8px;
        }

        .tbo #tbp {
            background-position: -138px -99px!important;
        }

        #cdr_opt, #loc_opt {
            padding-left: 8px;
            text-indent: 0;
        }

        .tbou #cdr_frm, .tbou #cloc_frm {
            display: none;
        }

        #cdr_frm, #cdr_min, #cdr_max {
            color: rgb(102, 102, 102);
        }

        #cdr_min, #cdr_max {
            font-family: arial,sans-serif;
            width: 100%;
        }

        #cdr_opt label {
            display: block;
            font-weight: normal;
            margin-right: 2px;
            white-space: nowrap;
        }

        .cdr_lbl {
            float: left;
            padding-top: 5px;
        }

        .cdr_hl {
            height: 0;
            visibility: hidden;
        }

        .cdr_inp {
            min-width: 64px;
            overflow: hidden;
            padding-right: 6px;
        }

        .cdr_ctr {
            clear: both;
            overflow: hidden;
            padding: 1px 0;
        }

        .cdr_inp.cdr_hint {
            font-size: 84%;
            font-weight: normal;
            min-width: 70px;
            padding-bottom: 2px;
            padding-right: 0;
        }

        .cdr_inp.cdr_btn {
            min-width: 70px;
            padding-right: 0;
        }

        .cdr_err {
            color: red;
            font-size: 84%;
            font-weight: normal;
        }

        a:link, .w, .q:active, .q:visited {
            cursor: pointer;
        }

        a.fl:link, .fl a, .flt, a.flt, .gl a:link, a.mblink, .mblink b {
            color: #1e0fbe;
        }

            .osl a, .gl a, #tsf a, a.mblink, a.gl, a.fl, .slk a, .bc a, .flt, a.flt u, .oslk a, .blg a, #appbar a {
                text-decoration: none;
            }

                .osl a:hover, .gl a:hover, #tsf a:hover, a.mblink:hover, a.gl:hover, a.fl:hover, .slk a:hover, .bc a:hover, .flt:hover, a.flt:hover u, .oslk a:hover, .tbotu:hover, .blg a:hover {
                    text-decoration: underline;
                }

        .rcct a.fl {
            color: #666!important;
        }

        #tads a, #tadsb a, #res a, #rhs a, #taw a {
            text-decoration: none;
        }

        #brs a, .nsa, .tbt a, .tbotu:hover, .lcot:hover, #tbpi, #nycntg a:hover, .fl, .navend span, #botstuff a, .flt:hover u, .mlocsel span, #rhs .gl a {
            text-decoration: none!important;
        }

        #ss-box a:hover {
            text-decoration: none;
        }

        .hpn, .osl {
            color: #777;
        }

        div#gbi, div#gbg {
            border-color: #a2bff0 #558be3 #558be3 #a2bff0;
        }

            div#gbi a.gb2:hover, div#gbg a.gb2:hover, .mi:hover {
                background-color: #558be3;
            }

                #guser a.gb2:hover, .mi:hover, .mi:hover * {
                    color: #fff!important;
                }

        #guser {
            color: #000;
        }

        #imagebox_big img {
            margin: 5px!important;
        }

        #imagebox_bigimages .th {
            border: 0;
        }

        #epbar {
            border: 1px solid #eee;
            font-size: small;
            left: -8px;
            margin-bottom: 10px;
            padding-bottom: 10px;
            padding-top: 5px;
            padding-left: 7px;
            position: relative;
            width: 548px;
        }

            #epbar #epb-notice {
                margin: 5px 0;
            }

            #epbar #epb-lm {
                margin-right: 10px;
            }

        .vsc:hover .lupin, .intrlu:hover .lupin, .lupin.luhovm, #ires:hover .vsc:hover .lupin.luhovm {
            background-image: url('/images/mappins_red.png')!important;
        }

        #ires:hover .lupin.luhovm {
            background-image: url('/images/mappins_grey.png')!important;
        }

        .vsc:hover .lucir, .intrlu:hover .lucir, .lucir.luhovm, #ires:hover .vsc:hover .lucir.luhovm {
            background-image: url('/images/mapcircles_red.png')!important;
        }

        #ires:hover .lucir.luhovm {
            background-image: url('/images/mapcircles_grey.png')!important;
        }

        #foot .ftl {
            margin-right: 12px;
        }

        #fll a, #bfl a {
            color: #1e0fbe;
            margin: 0 12px;
            text-decoration: none;
        }

        .stp {
            margin: 7px 0 17px;
        }

        .ssp {
            margin: .33em 0 17px;
        }

        #mss {
            margin: .33em 0 0;
            padding: 0;
            display: table;
        }

        .mss_col {
            display: inline-block;
            float: left;
            font-size: small;
            white-space: nowrap;
            padding-right: 16px;
        }

        #mss p {
            margin: 0;
            padding-top: 5px;
        }

        body {
            color: #222;
        }

        .s {
            color: #545454;
        }

            .s a:visited em {
                color: #609;
            }

            .s a:active em {
                color: #dd4b39;
            }

        .sfcc {
            width: 833px;
        }

        .big .sfcc {
            max-width: 1129px;
        }

        .big #tsf {
        }

        .sp_cnt, .ssp {
            padding-top: 6px;
        }

        #topstuff .obp {
            padding-top: 6px;
        }

        #ires h3, #res h3 {
            font-size: medium;
        }

        .slk {
            margin-top: 6px!important;
        }

        .st {
            line-height: 1.4;
            word-wrap: break-word;
        }

        .kv, .slp {
            display: block;
        }

        .kt {
            border-spacing: 2px 0;
            margin-top: 1px;
        }

        .esw {
            vertical-align: text-bottom;
        }

        .cpbb, .kpbb, .kprb, .kpgb, .kpgrb, .ksb, .ab_button {
            -webkit-border-radius: 2px;
            border-radius: 2px;
            cursor: default;
            font-family: arial,sans-serif;
            font-size: 11px;
            font-weight: bold;
            height: 27px;
            line-height: 27px;
            margin: 2px 0;
            min-width: 54px;
            padding: 0 8px;
            text-align: center;
            -webkit-transition: all 0.218s,visibility 0s;
            transition: all 0.218s,visibility 0s;
            -webkit-user-select: none;
        }

        .kbtn-small {
            min-width: 26px;
            width: 26px;
        }

        .ab_button.left {
            -webkit-border-radius: 2px 0 0 2px;
            border-radius: 2px 0 0 2px;
            border-right-color: transparent;
            margin-right: 0;
        }

        .ab_button.right {
            -webkit-border-radius: 0 2px 2px 0;
            border-radius: 0 2px 2px 0;
            margin-left: -1px;
        }

        .ksb, .ab_button {
            background-color: #f5f5f5;
            background-image: -webkit-gradient(linear,left top,left bottom,from(#f5f5f5),to(#f1f1f1));
            background-image: -webkit-linear-gradient(top,#f5f5f5,#f1f1f1);
            background-image: linear-gradient(top,#f5f5f5,#f1f1f1);
            border: 1px solid #dcdcdc;
            border: 1px solid rgba(0, 0, 0, 0.1);
            color: #444;
        }

        a.ksb, .div.ksb, a.ab_button {
            color: #444;
            text-decoration: none;
            cursor: default;
        }

        .cpbb:hover, .kpbb:hover, .kprb:hover, .kpgb:hover, .kpgrb:hover, .ksb:hover, .ab_button:hover, #hdtb_tls:hover {
            -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
            box-shadow: 0 1px 1px rgba(0,0,0,0.1);
            -webkit-transition: all 0.0s;
            transition: all 0.0s;
        }

        .ksb:hover, .ab_button:hover, #hdtb_tls:hover {
            background-color: #f8f8f8;
            background-image: -webkit-gradient(linear,left top,left bottom,from(#f8f8f8),to(#f1f1f1));
            background-image: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);
            background-image: linear-gradient(top,#f8f8f8,#f1f1f1);
            border: 1px solid #c6c6c6;
            color: #222;
        }

        .ksb:active, .ab_button:active, #hdtb_tls:active {
            background-color: #f6f6f6;
            background-image: -webkit-gradient(linear,left top,left bottom,from(#f6f6f6),to(#f1f1f1));
            background-image: -webkit-linear-gradient(top,#f6f6f6,#f1f1f1);
            background-image: linear-gradient(top,#f6f6f6,#f1f1f1);
            -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
        }

        .ksb.ksbs, .ksb.ksbs:hover, .ab_button.selected, .ab_button.selected:hover {
            background-color: #eee;
            background-image: -webkit-gradient(linear,left top,left bottom,from(#eee),to(#e0e0e0));
            background-image: -webkit-linear-gradient(top,#eee,#e0e0e0);
            background-image: linear-gradient(top,#eee,#e0e0e0);
            border: 1px solid #ccc;
            -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            color: #222;
            margin: 0;
        }

        .ksb.sbm {
            height: 20px;
            line-height: 18px;
            min-width: 35px;
        }

        .ksb.sbf {
            height: 21px;
            line-height: 21px;
            min-width: 35px;
        }

        .ksb.xlt {
            height: 20px;
            line-height: 21px;
            min-width: 35px;
        }

        .ksb.mini {
            -webkit-box-sizing: content-box;
            box-sizing: content-box;
            height: 17px;
            line-height: 17px;
            min-width: 0;
        }

        .ksb.left {
            -webkit-border-radius: 2px 0 0 2px;
        }

        .ksb.mid {
            -webkit-border-radius: 0;
            margin-left: -1px;
        }

        .ksb.right {
            -webkit-border-radius: 0 2px 2px 0;
            margin-left: -1px;
        }

        .ktf {
            -webkit-border-radius: 1px;
            -webkit-box-sizing: content-box;
            background-color: #fff;
            border: 1px solid #d9d9d9;
            border-top: 1px solid #c0c0c0;
            box-sizing: content-box;
            color: #333;
            display: inline-block;
            height: 29px;
            line-height: 27px;
            padding-left: 8px;
            vertical-align: top;
        }

            .ktf:hover {
                -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
                border: 1px solid #b9b9b9;
                border-top: 1px solid #a0a0a0;
                box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            }

            .ktf:focus {
                -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
                border: 1px solid #4d90fe;
                box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
                outline: none;
            }

            .ktf.mini {
                font-size: 11px;
                height: 17px;
                line-height: 17px;
                padding: 0 2px;
            }

        #sbfrm_l {
            visibility: inherit!important;
        }

        #rcnt {
            margin-top: 3px;
        }

        #appbar, #top_nav, #rhscol {
            min-width: 980px;
        }

        #appbar {
            background: white;
            -webkit-box-sizing: border-box;
            width: 100%;
        }

        .ab_wrp {
            height: 57px;
            border-bottom: 1px solid #ebebeb;
        }

        #cnt {
            position: relative;
        }

        #main {
            width: 100%;
        }

        #omni_suggest {
            z-index: 104;
        }

        .sp_cnt {
            margin: 5px 0 10px 0;
        }

        #ab_name, #ab_shopping {
            color: #dd4b39;
            font: 20px "Arial";
            margin-left: 15px;
            position: absolute;
            top: 17px;
        }

            #ab_name a {
                color: #999;
            }

            #ab_shopping a {
                color: #dd4b39;
            }

        #ab_ctls {
            float: right;
            position: relative;
            right: 28px;
            z-index: 3;
        }

        #sslock {
            background: url(images/srpr/safesearchlock_transparent.png) right top no-repeat;
            height: 40px;
            position: absolute;
            right: 0;
            top: 0;
            width: 260px;
            -webkit-user-select: none;
        }

        .ab_ctl {
            display: inline-block;
            position: relative;
            margin-left: 16px;
            margin-top: 1px;
            vertical-align: middle;
        }

        a.ab_button, a.ab_button:visited {
            display: inline-block;
            color: #444;
            margin: 0;
        }

            a.ab_button:hover {
                color: #222;
            }

            #appbar a.ab_button:active, a.ab_button.selected, a.ab_button.selected:hover {
                color: #333;
            }

        .ab_button:focus {
            border: 1px solid #4d90fe;
            outline: none;
        }

        .ab_button.selected:focus {
            border-color: #ccc;
        }

        .ab_icon {
            background: url(/assets/images/google/nav_logo170.png) no-repeat;
            display: inline-block;
            opacity: 0.667;
            vertical-align: middle;
        }

        .ab_button:hover > span.ab_icon {
            opacity: 0.9;
        }

        #ab_opt_icon {
            background-position: -42px -259px;
            height: 17px;
            margin-top: -2px;
            width: 17px;
        }

        .ab_dropdown {
            background: #fff;
            border: 1px solid #dcdcdc;
            border: 1px solid rgba(0,0,0,0.2);
            font-size: 13px;
            padding: 0 0 6px;
            position: absolute;
            right: 0;
            top: 28px;
            white-space: nowrap;
            z-index: 3;
            -webkit-transition: opacity 0.218s;
            transition: opacity 0.218s;
            -webkit-box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
        }

            .ab_dropdown:focus, .ab_dropdownitem:focus, .ab_dropdownitem a:focus {
                outline: none;
            }

        .ab_dropdownitem {
            margin: 0;
            padding: 0;
            -webkit-user-select: none;
        }

            .ab_dropdownitem.selected {
                background-color: #eee;
            }

            .ab_dropdownitem.checked {
                background-image: url(//ssl.gstatic.com/ui/v1/menu/checkmark.png);
                background-position: left center;
                background-repeat: no-repeat;
            }

            .ab_dropdownitem.disabled {
                cursor: default;
                border: 1px solid #f3f3f3;
                border: 1px solid rgba(0,0,0,0.05);
                pointer-events: none;
            }

        a.ab_dropdownitem.disabled {
            color: #b8b8b8;
        }

        .ab_dropdownitem.active {
            -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
            box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
        }

        .ab_arrow {
            background: url(//ssl.gstatic.com/ui/v1/zippy/arrow_down.png);
            background-position: right center;
            background-repeat: no-repeat;
            display: inline-block;
            height: 4px;
            margin-left: 3px;
            margin-top: -3px;
            vertical-align: middle;
            width: 7px;
        }

        .ab_dropdownlnk, .ab_dropdownlnkinfo {
            display: block;
            padding: 8px 20px 8px 16px;
        }

        a.ab_dropdownlnk, a.ab_dropdownlnk:visited, a.ab_dropdownlnk:hover, #appbar a.ab_dropdownlnk:active {
            color: #333;
        }

        a.ab_dropdownlnkinfo, a.ab_dropdownlnkinfo:visited, a.ab_dropdownlnkinfo:hover, #cppbar a.ab_dropdownlnkinfo:active {
            color: #15c;
        }

        .ab_dropdownchecklist {
            padding-left: 30px;
        }

        .ab_dropdownrule {
            border-top: 1px solid #ebebeb;
            margin-bottom: 10px;
            margin-top: 9px;
        }

        #top_nav {
            -webkit-user-select: none;
        }

        .ksb.mini {
            margin-top: 0px;
        }

        .ab_tnav_wrp {
            height: 35px;
        }

        #hdtb_msb > .hdtb_mitem:first-child, .ab_tnav_wrp, #cnt #center_col, .mw #center_col {
            margin-left: 120px;
        }

            #hdtb_msb > .hdtb_mitem:first-child.hdtb_msel {
                margin-left: 128px;
            }

        #hdtb-mn-gp {
            width: 120px;
        }

        .mw #rhs {
            margin-left: 702px;
        }

        .mw #nyc {
            margin-left: 651px;
        }

        .klnav.klleft {
            margin-left: 14px!important;
        }

        .tbt {
            margin-left: 8px;
            margin-bottom: 28px;
        }

        #tbpi.pt.pi {
            margin-top: -20px;
        }

        #tbpi.pi {
            margin-top: 0;
        }

        .tbo #tbpi.pt, .tbo #tbpi {
            margin-top: -20px;
        }

        #tbpi.pt {
            margin-top: 8px;
        }

        #tbpi {
            margin-top: 0;
        }

        #tbrt {
            margin-top: -20px;
        }

        .lnsep {
            border-bottom: 1px solid #ebebeb;
            margin-bottom: 14px;
            margin-left: 10px;
            margin-right: 4px;
            margin-top: 14px;
        }

        .tbos, .tbots, .tbotu {
            color: #dd4b39;
        }

        #lc a, .tbou > a.q, #tbpi, #tbtro, .tbt label, #set_location_section a {
            color: #222;
        }

        .th {
            border: 1px solid #ebebeb;
        }

        #resultStats {
            color: #999;
            font-size: 13px;
            line-height: 35px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        #resultStats {
            padding-left: 16px;
            padding-top: 0;
            padding-bottom: 0;
            padding-right: 8px;
        }

        #leftnav {
            margin-left: 0;
        }

        #subform_ctrl {
            margin-left: 149px;
        }

        .mdm #leftnav {
            width: 144px!important;
        }

        .big #leftnav {
            width: 204px!important;
        }

        .big #subform_ctrl {
            padding-right: 2px;
            margin-left: 229px;
        }

        .mdm #bms {
            margin-left: 12px;
        }

        .big #bms {
            margin-left: 28px;
        }

        .mdm .mitem .kl, .mdm #showmodes {
            padding-left: 28px;
        }

        .big .mitem .kl, .big #showmodes {
            padding-left: 44px;
        }

        .mdm .msel .kls {
            padding-left: 23px;
        }

        .big .msel .kls {
            padding-left: 39px;
        }

        .nbcl {
            background: url(/assets/images/google/nav_logo170.png) no-repeat -140px -230px;
            height: 11px;
            width: 11px;
        }

        .spra img {
            border: 1px solid #ebebeb!important;
        }

        .obsmo .dp0, .dp1, .rssmo .dp0 {
            display: none;
        }

        .obsmo .dp1, .rssmo .dp1 {
            display: inline;
        }

        #obsmtc a, .rscontainer a {
            text-decoration: none;
        }

            #obsmtc a:hover .ul, .rscontainer a:hover .ul {
                text-decoration: underline;
            }

        .lr_tab {
            display: inline-block;
        }

        .authorship_attr {
            white-space: nowrap;
        }

        .authorship_link {
            text-decoration: none;
            white-space: nowrap;
        }

            .authorship_link:hover {
                text-decoration: underline;
            }

        .currency input[type=text] {
            background-color: white;
            border: 1px solid #d9d9d9;
            border-top: 1px solid #c0c0c0;
            box-sizing: border-box;
            color: #333;
            display: inline-block;
            height: 29px;
            line-height: 27px;
            padding-left: 8px;
            vertical-align: top;
            -webkit-border-radius: 1px;
            -webkit-box-sizing: border-box;
        }

            .currency input[type=text]:hover {
                border: 1px solid #b9b9b9;
                border-top: 1px solid #a0a0a0;
                box-shadow: inset 0px 1px 2px rgba(0,0,0,0.1);
                -webkit-box-shadow: inset 0px 1px 2px rgba(0,0,0,0.1);
            }

            .currency input[type=text]:focus {
                border: 1px solid #4d90fe;
                box-shadow: inset 0px 1px 2px rgba(0,0,0,0.3);
                outline: none;
                -webkit-box-shadow: inset 0px 1px 2px rgba(0,0,0,0.3);
            }

        .pplsrsl, .pplsrsli, .pplsrslcl {
            color: #AAA;
            text-decoration: none;
        }

        .pplsrsla, .pplsrsli {
            cursor: pointer;
            margin-left: 5px;
        }

            .pplsrsl:visited, .pplsrsli:visited, .pplsrslcl:visited {
                color: #aaa;
            }

            .pplsrsl:hover, .pplsrsli:hover, .pplsrslcl:hover {
                color: #666;
                text-decoration: underline;
            }

        .pplsrsl {
            visibility: hidden;
        }

        .pplsrsla {
            text-decoration: inherit;
        }

        .pplsrslc {
            display: none;
        }

        .pplsrsli {
            display: inline-block;
        }

        .pplsrsla:focus .pplsrsl {
            visibility: inherit;
        }

        li.g:hover .pplsrsl {
            visibility: inherit;
        }

        body.vasq #hdtbSum {
            height: 59px;
            line-height: 54px;
        }

        body.vasq #hdtb_msb .hdtb_mitem.hdtb_msel, body.vasq #hdtb_msb .hdtb_mitem.hdtb_msel_pre {
            height: 54px;
        }

        body.vasq .ab_tnav_wrp {
            height: 43px;
        }

        body.vasq #topabar.vasqHeight {
            margin-top: -44px!important;
        }

        body.vasq #resultStats {
            line-height: 43px;
        }

        body.vasq .hdtb-mn-o, body.vasq .hdtb-mn-c {
            top: 50px;
        }

        .ksbl, .ksbr {
            z-index: 1;
            -webkit-transition: none;
        }

        .ksbr {
            margin-right: 0;
            -webkit-border-top-right-radius: 0;
            -webkit-border-bottom-right-radius: 0;
        }

        .ksbl {
            margin-left: -1px !important;
            -webkit-border-bottom-left-radius: 0;
            -webkit-border-top-left-radius: 0;
        }

        #owmh_pg, #wob_pg {
            display: -webkit-box;
            height: 80px;
            padding-top: 0;
            white-space: nowrap;
        }

        #wob_wg {
            display: -webkit-box;
            height: 80px;
            padding-top: 0;
            white-space: nowrap;
        }

        #owmh_pg > div:last-child {
            padding-right: 40px;
        }

        #wob_dp > div:last-child {
            margin-right: 10px;
        }

        .owmh_t #owmh_pg, .wob_tg #wob_pg, .wob_tg #wob_wg, .owmh_p #owmh_gsvg, .wob_p #wob_gsvg, .wob_p #wob_wg, .wob_w #wob_pg, .wob_w #wob_gsvg {
            display: none;
        }

        .owmh_t #owmh_gsvg, .wob_tg #wob_gsvg {
            display: block;
        }

        .owmh_pb, .wob_pb {
            -webkit-transition: background-color 0.3s ease-out 0s;
        }

        .wob_df {
            border: 1px solid transparent;
        }

        .wob_ds {
            background-color: #fcfcfc;
            border: 1px solid #e9e9e9;
            -webkit-border-radius: 1px;
            margin: 0;
        }

        .ellip {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
    </style>
    <style>
        .kpbb, .kprb, .kpgb, .kpgrb {
            -webkit-border-radius: 2px;
            border-radius: 2px;
            color: #fff;
        }

            .kpbb:hover, .kprb:hover, .kpgb:hover, .kpgrb:hover {
                -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
                box-shadow: 0 1px 1px rgba(0,0,0,0.1);
                color: #fff;
            }

            .kpbb:active, .kprb:active, .kpgb:active, .kpgrb:active {
                -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
                box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
            }

        .kpbb {
            background-image: -webkit-gradient(linear,left top,left bottom,from(#4d90fe),to(#4787ed));
            background-color: #4d90fe;
            background-image: -webkit-linear-gradient(top,#4d90fe,#4787ed);
            background-image: linear-gradient(top,#4d90fe,#4787ed);
            border: 1px solid #3079ed;
        }

            .kpbb:hover {
                background-image: -webkit-gradient(linear,left top,left bottom,from(#4d90fe),to(#357ae8));
                background-color: #357ae8;
                background-image: -webkit-linear-gradient(top,#4d90fe,#357ae8);
                background-image: linear-gradient(top,#4d90fe,#357ae8);
                border: 1px solid #2f5bb7;
            }

        a.kpbb:link, a.kpbb:visited {
            color: #fff;
        }

        .kprb {
            background-image: -webkit-gradient(linear,left top,left bottom,from(#dd4b39),to(#d14836));
            background-color: #dd4b39;
            background-image: -webkit-linear-gradient(top,#dd4b39,#d14836);
            background-image: linear-gradient(top,#dd4b39,#d14836);
            border: 1px solid #dd4b39;
        }

            .kprb:hover {
                background-image: -webkit-gradient(linear,left top,left bottom,from(#dd4b39),to(#c53727));
                background-color: #c53727;
                background-image: -webkit-linear-gradient(top,#dd4b39,#c53727);
                background-image: linear-gradient(top,#dd4b39,#c53727);
                border: 1px solid #b0281a;
                border-bottom-color: #af301f;
            }

            .kprb:active {
                background-image: -webkit-gradient(linear,left top,left bottom,from(#dd4b39),to(#b0281a));
                background-color: #b0281a;
                background-image: -webkit-linear-gradient(top,#dd4b39,#b0281a);
                background-image: linear-gradient(top,#dd4b39,#b0281a);
            }

        .kpgb {
            background-image: -webkit-gradient(linear,left top,left bottom,from(#3d9400),to(#398a00));
            background-color: #3d9400;
            background-image: -webkit-linear-gradient(top,#3d9400,#398a00);
            background-image: linear-gradient(top,#3d9400,#398a00);
            border: 1px solid #29691d;
        }

            .kpgb:hover {
                background-image: -webkit-gradient(linear,left top,left bottom,from(#3d9400),to(#368200));
                background-color: #368200;
                background-image: -webkit-linear-gradient(top,#3d9400,#368200);
                background-image: linear-gradient(top,#3d9400,#368200);
                border: 1px solid #2d6200;
            }

        .kpgrb {
            background-image: -webkit-gradient(linear,left top,left bottom,from(#f5f5f5),to(#f1f1f1));
            background-color: #f5f5f5;
            background-image: -webkit-linear-gradient(top,#f5f5f5,#f1f1f1);
            background-image: linear-gradient(top,#f5f5f5,#f1f1f1);
            border: 1px solid #dcdcdc;
            color: #555;
        }

            .kpgrb:hover {
                background-image: -webkit-gradient(linear,left top,left bottom,from(#f8f8f8),to(#f1f1f1));
                background-color: #f8f8f8;
                background-image: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);
                background-image: linear-gradient(top,#f8f8f8,#f1f1f1);
                border: 1px solid #dcdcdc;
                color: #333;
            }

        a.kpgrb:link, a.kpgrb:visited {
            color: #555;
        }

        .lst-t {
            width: 100%;
        }

        #gbqfq {
            padding: 0 0 0 9px;
        }

        #pocs {
            background: #fff1a8;
            color: #000;
            font-size: 10pt;
            margin: 0;
            padding: 5px 7px 0;
        }

            #pocs.sft {
                background: transparent;
                color: #777;
            }

            #pocs a {
                color: #11c;
            }

            #pocs.sft a {
                color: #36c;
            }

            #pocs > div {
                margin: 0;
                padding: 0;
            }

        .gl {
            white-space: nowrap;
        }

        .big .tsf-p {
            padding-left: 126px;
            padding-right: 352px;
        }

        .tsf-p {
            padding-left: 126px;
            padding-right: 46px;
        }

        #searchform .jsb, #gbqfw .jsb {
            display: none;
        }

        #searchform .nojsb, #gbqfw .nojsb {
            display: block;
        }

        #sfcnt, #subform_ctrl {
            display: none;
        }

        .lst {
            padding-top: 6px;
        }
    </style>
    
    <style type="text/css">
        #qbi.gssi_a {
            background: url(data:image/gif;base64,R0lGODlhEgANAOMKAAAAABUVFRoaGisrKzk5OUxMTGRkZLS0tM/Pz9/f3////////////////////////yH5BAEKAA8ALAAAAAASAA0AAART8Ml5Arg3nMkluQIhXMRUYNiwSceAnYAwAkOCGISBJC4mSKMDwpJBHFC/h+xhQAEMSuSo9EFRnSCmEzrDComAgBGbsuF0PHJq9WipnYJB9/UmFyIAOw==) no-repeat center;
            cursor: pointer;
            display: inline-block;
            height: 13px;
            padding: 0;
            width: 18px;
        }

        .gsok_a {
            background: url(data:image/gif;base64,R0lGODlhEwALAKECAAAAABISEv///////yH5BAEKAAIALAAAAAATAAsAAAIdDI6pZ+suQJyy0ocV3bbm33EcCArmiUYk1qxAUAAAOw==) no-repeat center;
            display: inline-block;
            height: 11px;
            line-height: 0;
            width: 19px;
        }

            .gsok_a img {
                border: none;
                visibility: hidden;
            }

        .gsri_a {
            background: url(data:image/gif;base64,R0lGODlhHAAmAKIHAKqqqsvLy0hISObm5vf394uLiwAAAP///yH5BAEAAAcALAAAAAAcACYAAAO9eLpMIMYIQJi9DcYtKv6KtnHgB4yoAZSXKAyDy1rjoAzjzOQLrx8+4OanCAZnxiExGSEKmz3lj2lwUq3SZ3WZPbKuXGgxu9t4tLYDTkpIRQILF0x2G4lWipM7gj/oJQUkcXsCDCIFATULBCIcZ2tvB3QLDxETFnR/BgU/gRt9jX0gnpYMkJZpFzEoqQqJKAIBaQOVKHAXr3t7txgBjboSvB8EpLoFZywOAo3LFE5lYs/QW9LT1TRk1V7S2xYJADs=) no-repeat center;
            background-size: 14px 19px;
            display: inline-block;
            height: 23px;
            width: 17px;
        }

        .gsri_ha {
            background: url(data:image/gif;base64,R0lGODlhHAAmAKIHAKqqqsvLy0dHR/b29ouLi+Tk5AAAAP///yH5BAEAAAcALAAAAAAcACYAAAOueLo8IMYIMJi9DcYtKv6KtnHgB4yoAZSXmEqs9aIxM4/1cm+5ske9w88QHBZ/x13ytpw1X89UlIYZeYRIxWBWWLhSgkVhJFopTjfzAS0hkLyzMDxCCIy62q/kOt4EDiJyCw8RExaBZyMEOW4bai5qII2FDH0ceBcFX5gKdigCAXgFhCh/F55DI6YYmqkSqx8DkzcEVywOAi65FEE2PL0XOMAyv8M6xcZYQMk+yB8JADs=) no-repeat center;
            background-size: 14px 19px;
            display: inline-block;
            height: 23px;
            width: 17px;
        }

        .gsst_e {
            opacity: 0.6!important;
        }

            .gsst_e:hover {
                opacity: 0.8!important;
            }

            .gsst_e:active {
                opacity: 1.0!important;
            }

        .gsst_a {
            display: inline-block;
        }

        .gsst_a {
            cursor: pointer;
            padding: 0 4px;
        }

            .gsst_a:hover {
                text-decoration: none!important;
            }

        .gsst_b {
            font-size: 16px;
            padding: 0 2px;
            position: relative;
            user-select: none;
            -webkit-user-select: none;
            white-space: nowrap;
        }

        .gsst_e {
            vertical-align: middle;
            opacity: 0.55;
        }

        .gsst_a:hover .gsst_e, .gsst_a:focus .gsst_e {
            opacity: 0.72;
        }

        .gsst_a:active .gsst_e {
            opacity: 1;
        }

        .gsst_f {
            background: white;
            text-align: left;
        }

        .gsst_g {
            background-color: white;
            border: 1px solid #ccc;
            border-top-color: #d9d9d9;
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            -webkit-box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            margin: -1px -3px;
            padding: 0 6px;
        }

        .gsst_h {
            background-color: white;
            height: 1px;
            margin-bottom: -1px;
            position: relative;
            top: -1px;
        }

        .gsib_a {
            width: 100%;
            padding: 4px 6px 0;
        }

        .gsib_a, .gsib_b {
            vertical-align: top;
        }

        .gssb_c {
            border: 0;
            position: absolute;
            z-index: 989;
        }

        .gssb_e {
            border: 1px solid #ccc;
            border-top-color: #d9d9d9;
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            -webkit-box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            cursor: default;
        }

        .gssb_f {
            visibility: hidden;
            white-space: nowrap;
        }

        .gssb_k {
            border: 0;
            display: block;
            position: absolute;
            top: 0;
            z-index: 988;
        }

        .gsdd_a {
            border: none!important;
        }

        .gsq_a {
            padding: 0;
        }

        .gspr_a {
            padding-right: 1px;
        }

        a.gspqs_a {
            padding: 0 3px 0 8px;
        }

        .gspqs_b {
            color: #666;
            line-height: 22px;
        }

        .gsmq_a {
            padding: 0;
        }

        .gsen_a {
            color: #333;
        }

        .gssb_a {
            padding: 0 7px;
        }

            .gssb_a, .gssb_a td {
                white-space: nowrap;
                overflow: hidden;
                line-height: 22px;
            }

        #gssb_b {
            font-size: 11px;
            color: #36c;
            text-decoration: none;
        }

            #gssb_b:hover {
                font-size: 11px;
                color: #36c;
                text-decoration: underline;
            }

        .gssb_g {
            text-align: center;
            padding: 8px 0 7px;
            position: relative;
        }

        .gssb_h {
            font-size: 15px;
            height: 28px;
            margin: 0.2em;
            -webkit-appearance: button;
        }

        .gssb_i {
            background: #eee;
        }

        .gss_ifl {
            visibility: hidden;
            padding-left: 5px;
        }

        .gssb_i .gss_ifl {
            visibility: visible;
        }

        a.gssb_j {
            font-size: 13px;
            color: #36c;
            text-decoration: none;
            line-height: 100%;
        }

            a.gssb_j:hover {
                text-decoration: underline;
            }

        .gssb_l {
            height: 1px;
            background-color: #e5e5e5;
        }

        .gssb_m {
            color: #000;
            background: #fff;
        }

        .gscp_a, .gscp_c, .gscp_d, .gscp_e, .gscp_f {
            display: inline-block;
            vertical-align: bottom;
        }

        .gscp_f {
            border: none;
        }

        .gscp_a {
            background: #d9e7fe;
            border: 1px solid #9cb0d8;
            cursor: default;
            outline: none;
            text-decoration: none!important;
            user-select: none;
            -webkit-user-select: none;
        }

            .gscp_a:hover {
                border-color: #869ec9;
            }

            .gscp_a.gscp_b {
                background: #4787ec;
                border-color: #3967bf;
            }

        .gscp_c {
            color: #444;
            font-size: 13px;
            font-weight: bold;
        }

        .gscp_d {
            color: #aeb8cb;
            cursor: pointer;
            font: 21px arial,sans-serif;
            line-height: inherit;
            padding: 0 7px;
        }

        .gscp_d {
            position: relative;
            top: 1px;
        }

        .gscp_a:hover .gscp_d {
            color: #575b66;
        }

        .gscp_c:hover, .gscp_a .gscp_d:hover {
            color: #222;
        }

        .gscp_a.gscp_b .gscp_c, .gscp_a.gscp_b .gscp_d {
            color: #fff;
        }

        .gscp_e {
            height: 100%;
            padding: 0 4px;
        }

        .gsfe_a {
            border: 1px solid #b9b9b9;
            border-top-color: #a0a0a0;
            box-shadow: inset 0px 1px 2px rgba(0,0,0,0.1);
            -moz-box-shadow: inset 0px 1px 2px rgba(0,0,0,0.1);
            -webkit-box-shadow: inset 0px 1px 2px rgba(0,0,0,0.1);
        }

        .gsfe_b {
            border: 1px solid #4d90fe;
            outline: none;
            box-shadow: inset 0px 1px 2px rgba(0,0,0,0.3);
            -moz-box-shadow: inset 0px 1px 2px rgba(0,0,0,0.3);
            -webkit-box-shadow: inset 0px 1px 2px rgba(0,0,0,0.3);
        }

        .gsc_b {
            background: url(data:image/gif;base64,R0lGODlhCgAEAMIEAP9BGP6pl//Wy/7//P///////////////yH5BAEKAAQALAAAAAAKAAQAAAMROCOhK0oA0MIUMmTAZhsWBCYAOw==) repeat-x scroll 0 100% transparent;
            display: inline-block;
            padding-bottom: 1px;
        }

        #chmo {
            left: 50%;
            margin: 0;
            opacity: 0;
            padding: 0;
            position: absolute;
            top: 33px;
            transition: opacity 0.218s;
            visibility: hidden;
            width: 270px;
        }

        #chm {
            background: #fff;
            border: 1px solid #aaa;
            box-shadow: 1px 2px 4px rgba(0,0,0,0.2);
            box-sizing: border-box;
            color: #444;
            font-size: 13px;
            left: -50%;
            line-height: 22px;
            padding: 10px;
            position: relative;
            text-align: center;
            white-space: nowrap;
            width: 270px;
            z-index: 1900;
        }

        .chma {
            background: url(data:image/gif;base64,R0lGODlhEAAQAKIHAPzu7PfT0Oh5cfGtqONbUuBLQeBKP////yH5BAEAAAcALAAAAAAQABAAAANKeLrcfkAI8NowZtQFCCbUJmCYsAWFAQBGEVSjyhqmc2HBnDUdGQQkEOOGA5I0CkCKxMQUQjEnAMU0GUkuZTPgaRaWTEK0Sa5tGgkAOw) no-repeat center;
            display: inline-block;
            height: 16px;
            width: 16px;
        }

        #chm a {
            color: #2518b5;
            cursor: pointer;
        }

        .chmp {
            border: 6px solid;
            border-color: #444 transparent;
            border-top: 0;
            height: 0;
            left: 129px;
            position: absolute;
            top: -6px;
            width: 0;
        }

        .chmpi {
            border-color: #fff transparent;
            left: -6px;
            top: 1px;
        }

        .gsso_a {
            padding: 3px 0;
        }

            .gsso_a td {
                line-height: 18px;
            }

        .gsso_b {
            width: 36px;
        }

        .gsso_c {
            height: 36px;
            vertical-align: middle;
            width: 36px;
        }

        .gsso_d {
            width: 7px;
        }

        .gsso_e {
            width: 100%;
        }

        .gsso_f {
            color: #666;
            font-size: 13px;
            padding-bottom: 2px;
        }

        .gsso_g {
            color: #093;
            font-size: 13px;
        }

        .gssb_a {
            padding: 0 10px;
        }

        .gssb_c {
            z-index: 1001;
        }

        .gsib_a {
            padding: 5px 9px 0;
        }
    </style>
    <style>
        .goog-inline-block {
            position: relative;
            display: -moz-inline-box;
            display: inline-block;
        }

        * html .goog-inline-block {
            display: inline;
        }

        *:first-child + html .goog-inline-block {
            display: inline;
        }

        .jfk-bubble {
            -webkit-box-shadow: 0 1px 3px rgba(0,0,0,.2);
            -moz-box-shadow: 0 1px 3px rgba(0,0,0,.2);
            box-shadow: 0 1px 3px rgba(0,0,0,.2);
            background-color: #fff;
            border: 1px solid;
            border-color: #bbb #bbb #a8a8a8;
            padding: 16px;
            position: absolute;
            z-index: 1201!important;
        }

        .jfk-bubble-closebtn {
            border: 1px solid transparent;
            height: 21px;
            opacity: .4;
            outline: 0;
            position: absolute;
            right: 2px;
            top: 2px;
            width: 21px;
        }

            .jfk-bubble-closebtn:focus {
                border: 1px solid #4d90fe;
                opacity: .8;
            }

        .jfk-bubble-arrow {
            position: absolute;
        }

            .jfk-bubble-arrow .jfk-bubble-arrowimplbefore, .jfk-bubble-arrow .jfk-bubble-arrowimplafter {
                display: block;
                height: 0;
                position: absolute;
                width: 0;
            }

            .jfk-bubble-arrow .jfk-bubble-arrowimplbefore {
                border: 9px solid;
            }

            .jfk-bubble-arrow .jfk-bubble-arrowimplafter {
                border: 8px solid;
            }

        .jfk-bubble-arrowdown {
            bottom: 0;
        }

        .jfk-bubble-arrowup {
            top: -9px;
        }

        .jfk-bubble-arrowleft {
            left: -9px;
        }

        .jfk-bubble-arrowright {
            right: 0;
        }

        .jfk-bubble-arrowdown .jfk-bubble-arrowimplbefore, .jfk-bubble-arrowup .jfk-bubble-arrowimplbefore {
            border-color: #bbb transparent;
            left: -9px;
        }

        .jfk-bubble-arrowdown .jfk-bubble-arrowimplbefore {
            border-color: #a8a8a8 transparent;
        }

        .jfk-bubble-arrowdown .jfk-bubble-arrowimplafter, .jfk-bubble-arrowup .jfk-bubble-arrowimplafter {
            border-color: #fff transparent;
            left: -8px;
        }

        .jfk-bubble-arrowdown .jfk-bubble-arrowimplbefore {
            border-bottom-width: 0;
        }

        .jfk-bubble-arrowdown .jfk-bubble-arrowimplafter {
            border-bottom-width: 0;
        }

        .jfk-bubble-arrowup .jfk-bubble-arrowimplbefore {
            border-top-width: 0;
        }

        .jfk-bubble-arrowup .jfk-bubble-arrowimplafter {
            border-top-width: 0;
            top: 1px;
        }

        .jfk-bubble-arrowleft .jfk-bubble-arrowimplbefore, .jfk-bubble-arrowright .jfk-bubble-arrowimplbefore {
            border-color: transparent #bbb;
            top: -9px;
        }

        .jfk-bubble-arrowleft .jfk-bubble-arrowimplafter, .jfk-bubble-arrowright .jfk-bubble-arrowimplafter {
            border-color: transparent #fff;
            top: -8px;
        }

        .jfk-bubble-arrowleft .jfk-bubble-arrowimplbefore {
            border-left-width: 0;
        }

        .jfk-bubble-arrowleft .jfk-bubble-arrowimplafter {
            border-left-width: 0;
            left: 1px;
        }

        .jfk-bubble-arrowright .jfk-bubble-arrowimplbefore {
            border-right-width: 0;
        }

        .jfk-bubble-arrowright .jfk-bubble-arrowimplafter {
            border-right-width: 0;
        }
    </style>
</head>
<body class="srp tbo vasq vsh" lang="en-GB" id="gsr">
    <div data-jiis="cc" id="cst">
        <div style="display: none">&nbsp;</div>
        <style>
            .fade #center_col, .fade #rhs, .fade #leftnav, .fade #brs {
                filter: alpha(opacity=33.3);
                opacity: 0.333;
            }

            .fade-hidden #center_col, .fade-hidden #rhs, .fade-hidden #leftnav {
                visibility: hidden;
            }

            .flyr-o, .flyr-w {
                position: absolute;
                background-color: #fff;
                z-index: 3;
                display: block;
            }

            .flyr-o {
                filter: alpha(opacity=66.6);
                opacity: 0.666;
            }

            .flyr-w {
                filter: alpha(opacity=20.0);
                opacity: 0.2;
            }

            .flyr-h {
                filter: alpha(opacity=0);
                opacity: 0;
            }

            .flyr-c {
                display: none;
            }

            .flt, .flt u, a.fl {
                text-decoration: none;
            }

                .flt:hover, .flt:hover u, a.fl:hover {
                    text-decoration: underline;
                }

            #knavm {
                color: #4273db;
                display: inline;
                font: 11px arial,sans-serif !important;
                left: -13px;
                position: absolute;
                top: 2px;
                z-index: 2;
            }

            #pnprev #knavm {
                bottom: 1px;
                top: auto;
            }

            #pnnext #knavm {
                bottom: 1px;
                left: 40px;
                top: auto;
            }

            a.noline {
                outline: 0;
            }
        </style>
        <style>
            .y.yp, .y > .filled, .y > .preload {
                display: none;
            }

            .y.yf, .y.ys, .yf > .filled, .yi > .filled, .yp > .preload {
                display: block;
            }
        </style>
        <style>
            #spchm {
                display: block;
                height: 87px;
                left: 43px;
                pointer-events: none;
                position: absolute;
                top: 47px;
                width: 42px;
                z-index: 1103;
                -webkit-transform: scale(1);
            }

            .s2tb-h #spchm, .s2tb #spchm {
                left: 17px;
                top: 7px;
                -webkit-transform: scale(.53);
            }

            #mrcv {
                background-color: #fff;
                border-radius: 30px;
                box-shadow: 0px 4px 2px 0 #b6413b;
                height: 46px;
                left: 25px;
                pointer-events: none;
                position: absolute;
                width: 24px;
            }

            #mwrp {
                bottom: 0;
                height: 53px;
                left: 11px;
                overflow: hidden;
                pointer-events: none;
                position: absolute;
                width: 52px;
            }

            #mstm {
                background-color: #fff;
                bottom: 14px;
                box-shadow: 0 4px 2px 0 #b6413b;
                height: 14px;
                left: 22px;
                pointer-events: none;
                position: absolute;
                width: 9px;
                z-index: 1;
            }

            #mshl {
                border: 7px solid #fff;
                border-radius: 28px;
                bottom: 27px;
                box-shadow: 0px 4px 2px 0 #b6413b;
                height: 57px;
                pointer-events: none;
                position: absolute;
                width: 38px;
                z-index: 0;
            }

            .pressed #mrcv {
                background-color: #72120e;
                box-shadow: inset 0 4px 2px 0 #590907;
            }

            .pressed #mstm {
                background-color: #72120e;
                box-shadow: 0 0 #000;
                z-index: 0;
            }

            .pressed #mshl {
                border-color: #72120e;
                box-shadow: inset 0 -2px 2px 2px #590907;
                z-index: 1;
            }

            #spchb {
                background-color: #d2423b;
                border: 1px solid #b33731;
                border-radius: 100%;
                bottom: 0;
                box-shadow: 0 4px 6px rgba(0,0,0,.2),inset 0 2px 1px rgba(255,255,255,.15),inset 0 -2px 0px rgba(255,255,255,.1);
                cursor: pointer;
                display: inline-block;
                left: 0;
                opacity: 0;
                pointer-events: none;
                position: absolute;
                right: 0;
                top: 0;
                z-index: 1101;
                -webkit-transition: background-color 0.218s,border 0.218s,box-shadow 0.218s;
            }

            .s2pbd #spchb {
                cursor: auto;
            }

            .s2tb-h #spchb {
                left: -83px;
                opacity: 0;
                pointer-events: none;
                position: absolute;
                top: -83px;
                -webkit-transition-delay: 0;
            }

            .s2fp-h #spchb {
                opacity: 0;
                pointer-events: none;
                position: absolute;
                -webkit-transition-delay: 0;
            }

            .s2fp #spchb, .s2tb #spchb {
                opacity: 1;
                pointer-events: auto;
                position: absolute;
                -webkit-transform: scale(1);
                -webkit-transition-delay: 0;
            }

            .pressed#spchb {
                background-color: #a42c27;
                box-shadow: inset 0px 0px 13px #8d1d17;
                opacity: 1;
                pointer-events: auto;
            }

            #spchl {
                background-color: #eee;
                border: 1px solid #dedede;
                border-radius: 100%;
                display: inline-block;
                height: 301px;
                left: -69px;
                opacity: 1;
                pointer-events: none;
                position: absolute;
                top: -69px;
                width: 301px;
                z-index: 1050;
                -webkit-transform: scale(.1);
                -webkit-transition: opacity 0.218s;
            }

            .s2tb-h #spchl, .s2tb #spchl {
                height: 151px;
                left: -29px;
                top: -29px;
                width: 151px;
            }

            #spchp {
                border: 2px solid #bababa;
                border-radius: 100%;
                display: inline-block;
                height: 501px;
                left: -170px;
                opacity: 0;
                pointer-events: none;
                position: absolute;
                top: -170px;
                width: 501px;
                z-index: 1050;
                -webkit-transition: opacity 0.218s;
            }

            .s2tb-h #spchp, .s2tb #spchp {
                height: 251px;
                left: -80px;
                top: -80px;
                width: 251px;
            }

            #spchk {
                float: right;
                pointer-events: none;
                position: relative;
                -webkit-transition: -webkit-transform 0.218s,opacity 0.218s ease-in;
            }

            .s2fp-h #spchk, .s2fp #spchk {
                height: 165px;
                right: -70px;
                top: -70px;
                width: 165px;
            }

            .s2fp-h #spchk, .s2tb-h #spchk {
                -webkit-transform: scale(.1);
            }

            .s2fp #spchk, .s2tb #spchk {
                -webkit-transform: scale(1);
            }

            .s2tb-h #spchk, .s2tb #spchk {
                height: 95px;
                right: -31px;
                top: -27px;
                width: 95px;
            }

            #spchk:active #spchb, #spchk:hover:active #spchb {
                background-color: #a42c27;
                border: 1px solid #8d1d17;
                box-shadow: inset 0 2px 1px rgba(0,0,0,.05),inset 0 -1px 1px rgba(255,255,255,.1);
                -webkit-transition: background-color 0s,border 0s,box-shadow 0s;
            }

            #spchk:hover #spchb {
                background-color: #c4352e;
                border: 1px solid #a62e28;
                box-shadow: 0 4px 6px rgba(0,0,0,.2),inset 0 2px 1px rgba(255,255,255,.15),inset 0 -2px 1px rgba(255,255,255,.1);
                -webkit-transition: background-color 0.218s,border 0.218s,box-shadow 0.218s;
            }

            #spch {
                background: #fff;
                display: table;
                height: 100%;
                left: 0;
                opacity: 0;
                overflow: hidden;
                position: fixed;
                text-align: left;
                top: 0;
                -webkit-transition: visibility 0s linear 0.218s,opacity 0.218s,background-color 0.218s;
                visibility: hidden;
                width: 100%;
                z-index: 10000;
            }

            .s2fp#spch {
                opacity: 1;
                -webkit-transition-delay: 0s;
                visibility: visible;
            }

            .s2tb-h#spch {
                background: rgba(255,255,255,0);
                opacity: 0;
                visibility: hidden;
            }

            .s2tb#spch {
                background: rgba(255,255,255,0);
                opacity: 1;
                -webkit-transition-delay: 0s;
                visibility: visible;
            }

            #spchx {
                color: #777;
                cursor: pointer;
                font-size: 26px;
                right: 0;
                height: 11px;
                line-height: 15px;
                margin: 15px;
                opacity: .6;
                padding: 0;
                position: absolute;
                top: 0;
                width: 11px;
                z-index: 1100;
            }

                #spchx:hover {
                    opacity: .8;
                }

                #spchx:active {
                    opacity: 1;
                }

            #spchg {
                background: url(data:image/gif;base64,R0lGODlhxABEAMIGALGzsMPFwtHT0N/h3u3v7P3//P///////yH5BAEKAAcALAAAAADEAEQAAAP+WLrc/jDKSau9OJcBuveCJo5kaZ7oJHwsMKSwQsx0bN84M+zDygY5DaEXaH0CggEhyGwKWyGnhCAoGq+ewEvK7cpaW++C+lMuZUOrUXAWu20E8Lvg62grAzUrOu+X4ixhXYAebRYcV4J+ixaEHopOdQB8GpIgjJiNcl16lCKIj5miE44dkEF6pxqgqqOupS5ckp4kgK2uo7C3MKAAQClFhrjDX4FOpcK1ycTDuk56v8zScJtBvQDL09ojzkx6ALlEVgFIuxdU5EXkSdmD1RRDVepI7aW0c3lYWe2k30Z33Ijoq9ZtQj599yyZc9KL3YyDR/g5IKBGCw2IHxbq8Df+cFKDghAoguBhqYOwFotEdrhXQGVGC3UCLHN5CU8WMxgf8XgA0kGdhC3awPLjSKI/lgzU7CoZLYKaZNd81XvX4GmEkmcsNRVTtIK/W2qQMmAqwSrPFlsZ9FygdMK3X2/nONIICxuEiheO3g0VIWraYi8dgPr7UU7cN3owRAXn84NEtUagfqDw9ayxwoUqoC2w2U3DDHohT8ZAtsEReJ0xB046msLm1F4uX1hc9YNYy7LpnKYcdCJVR4TVdjpjxDOLxw6MhCmlkfUP5ytt5gbMd8EsCRABLigu5puI0rpXz+be8rnmPb6nd+I5a1lkMShXkf/WnIFy6r4sfKPVE73+8JtlQeHFUE/0xtl0+gm4QXwUKJSeeKVEAxEbDcLGkIGgybFWBSVFAQtyDqpWXXkRxdQcbV1gJUJlsNwGgV/4eUTBNbiN+OEMItRVH0889OijEuGJd0FJL8AS3BSpkSeBJH+B9GEJHNVS0hoKdPiJhkqeo2CQNQWY2YM2UpXBYju2xBSVCsAo33EksjDCO+9JYFtIVFmowRVC4NiAijEyNiaD993JpnV2jtUlmKbUNugIU7oIE4YHIjijeQX4c2QEDLJV6ILRRdCTlbVcgVyFi1a6KXayoYiBPQ8wJQgZiSI5XV2jQjClXSaUJOKXQ7ppn5gGlarDFeQIW2Osv1L+OgJHl3KYqQKh5SUkeI9mYRBHQtKJ4JRlinZqta2NEWcFwD0QaIK8wtOmB5pImsgfxNbamK97fltvuuJCiuqIhzzrKbCLxUJCwAJX4i+0W8qK7Ly7uXZor8YeW/C9CU8h8T4G0+tAZQpP3Kq9pna6ZkSoSYrwu55SyBO2UpF2sKb+1YicX9m45Ki2+iKan1P6WHSRFRIR7IvKIeXUQbBgGJJdrTStZAisLUN5hVjMJgEkxR3ZMeqtPwjgtdeWsgPuDz/Iu4DR/3RrLrEvdnRK01iUiXZH5QxcRdonoPMP0TnuIE/PPNEguOCk3I33H+L8gIRDN+iZQw2Is4yFTI+RE77N5VO8xXiVbGPuOVfQ3FKXjJ+XzgRz5EZp+uqNR3wVsKzHXiC+zjYs++0aQLOs7bj3XjK/Wlrr+/AquH6eHcQnv5djJISl/PPQLZyhSdBXf5gI4VaffFRmA6a29pdniW6z4Mc+pbw+kF9+7Bw5qpL667NP7NVqTRh/+ULbYWn397PO9Rr865/s4hE2+rkiAQA7) no-repeat center;
                background-size: 98px 34px;
                float: right;
                height: 34px;
                left: 255px;
                opacity: 0;
                pointer-events: none;
                position: relative;
                top: 6px;
                -webkit-transition: opacity .5s ease-in,left .5s ease-in;
                width: 98px;
            }

            .s2tb #spchg {
                opacity: 1;
                left: 270px;
                -webkit-transition: opacity .5s ease-out,left .5s ease-out;
            }

            #spchc {
                display: block;
                height: 27px;
                position: absolute;
                pointer-events: none;
            }

            .s2fp #spchc, .s2fp-h #spchc {
                margin: auto;
                margin-top: 312px;
                max-width: 572px;
                min-width: 534px;
                padding: 0 223px !important;
                position: relative;
                top: 0;
            }

            .s2tb #spchc, .s2tb-h #spchc {
                background: #fff;
                box-shadow: 0 2px 6px rgba(0,0,0,0.2);
                margin: 0;
                max-width: 100%;
                min-width: 100%;
                overflow: hidden;
                padding: 51px 0 65px 126px;
                position: absolute;
            }

            #spcho {
                height: 100%;
                pointer-events: none;
                -webkit-transition: opacity .318s ease-in;
                width: 100%;
            }

            .s2tb-h #spcho, .s2tb #spcho {
                height: 100%;
                -webkit-transition: opacity .318s ease-in;
                width: 572px;
            }

            .translucent#spcho {
                opacity: .1;
                -webkit-transition: opacity 0s;
            }

            #s2pb {
                color: #777;
                font-weight: normal;
                font-size: 24px;
                -webkit-font-smoothing: antialiased;
                line-height: 1.2;
                opacity: 0;
                pointer-events: none;
                position: absolute;
                text-align: center;
                -webkit-transition: opacity 0.218s ease-in,margin-top .4s ease-in;
                width: 500px;
            }

            .s2pbd-h #s2pb {
                margin-top: -100px;
            }

            .s2pbd #s2pb {
                margin-top: -300px;
                opacity: 1;
                -webkit-transition: opacity .5s ease-out 0.218s,margin-top 0.218s ease-out 0.218s;
            }

            #s2pbg {
                box-shadow: 0 1px 0px rgb(66,133,244);
                height: 80px;
                left: 0;
                margin: 0;
                opacity: 0;
                pointer-events: none;
                position: fixed;
                right: 0;
                top: -80px;
                -webkit-transition: opacity 0.218s,box-shadow 0.218s;
                z-index: 10001;
            }

            .s2pbd #s2pbg {
                -webkit-animation: allow-alert .75s 0 infinite;
                -webkit-animation-direction: alternate;
                -webkit-animation-timing-function: ease-out;
                box-shadow: 0 1px 80px rgb(66,133,244);
                opacity: 1;
                pointer-events: none;
                -webkit-transition: opacity 0.218s,box-shadow 0.218s;
            }

            @-webkit-keyframes allow-alert {
                from {
                    opacity: 1;
                }

                to {
                    opacity: .35;
                }
            }

            #s2pbt {
                margin-left: 120px;
                margin-right: 80px;
                white-space: normal;
                width: 350px;
            }

            #spchtc {
                pointer-events: none;
            }

            .s2fp-h #spchtc, .s2fp #spchtc {
                position: absolute;
            }

            .s2tb-h #spchtc, .s2tb #spchtc {
                position: relative;
            }

            .spcht {
                color: #777;
                -webkit-font-smoothing: antialiased;
                font-weight: normal;
                line-height: 1.2;
                opacity: 0;
                pointer-events: none;
                position: absolute;
                text-align: left;
                -webkit-transition: opacity .1s ease-in,margin-left .5s ease-in,top 0s linear 0.218s;
            }

            .s2fp-h .spcht {
                margin-left: 44px;
            }

            .s2tb-h .spcht {
                margin-left: 32px;
            }

            .s2fp-h .spcht, .s2fp .spcht {
                font-size: 32px;
                left: -44px;
                top: -.2em;
                width: 460px;
            }

            .s2tb-h .spcht, .s2tb .spcht {
                font-size: 27px;
                left: 7px;
                top: .2em;
                width: 490px;
            }

            .s2fp .spcht, .s2tb .spcht {
                margin-left: 0;
                opacity: 1;
                -webkit-transition: opacity .5s ease-out,margin-left .5s ease-out;
            }

            #spchf {
                color: #000;
                z-index: 112;
            }

            #spchi {
                color: #777;
                z-index: 110;
            }

            #spchta {
                color: #1155cc;
                cursor: pointer;
                font-size: 18px;
                font-weight: 500;
                pointer-events: auto;
                text-decoration: underline;
            }

            .two-lines.spcht, .three-lines.spcht, .four-lines.spcht {
                transition: top 0.218s ease-out;
            }

            .two-lines.spcht {
                top: -.6em;
            }

            .three-lines.spcht {
                top: -1.3em;
            }

            .four-lines.spcht {
                top: -1.7em;
            }

            .s2fp .five-lines.spcht {
                top: -2.5em;
            }

            .s2tb .five-lines.spcht {
                font-size: 24px;
                top: -1.7em;
                -webkit-transition: font-size 0.218s ease-out;
            }
        </style>
        <style>
            ._md {
                font-size: 13px;
            }
        </style>
        <style>
            .rc {
                position: relative;
            }

            .gl:visited {
                color: #666;
            }

            .action-menu, .action-menu-button, .action-menu-item, .action-menu-panel, .action-menu-toggled-item, .selected {
            }

            .clickable-dropdown-arrow, .clickable-dropdown-arrow:hover, .clickable-dropdown-arrow.selected, .clickable-dropdown-arrow.selected:hover {
                background-color: white;
                background-image: none;
                border: 0;
                border-radius: 0;
                box-shadow: 0 0 0 0;
                cursor: pointer;
                filter: none;
                height: 12px;
                min-width: 0;
                padding: 0;
                transition: none;
                -webkit-user-select: none;
                width: 13px;
            }

            .action-menu .mn-dwn-arw {
                border-color: #006621 transparent;
                margin-top: -4px;
                margin-left: 3px;
                left: 0;
            }

            .action-menu:hover .mn-dwn-arw {
                border-color: #00591E transparent;
            }

            .action-menu {
                display: inline;
                margin: 0 3px;
                position: relative;
                -webkit-user-select: none;
            }

            .action-menu-panel {
                left: 0;
                padding: 0;
                right: auto;
                top: 12px;
                visibility: hidden;
            }

            .action-menu-item, .action-menu-toggled-item {
                cursor: pointer;
                -webkit-user-select: none;
            }

                .action-menu-item:hover {
                    background-color: #eee;
                }

                .action-menu-button, .action-menu-item a.fl, .action-menu-toggled-item div {
                    color: #333;
                    display: block;
                    padding: 7px 18px;
                    text-decoration: none;
                    outline: 0;
                }

            ._VM {
                display: block;
                line-height: 20px;
                margin-top: 4px;
                padding: 0 90px 0 38px;
                position: relative;
                white-space: nowrap;
            }

            ._WM {
                position: absolute;
                right: 0;
                top: 1px;
            }

            ._XM {
                height: 28px;
                left: 0;
                margin: 4px 10px 0 0;
                position: absolute;
                top: 0;
            }

            ._YM {
                display: inline-block;
                max-width: 100%;
                overflow: hidden;
            }

            ._ZM {
                color: #222;
                font-weight: bold;
                overflow: hidden;
                text-overflow: ellipsis;
            }

            ._RM {
                margin-top: 4px;
            }

            .authorship_link:visited {
                color: #666;
            }

            ._TM {
                color: #666;
                display: table;
                white-space: nowrap;
                margin: 5px 0;
            }

            ._oT {
                display: table-cell;
                padding-left: 15px;
                vertical-align: top;
            }

            ._pT {
                display: table-cell;
            }

            ._UM {
                display: table-row;
                vertical-align: top;
            }

            ._qT {
                display: table-caption;
                caption-side: bottom;
            }

            ._SM {
                color: #999;
            }

            ._kn, ._kn a.fl {
            }

            ._bN {
                position: absolute;
            }

            ._ln {
                background-color: #fff;
                float: left;
                overflow: hidden;
                margin-top: 4px;
                position: relative;
            }

            ._aN {
                background-color: #000;
            }

            ._dN {
                border: none;
                bottom: 0;
                font-weight: bold;
                position: absolute;
                left: 0;
                text-align: right;
                text-decoration: none;
            }

            ._Bu {
                bottom: 0;
                font-size: 11px;
                font-weight: bold;
                padding: 1px 3px;
                position: absolute;
                right: 0;
                text-align: right;
                text-decoration: none;
            }

            ._cN {
                background-color: #000;
                opacity: .7;
                -webkit-opacity: .7;
            }

            ._FA {
                color: #fff;
            }

            ._Cu a.fl {
                font-size: 13px;
            }

            .aerhs_es_t {
                background: #fff;
                font: bold 10pt arial,sans-serif;
                padding-right: 6px;
                text-align: center;
            }

            .aerhs_hr {
                background-color: #eee;
                border: none;
                height: 1px;
                margin: 5px 15px -1px 15px;
                position: relative;
                top: -1em;
                z-index: -1;
            }

            .aerhs_rc {
                line-height: 1.24;
                padding-left: 5px;
                text-align: left;
            }

            .aerhs_attr {
                color: #777;
            }

            .aerhs_rl {
                text-decoration: none;
            }

                .aerhs_rl:focus {
                    outline: none;
                }

                .aerhs_rl:hover > table {
                    background: #f7f7f7;
                }

                .aerhs_rl:hover .aerhs_nm {
                    text-decoration: underline;
                }

            #aerhs.rhsvw {
                border: 1px solid #ebebeb;
                margin-bottom: 24px;
                padding: 0 15px 10px;
            }
        </style>
        <style>
            .vslru {
            }

            .rgsep {
                background-color: rgba(0,0,0,0.07);
                border-width: 0;
                color: rgba(0,0,0,0.07);
                height: 1px;
                margin: 0 -8px 16px -8px;
            }

            .addrlu {
                color: rgba(0,0,0,0.5);
                line-height: 18px;
            }

            .vslru > div.g {
                line-height: 18px;
            }

                .vslru > div.g cite {
                    font-size: 13px !important;
                }

            .vslru h3.r {
                line-height: normal !important;
            }

            .vslru.vso:before {
                border: 0 !important;
            }

            .f {
                color: rgba(0,0,0,0.5);
            }

            #ires .kv {
                height: 17px;
                line-height: 16px;
            }

            .osl {
                margin-top: 0px;
            }

            .rc .s {
                line-height: 18px;
            }

            .irg-title > a, .nrg-title, .nrg-title > a {
                color: #1e0fbe !important;
            }

                .irg-title > a, .nrg-title, .nrg-title > a, #brs > .med, .normal-header div.rg-header {
                    font-size: 18px !important;
                    height: 21px;
                    line-height: 18px;
                }

            .irg-title {
                padding-bottom: 5px;
            }

            .nrg-title {
                padding-bottom: 2px;
            }

                .nrg-title > a {
                    color: inherit;
                }

            #brs > .med, .normal-header div.rg-header {
                color: rgba(0,0,0,0.5);
            }

            .ac, .rcct {
                line-height: 18px !important;
            }

            li#newsbox div.vsc > div.gl {
                line-height: 18px !important;
            }

            #newsbox span.tl > a {
                font-size: 18px !important;
            }

            .nrg-footer, .irg-footer, li#lclbox > a.fl {
                font-size: 16px;
            }

            .nrg-footer {
                display: block;
                margin-top: 16px;
            }

            #newsbox, #imagebox_bigimages {
                margin-bottom: 16px;
            }

            #iur {
                padding-bottom: 16px;
            }

            .irg-title > span.bl {
                float: right;
                line-height: 18px;
            }

            .irg-title span.bl > span {
                vertical-align: middle;
            }

            #irl_r_a {
                color: rgba(0, 0, 0, 0.5);
            }

            #resultStats {
                color: rgba(0,0,0,0.5) !important;
            }

            #rcnt a:hover, #brs a:hover, #nycp a:hover {
                text-decoration: underline !important;
            }

            #rcnt .ab_dropdownitem a:hover, #rcnt [role=button]:hover, #rcnt .kno-fb-ctx > a:hover, #nycp a.ab_button:hover, #rcnt a.kpbb:hover {
                text-decoration: none !important;
            }

            .brs_col {
                font-size: 14px;
                line-height: 20px;
            }

            #brs > .med {
                height: auto;
                padding-bottom: 7px;
            }
        </style>
        <style>
            .lu_ddp {
                height: 36px;
                width: 30px;
            }

            .lu_ddic {
                border: 0;
                height: 23px;
                width: 23px;
            }

            .lu_ddim {
                display: inline-block;
                overflow: hidden;
            }

            .lu_dis {
                bottom: -20px;
                position: absolute;
                right: 20px;
            }

                .lu_dis a {
                    color: #878787 !important;
                    font-size: 11px !important;
                    font-weight: normal !important;
                }

                    .lu_dis a:hover {
                        text-decoration: underline;
                    }

            #luibli {
                display: inline-block;
                margin-right: 1px;
            }

            #luibr {
                float: right;
            }

            #luibbri {
                margin-top: 1px;
            }

            #luib .thumb {
                position: relative;
            }

                #luib .thumb .cptn {
                    background: rgb(0,0,0);
                    background: rgba(0,0,0,0.6);
                    bottom: 0;
                    color: #fff;
                    font-size: larger;
                    padding: 5px 10px;
                    position: absolute;
                    right: 0;
                }

            .lukpm {
                line-height: 0;
                margin: 0 -2px -2px 0;
                padding-top: 20px;
            }

            .lukpm-l {
                display: inline-block;
                line-height: normal;
                position: relative;
            }

            .lukpm-i {
                background: no-repeat center;
                background-size: cover;
                display: block;
                height: 96px;
                margin: 0 2px 2px 0;
            }

                .lukpm-i:after {
                    background: -webkit-linear-gradient(rgba(0,0,0,0),rgba(0,0,0,.6));
                    background: linear-gradient(rgba(0,0,0,0),rgba(0,0,0,.6));
                    bottom: 2px;
                    content: "";
                    left: 0;
                    position: absolute;
                    right: 2px;
                    top: 50%;
                }

            .lukpm-c {
                bottom: 6px;
                color: #FFF;
                font-size: 12px;
                font-weight: bold;
                left: 9px;
                position: absolute;
                right: 9px;
            }

            .lurpctr {
                margin: 16px 0 0;
                padding: 10px 0 0;
                width: 100%;
            }

            .lurpctrt {
                color: #000;
                font-weight: bolder;
                padding: 0 4px 8px 0;
            }

            .lurpctrtb {
                color: #000;
                font-size: 20px;
                padding: 0 4px 8px 0;
            }

            .lurp {
                display: inline-block;
                line-height: 1.1;
                margin-left: 16px;
                padding: 0;
                vertical-align: top;
                width: 72px;
            }

                .lurp img {
                    border: 1px solid #ebebeb;
                }

            .ellip.lurptl {
                display: block;
                margin-bottom: -1px;
                padding-bottom: 1px;
                white-space: normal;
            }

            #annot .so {
                color: #222;
                display: table-cell;
                vertical-align: middle;
                width: inherit;
            }

            #annot .fl {
                color: #222 !important;
            }

            #annot .soha {
                color: #12c !important;
            }

            .intrjus .so {
                margin: 0;
            }

            .luzb {
                color: white;
                display: inline-block;
                font-size: 10px;
                font-weight: bold;
                height: 30px;
                line-height: 30px;
                text-align: center;
                padding-left: 8px;
                padding-right: 8px;
                min-width: 33px;
            }

            .luzab {
                background-color: transparent;
                border-bottom: 1px solid #C7C7C7;
                display: inline-block;
                height: 29px;
                margin: 0 0 0 1px;
                min-width: 50px;
            }

            .luzat {
                display: inline-block;
                font-size: 10px;
                margin-top: -2px;
                padding-left: 8px;
                padding-right: 8px;
                vertical-align: top;
            }

            .luzar {
                display: inline-block;
                font-size: 15px;
            }

            .luzbp {
                background-color: transparent;
                border-left: 1px solid #C7C7C7;
                display: inline-block;
                height: 23px;
                margin-bottom: 1px;
                vertical-align: bottom;
            }

            .luzac {
                display: inline-block;
                height: 30px;
                line-height: 13px;
                text-align: center;
                vertical-align: bottom;
            }

            .vk_c a {
                text-decoration: none;
            }

            .vk_gn {
                color: #3d9400 !important;
            }

            .vk_rd {
                color: #dd4b39 !important;
            }

            .vk_dgy {
                color: #545454 !important;
            }

            .vk_gy {
                color: #878787 !important;
            }

            .vk_lgy {
                color: #bababa !important;
            }

            .vk_blgy {
                border-color: #bababa;
            }

            .vk_bk {
                color: #212121 !important;
            }

            .vk_fl a {
                color: #878787;
            }

                .vk_fl a:hover {
                    color: #12c;
                }

            .vk_ans {
                font-weight: lighter !important;
                margin-bottom: 5px;
            }

            .vk_ans {
                font-size: xx-large !important;
            }

                .vk_ans.vk_long {
                    font-size: 20px !important;
                }

            .vk_h {
                font-weight: lighter !important;
            }

            .vk_h {
                font-size: x-large !important;
            }

            .vk_sh, .vk_hs, .vk_med {
                font-weight: lighter !important;
            }

            .vk_sh {
                font-size: medium !important;
            }

            .vk_txt {
                font-weight: lighter !important;
            }

            .vk_txt {
                font-size: small !important;
            }

            .vk_lt {
                font-weight: lighter !important;
            }

            .vk_cdns {
                font-size: 13px !important;
            }

            .vk_bd {
                font-weight: bold !important;
            }

            .vk_c, .vk_cxp, #rhs .vk_rhsc {
                -webkit-box-shadow: 0 1px 4px rgba(0,0,0,0.2);
                box-shadow: 0 1px 4px rgba(0,0,0,0.2);
            }

            #rhs .vk_rhsc {
                border: none;
                margin-left: 2px;
            }

            .vk_c, .vk_cxp {
                background-color: #fff;
                position: relative;
            }

            .vkc_np {
                margin-left: -20px;
                margin-right: -20px;
            }

            .vkc_ntp {
                margin-top: -20px;
            }

            .vk_pl, .ts .vk_pl {
                padding-left: 20px;
            }

            .vk_pr, .ts .vk_pr {
                padding-right: 20px;
            }

            .vk_pt, .ts .vk_pt {
                padding-top: 20px;
            }

            li.vk_c, .vk_c, .vk_cxp {
                margin-left: -8px;
                margin-right: -35px;
            }

            li.vk_c, .vk_c, .vk_cxp, .vk_ic {
                padding: 20px 20px 24px;
            }

                .vk_c .vk_c, .vk_c .vk_cxp {
                    -webkit-border-radius: 0;
                    -webkit-box-shadow: none;
                    background-color: transparent;
                    border: 0;
                    box-shadow: none;
                    margin: 0;
                    padding: 0;
                    position: static;
                }

            .xpdopen.g-blk .g-blk.xpdxpnd .kp-blk.vk_c, .g-blk .g-blk .kp-blk.vk_c {
                border-top: 1px solid #ebebeb;
            }

            .g-blk .g-blk.xpdxpnd .kp-blk.vk_c {
                border-top: 0;
            }

            .g-blk .g-blk:first-child > .kp-blk.vk_c, .kp-blk.vk_c.hzn .kp-blk.vk_c {
                border-top: 0 !important;
            }

            .kp-blk .vk_arc {
                margin-top: 20px;
            }

            .kno-ec .kp-blk.vk_c {
                padding: 0;
            }

            .kp-blk.vk_c .kp-blk.vk_c:not(.hzn) {
                padding-left: 20px;
                padding-right: 20px;
            }

            .kno-ec .kp-blk.vk_c .kp-blk.vk_c:not(.hzn) {
                padding-left: 15px;
                padding-right: 15px;
            }

            .kp-blk.vk_c .kp-blk.vk_c, .kp-blk.vk_c.xpdopen .kp-blk.vk_c.xpdxpnd {
                padding-bottom: 10px;
                padding-top: 18px;
            }

                .kp-blk.vk_c .kp-blk.vk_c.xpdxpnd {
                    padding-bottom: 0;
                    padding-top: 0;
                }

            .kno-ec .kp-blk.vk_c, .knop .kp-blk.vk_c, .kp-blk.vk_c .kp-blk.vk_c {
                -webkit-box-shadow: 0 0 0;
            }

            .kno-ec .kp-blk.vk_c, .knop .kp-blk.vk_c, .kp-blk.vk_c .kp-blk.vk_c {
                margin: 0;
            }

            .kno-ec .g-blk, .kno-ec .g-blk .g-blk {
                margin: 0 -15px;
            }

            .g-blk .g-blk {
                margin: 0 -20px;
            }

            .vk_cxp {
                padding-top: 30px;
                padding-bottom: 34px;
            }

            .vk_c_cxp {
                margin-top: 10px;
                margin-bottom: 10px;
            }

            .vk_gbb {
                border-bottom: 1px solid #eee;
            }

            .vk_gbr {
                border-right: 1px solid #eee;
            }

            .vk_gbt {
                border-top: 1px solid #eee;
            }

            .vk_cf {
                margin: 0 -20px;
                padding: 16px 20px;
            }

                .vk_cf a, .vk_cf a:link, a.vk_cf, a.vk_cf:link {
                    color: #878787;
                }

                    .vk_cf a:hover, a.vk_cf:hover {
                        color: #12c;
                    }

            .vk_slic {
                display: inline-block;
                margin-top: -3px;
                margin-right: 16px;
                position: relative;
                height: 24px;
                width: 24px;
                vertical-align: middle;
            }

            .vk_sli, .vk_slih {
                border: none;
                position: absolute;
                top: 0;
                left: 0;
                height: 24px;
                width: 24px;
            }

            a:hover .vk_sli, .vk_slih {
                display: none;
            }

            a:hover .vk_slih, .vk_sli {
                display: inline-block;
            }

            .vk_cba {
                padding: 10px;
                margin-top: 10px;
                margin-bottom: -10px;
                font-size: 14px !important;
            }

            .vk_spc {
                height: 16px;
                width: 100%;
            }

            .vk_ra {
                -webkit-transform: rotate(90deg);
            }

            .vk_arc {
                border-top: 1px solid #ebebeb;
                cursor: pointer;
                height: 0px;
                margin-bottom: -23px;
                overflow: hidden;
                padding: 20px 0;
                text-align: center;
            }

            .vk_ard {
                top: -11px;
            }

            .vk_aru {
                bottom: -6px;
            }

            .vk_ard, .vk_aru {
                background-color: #e5e5e5;
                margin-left: auto;
                margin-right: auto;
                position: relative;
            }

            .vk_ard, .vk_aru {
                height: 6px;
                width: 64px;
            }

                .vk_ard:after, .vk_ard:before, .vk_aru:after, .vk_aru:before {
                    content: ' ';
                    height: 0;
                    left: 0;
                    position: absolute;
                    width: 0;
                }

                .vk_ard:after, .vk_ard:before, .vk_aru:after, .vk_aru:before {
                    border-left: 32px solid rgba(229,229,229,0);
                    border-right: 32px solid rgba(229,229,229,0);
                }

                .vk_ard:before {
                    border-top: 16px solid #e5e5e5;
                    top: 6px;
                }

                .vk_aru:before {
                    border-bottom: 16px solid #e5e5e5;
                    bottom: 6px;
                }

                .vk_ard:after {
                    top: 0;
                }

                .vk_ard:after {
                    border-top: 16px solid #fff;
                }

                .vk_aru:after {
                    bottom: 0;
                }

                .vk_aru:after {
                    border-bottom: 16px solid #fff;
                }

            .vk_bk.vk_ard, .vk_bk.vk_aru {
                background-color: #212121;
            }

                .vk_bk.vk_ard:before {
                    border-top-color: #212121;
                }

                .vk_bk.vk_aru:before {
                    border-bottom-color: #212121;
                }

            .vk_ftr {
                font-size: 11px !important;
                padding: 6px 8px;
            }

            #center_col .vk_ftr {
                margin: 0 -35px 0 -8px;
                padding: 6px 20px 0;
            }

            #rhs .vk_ftr {
                margin-left: 2px;
                padding-bottom: 5px;
                padding-top: 5px;
            }

            .vk_ftr, .vk_ftr a {
                color: #878787 !important;
                text-decoration: none;
            }

                .vk_ftr a:hover {
                    text-decoration: underline;
                }

            .leg_calc.vk_c {
                padding-top: 24px;
                padding-bottom: 20px;
            }

            .leg_calc .vk_ans {
                margin-bottom: 0;
            }

            .leg_calc .vk_gy {
                margin-bottom: 5px;
            }

            .vk_tblspacer {
                background-color: #ebebeb;
                height: 1px;
            }

            .vk_tbl {
                border-collapse: collapse;
            }

                .vk_tbl td {
                    padding: 0;
                }

            .xpdclps, .xpdxpnd {
                overflow: hidden;
            }

            .xpdclps, .xpdxpnd {
                -webkit-transition: max-height 0.3s;
            }

            .xpdxpnd, .xpdopen .xpdclps, .xpdopen .xpdxpnd.xpdnoxpnd {
                max-height: 0;
            }

            .xpdopen .xpdxpnd {
                max-height: none;
            }

            .xpdopen .xpdbox .xpdxpnd, .xpdopen .xpdbox.xpdopen .xpdclps {
                max-height: 0;
            }

            .xpdopen .xpdbox.xpdopen .xpdxpnd, .xpdopen .xpdbox .xpdclps {
                max-height: none;
            }

            .xpdclose .xpdxpnd-nt, .xpdopen .xpdclps-nt {
                display: none;
            }

            #tads h3, #tadsb h3, #mbEnd h3 {
                font-size: 18px !important;
            }

            #tads > ol > li:first-child, #tadsb > ol > li:first-child {
                padding-top: 0;
            }

            #mbEnd h2 {
                color: #767676;
            }

            #tads > ol > li, #tadsb > ol > li {
                padding: 23px 0 0;
            }

            #center_col ._kb {
                color: #373737;
            }

            #rhs ._kb {
                color: #545454;
            }

            ._kb a {
                text-decoration: none;
            }

                ._kb a:hover {
                    text-decoration: underline;
                }

            #center_col ._kb a {
                color: #1e0fbe;
            }

                #center_col ._kb a:visited, #center_col ._kb a._nD, #rhs ._kb a:visited, #rhs ._kb a._nD {
                    color: #609;
                }

                #center_col ._kb a:active, #rhs ._kb a:active {
                    color: #dd4b39;
                }

            #center_col ._kb ._ad, #center_col ._kb ._ad a, #rhs ._kb ._ad, #rhs ._kb ._ad a {
                color: #666;
            }

            ._oC > li {
                display: inline;
                margin: 0;
                padding: 0;
            }

                ._oC > li + li:before {
                    content: ' - ';
                }

            ._nb {
                display: inline-block;
                padding: 0 12px;
                text-align: center;
                white-space: nowrap;
                border: 1px solid #dcdcdc;
                border-radius: 2px;
                background: #f5f5f5;
                background-image: -webkit-gradient(linear,left top,left bottom,from(#f5f5f5),to(#f1f1f1));
                background-image: -webkit-linear-gradient(top,#f5f5f5,#f1f1f1);
                background-image: linear-gradient(#f5f5f5,#f1f1f1);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f5f5f5',EndColorStr='#f1f1f1');
            }

                ._nb:active, ._nb:hover {
                    border-color: #c6c6c6;
                    background: #f8f8f8;
                    background-image: -webkit-gradient(linear,left top,left bottom,from(#f8f8f8),to(#f1f1f1));
                    background-image: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);
                    background-image: linear-gradient(#f8f8f8,#f1f1f1);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f8f8f8',EndColorStr='#f1f1f1');
                }

                ._nb:hover {
                    box-shadow: 0px 1px 1px rgba(0,0,0,0.1);
                    -webkit-box-shadow: 0px 1px 1px rgba(0,0,0,0.1);
                }

                    ._nb:active, ._nb:hover:active, ._nb._Ru {
                        box-shadow: inset 0px 1px 2px rgba(0,0,0,0.1);
                        -webkit-box-shadow: inset 0px 1px 2px rgba(0,0,0,0.1);
                    }

            ._vO {
                line-height: 27px;
            }

            ._nb._iB {
                line-height: 17px;
            }

            ._xn {
                padding: 0 2px;
                line-height: 31px;
                min-width: 66px;
            }

            ._nb, ._Uf {
                color: #333;
                font-size: 11px;
                font-weight: bold;
            }

            ._Uf {
                opacity: 1;
            }

            #rhs ._nb {
                background-color: #f5f5f5;
                background-image: -webkit-gradient(linear,left top,left bottom,from(#f5f5f5),to(#f1f1f1));
                background-image: -webkit-linear-gradient(top,#f5f5f5,#f1f1f1);
                background-image: linear-gradient(#f5f5f5,#f1f1f1);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f5f5f5',EndColorStr='#f1f1f1');
                border-color: #dcdcdc;
            }

                #rhs ._nb:hover {
                    background-color: #f8f8f8;
                    background-image: -webkit-gradient(linear,left top,left bottom,from(#f8f8f8),to(#f1f1f1));
                    background-image: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);
                    background-image: linear-gradient(#f8f8f8,#f1f1f1);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f8f8f8',EndColorStr='#f1f1f1');
                    border-color: #c6c6c6;
                    color: #222;
                }

                #rhs ._nb:active {
                    background-color: #f6f6f6;
                    background-image: -webkit-gradient(linear,left top,left bottom,from(#f6f6f6),to(#f1f1f1));
                    background-image: -webkit-linear-gradient(top,#f6f6f6,#f1f1f1);
                    background-image: linear-gradient(#f6f6f6,#f1f1f1);
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f6f6f6',EndColorStr='#f1f1f1');
                }

            ._nb._Ru, ._nb._Ru ._Uf, ._nb:active, ._nb:hover, ._nb:active ._Uf, ._nb:hover ._Uf {
                color: #212121;
            }

            ._Xu {
                display: inline-block;
                position: relative;
                vertical-align: middle;
                width: 18px;
                height: 18px;
                background-repeat: no-repeat;
                margin: 0 -2px;
            }

                ._Xu + ._Uf {
                    margin-left: 8px;
                    margin-right: 2px;
                }

            ._Ff {
                background-color: #fff;
                border: 1px solid #d9d9d9;
                border-top-color: #c0c0c0;
                box-sizing: content-box;
                -webkit-box-sizing: content-box;
                color: #373737;
                display: inline-block;
                height: 19px;
                line-height: 19px;
                margin: 0;
                font-size: inherit;
            }

                ._Ff:hover {
                    border-color: #b9b9b9;
                    border-top-color: #a0a0a0;
                    box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
                    -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
                }

                ._Ff:focus {
                    border-color: #4d90fe;
                    box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
                    -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
                    outline: none;
                }

                ._Ff.ads-text-field-hint {
                    color: #999;
                }

            #center_col ._vB {
                margin-left: -8px;
                margin-right: -8px;
            }

            ._SO {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }

            .ads-visurl {
                white-space: nowrap;
                color: #006621;
            }

            #rhs ._kb ._Vf > span:first-child {
                background-color: #edb802;
                border-radius: 2px;
                color: #fff;
                display: inline-block;
                font-size: 13px !important;
                line-height: 15px;
                padding: 0 3px 0px;
                vertical-align: baseline;
            }

            ._kb ol, .ads-visurl, .ads-visurl cite, .ads-ad h3, .ads-ad:not(:first-child):before {
                padding-bottom: 0 !important;
                padding-top: 0 !important;
                margin-bottom: 0 !important;
                margin-top: 0 !important;
            }

            .ads-ad {
                line-height: 18px !important;
            }

            #rhs .ads-ad {
                line-height: 18px !important;
            }

            .ads-ad {
                padding-top: 11px !important;
                padding-bottom: 11px !important;
            }

            .ads-ad {
                margin-top: 0 !important;
                margin-right: 0 !important;
            }

                .ads-ad:not(:first-child):before {
                    margin-top: -11px !important;
                    padding-bottom: 11px !important;
                }

            ._Zu, ._dv ._nb {
                margin-top: 3px !important;
            }

            ._uN {
                min-height: 36px;
                max-height: 36px;
            }

            ._vN {
                max-height: 54px;
            }

            #rcnt #bottomads ._kb {
                margin-bottom: -12px !important;
                margin-top: -10px !important;
                padding-top: 0 !important;
            }

            #tads:not(:empty):after, #bottomads:not(:empty):after {
                background-color: rgba(0,0,0,0.07);
            }

            #tads:not(:empty):after, #bottomads:not(:empty):after {
                content: '';
                display: block;
                height: 1px;
            }

            #tads:not(:empty):after {
                margin-top: 2px;
                margin-right: 0px;
            }

            #bottomads:not(:empty):after {
                margin: 16px 0;
            }

            #tads {
                margin-top: -7px !important;
            }

            #tads {
                padding-bottom: 4px !important;
                margin-bottom: 2px !important;
            }

            #bottomads ._kb {
                padding-top: 5px !important;
                padding-bottom: 5px !important;
                margin-top: -6px !important;
                margin-bottom: 17px !important;
            }

            #rhs ._Vf {
                padding-top: 0 !important;
            }

            ._Lf, .comm-unit .wtali, .commercial-unit .wtali {
                background: url(/assets/images/google/nav_logo170_hr.png) no-repeat 0 -106px !important;
                left: 1px !important;
                top: 3px !important;
                background-size: 167px !important;
            }

            #center_col ._kb {
                position: relative;
                background-color: #fff;
                margin: 0px 0px 6px 0px;
                padding-top: 2px;
                padding-bottom: 0px;
            }

            #center_col .ads-ad {
                padding-left: 8px;
                padding-right: 8px;
            }

            #rhs ._kb {
                margin: 5px 0px 32px 16px;
                padding: 2px 0px 0px 0px;
            }

            ._Wu {
                background-color: #edb802;
                border-radius: 2px;
                color: #fff;
                display: inline-block;
                font-size: 13px;
                line-height: 15px;
                margin-right: 7px;
                padding: 0 3px 0px;
                vertical-align: baseline;
            }

            #center_col ._Vf > b, #center_col ._Vf span b {
                color: #444;
            }

            #center_col ._Vf {
                color: #666;
                font-weight: normal;
                font-size: 13px;
                margin: 12px -17px 0 0;
                padding: 0;
            }

            ._Vf span + span {
                margin-left: 3px;
            }

            #rhs ._Vf {
                padding: 1px 0 4px;
                font-size: 13px;
                text-align: left;
            }

            #rhs ._Vf {
                margin: 0 0 -4px;
            }

            #center_col ._Vf {
                float: right;
                z-index: 2;
                position: relative;
            }

            ._Ac {
                margin-bottom: 0px;
                margin-top: 3px;
            }

                ._Ac td div {
                    margin-top: 2px;
                }

                    ._Ac td div:first-child {
                        margin-top: 0;
                    }

                    ._Ac td div:first-child {
                        margin-top: -2px;
                    }

                ._Ac td {
                    vertical-align: top;
                }

                ._Ac .ads-slk-multiline-cell {
                    overflow: hidden;
                    padding-left: 12px;
                    text-indent: -10px;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                }

                ._Ac ._er {
                    padding-left: 23px;
                    width: 50%;
                }

                ._Ac ._wv {
                    padding-left: 12px;
                    width: 50%;
                }

            ._Ac {
                max-width: 541px;
                table-layout: fixed;
            }

                ._Ac td div {
                    width: 238px;
                }

            ._YO {
                max-width: 541px;
            }

            ._En {
                border-collapse: separate;
            }

            ._En {
                margin-left: 22px;
            }

                ._En td {
                    padding-right: 6px;
                    padding-top: 3px;
                    vertical-align: top;
                }

            ._dr {
                border: 1px solid transparent;
                border-radius: 2px;
                margin-top: 2px;
                padding: 7px 0 3px 5px;
                width: 250px;
            }

                ._dr:first-child {
                    padding-top: 3px;
                }

            ._rC {
                display: inline;
                font-size: 18px;
                font-weight: normal;
                margin: 0;
            }

            ._qC {
                max-width: 42em;
            }
        </style>
        <style>
            .wtaal, .wtalb, .wtalbal, .wtalbar, .wtall, .wtalm {
            }

            a.wtall, .f a.wtall, .f a.wtaal, .f a.wtalm {
                color: #12C;
            }

            a.wtaal {
                white-space: normal;
            }

            .wtalbal, .wtalbar {
                background: url(/assets/images/google/nav_logo170.png) no-repeat;
            }

            .wtalb {
                background-color: #fff;
                box-shadow: 0 4px 16px rgba(0,0,0,0.2);
                -webkit-box-shadow: 0 4px 16px rgba(0,0,0,0.2);
                display: block;
                padding: 16px;
                position: absolute;
                visibility: hidden;
                z-index: 120;
                outline: 1px solid #ccc;
            }

            .wtalbal {
                background-position: 0 -212px;
            }

            .wtalbar {
                background-position: -50px -212px;
            }

            .wtalbal, .wtalbar {
                height: 11px;
                position: absolute;
                top: -11px;
                width: 17px;
            }

            .wtalbal {
                right: 13px;
            }

            .wtalbar {
                right: 0px;
            }
        </style>
        <style>
            .kno-fb-ctx {
            }

            .kno-fb-link {
            }

            ._Uh {
                color: #1e0fbe !important;
            }

            .kno-ec .vk_ans, .kp-blk .vk_ans {
                font-size: xx-large;
            }

            .kno-sh {
                color: #222;
                font-size: 18px;
                position: relative;
            }

            .krable {
                display: none;
            }

            .kno-fb-on span.krable {
                display: inline;
            }

            .kno-fb-on div.krable {
                display: block;
            }

            .kno-fb-on td.krable {
                display: table-cell;
            }

            .kno-fb-on .kno-fb-ctx a.fl {
                color: #222;
            }

            .kno-fb-ctx a {
                text-decoration: none;
            }

            .kno-fb-link {
                font-size: small;
                font-weight: bold;
                margin-right: 6px;
            }

            a.kno-fb-link {
                text-decoration: none;
            }

            span.kno-fb-link {
                color: #777;
            }
        </style>
        <style>
            .kno-ecr-pt {
            }

            .kno-ecr-pt {
                color: #000;
                font-size: 30px;
                font-weight: normal;
            }
        </style>
        <style>
            .kno-fb-hover, .kno-fb-hover .kno-sh {
                background-color: #f0f0f0;
                opacity: 0.8;
            }

            a.kno-fb-link:hover {
                text-decoration: underline;
            }

            ._uf {
                clear: both;
                margin-top: 24px;
            }
        </style>
        <style>
            .hdtbg #hdtbSum {
                background: #f1f1f1;
            }

            .rl_feature {
                visibility: hidden;
            }

            .klbar {
                border-bottom: 1px solid #e5e5e5;
                color: #ccc;
                font-family: helvetica,arial,sans-serif !important;
                position: relative;
            }

            #lx #klap {
                color: #fff;
            }

            .kloptd {
                color: #555;
                cursor: pointer;
                display: block;
                line-height: 23px;
                padding: 3px 18px;
                padding-left: 25px;
                white-space: nowrap;
            }

                .kloptd:hover {
                    background: #eee;
                }

                .kloptd:visited {
                    color: #555;
                }

            .kloptd-sl, .kloptd-sl:hover {
                cursor: default;
                background-position: left center;
                background-repeat: no-repeat;
            }

            .klbar a {
                text-decoration: none;
            }

            .appleft {
                background-color: #202020;
                float: left;
                height: 100%;
                position: relative;
                width: 102px;
            }

            .klcar {
                font-size: 12px;
                list-style: none;
                margin-left: 136px;
                position: relative;
                width: 11500px;
            }

            .klitem {
                border-bottom: 0px solid #dd4b39;
                display: inline-block;
                float: left;
                list-style: none;
                margin-right: 4px;
                -webkit-transition: background .15s,border .15s;
                transition: background .15s,border .15s,padding .15s;
                padding-bottom: 6px;
                position: relative;
            }

                .klitem.selected {
                    background: #000;
                    cursor: default;
                    border-bottom: 6px solid #dd4b39;
                    padding-bottom: 0;
                }

            .lxcar.reselectable .klitem.selected {
                cursor: pointer;
            }

            .klitem:hover {
                background: #000;
            }

            .klitem.klactive {
                background: #000;
            }

            .klic {
                background: #fff;
                margin-bottom: 6px;
                overflow: hidden;
            }

            .klbadge {
                left: 2px;
                position: absolute;
                top: -2px;
                z-index: 1;
            }

            .abspos {
                position: absolute;
            }

            .klcfg {
                right: 20px;
                position: absolute;
                top: 9px;
                z-index: 2;
            }

            .kltat, .klmeta, .klstar, .klfact {
                font-weight: normal;
                margin-left: 4px;
                text-align: left;
            }

            .kltat, .klfact {
                font-size: 13px;
                color: #fff;
                text-shadow: 0 1px 0 #000;
                overflow: hidden;
                padding-top: 2px;
            }

            .klmeta {
                color: #999;
                font-size: 11px;
                padding-top: 2px;
            }

            .klhlmeta {
                color: #dd4b39;
            }

            .kltra {
                -webkit-transition: all 0.5s ease-in-out;
                transition: all 0.5s ease-in-out;
            }

            #klcls {
                background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAwCAYAAAALiLqjAAABbElEQVRYw+2WQYqDQBBFcwSPIrjOdcQTuBFM0IVLD+IiOYI36Caz8ASSbUCcbacq0wFHqk1ZjjCLFn4Q/fxHuqraPvR9b/bU4fWz0+UB/xwQx3EIOoMCVwC+A13RKwG0IAPSFMSGa+tpVwO6rjumaXqnINPwLMse6F0NMMa04ziaPM+/p5BpOL5DD3olgACkCMg8XKFX1EUOCCuc3aYYMAzDrSgK8wbgPT5bCmcDcM2TJPnC4LIsX8J7+2wbgCooVXjpoAWOgiouhDVo84I6Cr++TauqOjZNc6e6ZQqp6/qBXtGgmZ+LbMU3xHpEgxaCTkutaCEX9PoPzjbA7scWfy7ygH0AURSFoDPIuVXgO9AVvRJACzIgTUFsuLaeVgLAAEVBZuHK9S8/1oCCcMPZRSYgrPBVXTSDsMIlAD0B6D8DEGuuuBBukX+t+VJ3SdqULCgXwh00tTBoasug4VZxYmwVF9FW4bdrfy5i6wlQ63FElDbPjgAAAABJRU5ErkJggg==);
                display: block;
                height: 24px;
                position: absolute;
                right: 0;
                top: -1px;
                width: 24px;
            }

                #klcls:hover {
                    background-position: 0 -24px;
                    cursor: pointer;
                }

            .lxhdrmsg, .lxhdrtxt, .lxhdrbox {
                color: #eee;
                font-size: 18px;
            }

            .abupsub {
                color: #999;
                font-size: 13px;
                padding-left: 8px;
            }

            #appbar #lx.klbar #resultStats {
                color: #ddd;
                margin-left: 0;
                position: relative;
                top: 5px;
                white-space: normal;
            }

            #lx.klbar #resultStats nobr {
                display: block;
            }

            #lxhdr {
                margin-left: 136px;
            }

            #klap .lxhdrtxt:hover {
                border-bottom: 1px solid #fff;
            }

            #klap.selected .lxhdrtxt:hover {
                border: none;
                cursor: default;
            }

            .lxbarr, #klap.selected .lxbarr {
                display: none;
            }

            #klap .lxbarr {
                display: block;
            }

            #lxnumres {
                color: #878787;
                float: left;
                font-family: arial,helvetica,sans-serif;
                font-size: 12px;
                line-height: 12px;
                padding-top: 7px;
                margin-left: 8px;
            }

            #lx_ctls {
                display: table;
                margin-top: 6px;
                float: right;
                font-size: 0;
                padding-right: 28px;
                position: relative;
                -webkit-transform: translate3d(0,0,0);
                transform: translate3d(0,0,0);
                z-index: 3;
            }

            .lx_ctl {
                display: table-cell;
                padding-left: 10px;
            }

            .lx_dk .lx_ctl .ksb {
                background: #222;
                background-image: -webkit-gradient(linear,left top,left bottom,from(#555),to(#444));
                background-image: -webkit-linear-gradient(top,#555,#444);
                background-image: linear-gradient(top,#555,#444);
                -webkit-box-shadow: 0 1px 0 0 #222,inset 0 1px 0 0 rgba(254,255,254,0.09);
                box-shadow: 0 1px 0 0 #222,inset 0 1px 0 0 rgba(254,255,254,0.09);
                color: #ddd;
                border: none;
                border-radius: 2px;
                overflow: hidden;
            }

            .lx_dk .lx_ctl .ab_button, .kxctli .ab_button {
                cursor: pointer !important;
                -webkit-transition: none;
                transition: none;
            }

            .lx_dk .lx_ctl .ksb:hover {
                background-image: -webkit-linear-gradient(top,#666,#555);
                background-image: linear-gradient(top,#666,#555);
                -webkit-box-shadow: 0 1px 0 0 #111,inset 0 1px 0 0 rgba(254,255,254,0.09);
                box-shadow: 0 1px 0 0 #111,inset 0 1px 0 0 rgba(254,255,254,0.09);
                color: #eee;
            }

            .lx_dk .lx_ctl .ab_button:hover {
                border: none;
            }

            .lx_dk .lx_ctl .ksb:active, .lx_dk .lx_ctl .ksb.selected, .kxctli .ksb.klopti-sl, .kxctli .ksb:active {
                background-image: -webkit-linear-gradient(top,#3F3F3F,#606060);
                background-image: linear-gradient(top,#3F3F3F,#606060);
                background-image: -webkit-gradient(linear,left top,left bottom,from(#3F3F3F),to(#606060));
                -webkit-box-shadow: 0 1px 0 0 rgba(0,0,0,0.90),inset 0 0 0 1px rgba(255,255,255,0.06);
                box-shadow: 0 1px 0 0 rgba(0,0,0,0.90),inset 0 0 0 1px rgba(255,255,255,0.06);
                color: #eee !important;
            }

            .lx_dk .lx_ctl .ksb:focus {
                -webkit-box-shadow: 0 0 0 1px #4d90fe,inset 0 0 0 1px rgba(255,255,255,0.06);
                box-shadow: 0 0 0 1px #4d90fe,inset 0 0 0 1px rgba(255,255,255,0.06);
            }

            .lx_dk .lx_ctl .ksb:hover .kxctl-dd-arrow {
                border-top-color: #eee;
            }

            .lx_dk .lx_ctl .ksb.left {
                -webkit-border-radius: 2px 0 0 2px;
                border-radius: 2px 0 0 2px;
            }

            .lx_dk .lx_ctl .ksb.right {
                -webkit-border-radius: 0 2px 2px 0;
                border-radius: 0 2px 2px 0;
                margin-left: -1px;
            }

            .kxctl-dd {
                background-color: #fff;
                border: 1px solid #cbc8b9;
                -webkit-box-shadow: 0 1.5px 1px 0 rgba(130,130,130,0.5);
                box-shadow: 0 1.5px 1px 0 rgba(130,130,130,0.5);
                color: #555;
                font-family: arial,helvetica,sans-serif;
                font-size: 13px;
                padding: 5px 0;
                position: absolute;
                right: 0;
                top: 100%;
            }

            .kxctl-dd-arrow {
                border-color: #777 transparent;
                border-style: solid;
                border-top-color: #ddd;
                border-width: 4px 4px 0 4px;
                height: 0;
                position: absolute;
                right: 11px;
                top: 12px;
                width: 0;
            }

            .lxhdrbox .kxctl-dd-arrow {
                margin-left: 7px;
                position: relative;
                right: auto;
            }

            .lx_lt .kxctl-dd-arrow {
                border-top-color: #777;
            }

            .lxfb-mb-dropdown {
                border-color: #777 transparent;
                border-style: solid;
                border-width: 4px 4px 0 4px;
                display: inline !important;
                height: 0;
                position: absolute !important;
                top: 12px;
                width: 0;
            }

            .lxfb-mb-caption {
                padding-right: 8px;
            }

            .kxctl-dd a:link {
                color: #555;
            }

            .lxcar {
                font-size: 12px;
                list-style: none;
                margin: 0;
                padding: 0;
                position: relative;
                -webkit-transition-property: left;
                margin-left: 136px;
                width: 11500px;
            }

            .lx_imap {
                -webkit-transition: 250ms ease-in-out opacity;
                position: absolute;
                z-index: 2;
            }

            #lx .klitem {
                height: 178px;
                width: 115px;
            }

            #lx .klitem {
                border-top: 0;
                border-right: 0;
                border-left: 0;
                -webkit-transition: background .15s,border .15s;
                transition: background .15s,border .15s,padding .15s;
            }

            #lx .klic {
                margin: 0;
            }

            #lx .kltat, #lx .kllmeta {
                margin-top: 2px;
                margin-left: 8px;
                margin-right: 2px;
                width: auto;
            }

            #lx .kltat {
                font-weight: 300;
                margin-bottom: 2px;
            }

            #lx .kllmeta {
                color: #878787;
                display: block;
                font-size: 11px;
                font-weight: 400;
                line-height: 14px;
                padding-bottom: 2px;
            }

            .klzc {
                margin-bottom: 5px;
                overflow: hidden;
                position: relative;
            }

            .klzcr {
                background: rgba(255,255,255,.85);
                border-top: 1px solid rgba(255,255,255,.7);
                bottom: 0;
                position: absolute;
                width: 100%;
            }

            #lx .klzcr {
                border-top: none;
                background: linear-gradient(to bottom,rgba(34,34,34,.9),#333);
                background: -webkit-linear-gradient(top,rgba(34,34,34,.9),#333);
                height: 30px;
                padding: 3px 8px;
            }

            .klzcr div:first-child {
                height: 16px;
            }

            .klzcr .star-s {
                background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAANCAYAAACZ3F9/AAAAk0lEQVQYlZ3PQRHCMBAFUCRUQiVUQiVwefc6KE6KA5BQJ0goDloH4ZIwoZPQgZ3ZQ5J9mb+nEMLpn64WNrT7+68QZwRcfoX3COcqRF/oLcJQek9wwJoNHvX4jooWjwOwoCvuiKmCbmg+dtzBrgKHNFOD12w433s+gs84OMXzmOFy1BhzRV+Iv6S4JdinX/eFBm0OX4a8+KDoJ6m+AAAAAElFTkSuQmCC);
            }

            .klzcr .ng {
                font-family: arial !important;
                font-size: 14px;
            }

            .klzcr .vk_lt.vk_gy {
                color: #ccc !important;
                font-family: arial !important;
                font-size: 11px !important;
            }

            .klrevc {
                height: 0;
            }

            .klratc {
                height: 28px;
                width: 35px;
            }

            .klreview {
                border-left: 1px solid rgba(255,255,255,.8);
                color: #222;
                font-family: HelveticaNeue,Arial,sans-serif;
                font-size: 11px;
                height: 14px;
                margin-left: 35px;
                padding: 9px 4px 5px;
                padding-right: 2px;
                overflow: hidden;
                text-overflow: ellipsis;
                text-shadow: 0 1px #fff;
                white-space: nowrap;
            }

                .klreview.klnzreview {
                    border: 0;
                    margin-left: 3px;
                }

            .klrating {
                border-right: 1px solid rgba(0,0,0,.1);
                color: #fff;
                font-family: HelveticaNeue,Arial,sans-serif;
                font-size: 17px;
                height: 20px;
                padding: 4px 7px;
                text-align: center;
                text-shadow: 0 1px #fff;
                width: 20px;
            }

            .klzagat {
                color: #89001a;
            }

            .kluser {
                color: #000;
            }

            .kltooltip {
                display: none;
            }

            #lxnores {
                color: #999;
                font-family: arial;
                font-size: 13px;
                height: 175px;
                padding-top: 10px;
                padding-left: 136px;
                position: relative;
            }

                #lxnores > a {
                    color: #fff;
                    cursor: pointer;
                }

                    #lxnores > a:active {
                        color: #dd4b39;
                    }

            #lxhdr b {
                font-weight: 100;
            }

            #lxshow_filters .lxfb-mb-dropdown {
                border-color: #fff transparent;
            }

            @media screen and (max-width:1116px) {
                #lxrmctr {
                    width: 206px;
                }
            }

            @media screen and (min-width:1116px) and (max-width:1182px) {
                #lxrmctr {
                    width: 242px;
                }
            }

            @media screen and (min-width:1182px) and (max-width:1248px) {
                #lxrmctr {
                    width: 278px;
                }
            }

            @media screen and (min-width:1248px) and (max-width:1314px) {
                #lxrmctr {
                    width: 314px;
                }
            }

            @media screen and (min-width:1314px) and (max-width:1380px) {
                #lxrmctr {
                    width: 350px;
                }
            }

            @media screen and (min-width:1380px) {
                #lxrmctr {
                    width: 386px;
                }
            }

            #lxrmctr #imap_clickthrough {
                background: rgba(0,0,0,.65);
                bottom: 0;
                color: #fff;
                display: block;
                padding: 6px 10px;
                position: absolute;
                right: 0;
                z-index: 101;
            }

            #lx .klnav {
                background: rgba(255,255,255,.8);
                height: 72px;
                position: absolute;
                width: 36px;
                z-index: 5;
            }

            #appbar #lx .klnav:hover {
                background: rgba(255,255,255,.9);
            }

            .klarrl, .klarrr {
                background-repeat: no-repeat;
                bottom: 0;
                display: block;
                height: 20px;
                margin: auto 0;
                position: absolute;
                top: 0;
                width: 12px;
            }

            .klarrl, .klarrr {
                background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAuCAYAAAAcEfjaAAABV0lEQVRIx+2VsW7CQBBEDwTpIkXICMuyJdtfQsGXQUVFlSpVmjTESOn4BAoXLigsueAvaM2MBAht7g6v06ZYwNK8893ezGLatjV5ni9QO2PMC599ZdI0nWdZdgbQ4vsH0NgLQLSn+FZ4/gY0cgJBELxCdHiEUF+AhlaAH9jWG0SleNOnDbr/iON4AlEloA9AAyvAiqIogPAooHcnwIJghqrFmTZOgJUkSQRRI6C1E7huL8GbTmJ7Ky2w/PuWVIcOw3Daua2qi1NZQ20+i723XnurA/QQ0aJTRJ8J/oEuAFvNqcjWPwV4ibzM66Weeck+8YhTUNhm7xIPaUAhPtCoVjGtLdxbMgK/zsCwMDRi5YrhsnaJcRQrHzkNrW1l0MXKNQeCy95rsXLDUeNK3EqsfOIQ8/0DLVWAeku9Du1rK6ehE1BfnNoavcwn7L3tZO9eARIRLW4RvQA0+6DNwTHW6QAAAABJRU5ErkJggg==);
            }

            .klarrl {
                background-position: 0 -26px;
                left: 8px;
            }

            .klarrr {
                background-position: 0 0;
                right: 8px;
            }

            #kappbar {
                background: #222;
                position: relative;
            }

            .klnav, .rl_nav {
                cursor: pointer;
                height: 72px;
                position: absolute;
                width: 36px;
                z-index: 1;
            }

            .klnav {
                background: rgba(255,255,255,.8);
                -webkit-transition: background 0.15s,opacity 0.5s;
                transition: background 0.15s,opacity 0.5s;
            }

            .rl_nav {
                background: #e5e5e5;
                bottom: 0;
                margin-bottom: auto;
                margin-top: auto;
                opacity: 0.8;
                top: 0;
            }

                .rl_nav.rl_fades {
                    -webkit-transition: opacity 0.5s;
                    transition: opacity 0.5s;
                }

            #appbar .klnav:hover {
                background: rgba(255,255,255,.9);
            }

            .rl_nav:hover {
                opacity: 0.9;
            }

            #kappbar .klnav.klleft {
                margin-left: 0 !important;
            }

            .klnav.klleft {
                border-bottom-right-radius: 36px;
                border-top-right-radius: 36px;
                -webkit-box-shadow: 1px 0 2px rgba(0,0,0,.5);
                box-shadow: 1px 0 2px rgba(0,0,0,.5);
                left: 0;
            }

            .klnav.klright {
                border-bottom-left-radius: 36px;
                border-top-left-radius: 36px;
                -webkit-box-shadow: -1px 0 2px rgba(0,0,0,.5);
                box-shadow: -1px 0 2px rgba(0,0,0,.5);
                right: 0;
            }

            .klnav.disabled, .rl_nav.disabled {
                cursor: default;
                opacity: 0;
            }

            .kxfade, .kxdisable {
                bottom: 0;
                left: 0;
                position: absolute;
                right: 0;
                top: 0;
                z-index: 10000;
            }

            .kxfade {
                background-color: #fff;
                opacity: .75;
            }

            .kxdisable {
                opacity: 0;
            }

            .kxctl-c {
                display: inline-block;
                position: relative;
            }

            .kxctl-b {
                position: relative;
            }

            .kxctl-sep {
                border-top: 1px solid #ebebeb;
                margin: 5px 0;
            }

            .kloptd._zx, #gsr ._zx:active {
                color: #ccc;
                cursor: default;
            }

                .kloptd._zx:hover {
                    background: none;
                }
        </style>
    </div>
    <div id="mngb">
        <div class="gb_0b gb_ib" id="gb">
            <div class="gb_zb gb_4b">
                <div class="gb_na gb_4b gb_k gb_3b" style="min-width: 116px;">
                    <div class="gb_Rb gb_4b gb_k" style="min-width: 116px;">
                        <div class="gb_t" id="gbsfw"></div>
                        <div class="gb_r gb_Va gb_k" id="gbwa">
                                <div class="gb_La">
                                    <a class="gb_s gb_h" href="http://www.google.co.uk/intl/en/options/" title="Apps" aria-haspopup="true" aria-expanded="false" data-ved="0CAIQvSc"></a>
                                    <div class="gb_T"></div>
                                    <div class="gb_S"></div>
                                </div>
                                <div class="gb_t gb_E" aria-label="Apps" role="region" aria-hidden="true">
                                    <ul class="gb_v gb_z">
                                        <li class="gb_b"><a class="gb_f" id="gb119" href="https://plus.google.com/?gpsrc=ogpy0&tab=wX" data-pid="119" data-ved="0CAMQwS4oAA"><span class="gb_h" style="background-position: -104px -414px"></span><span class="gb_i">+You</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb1" href="https://www.google.co.uk/webhp?tab=ww&ei=g7ohU8a4AYeS7QaUpYGIBA&ved=0CAQQqS4oAQ" data-pid="1"><span class="gb_h" style="background-position: -69px -714px"></span><span class="gb_i">Search</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb36" href="https://www.youtube.com/?gl=GB" data-pid="36" data-ved="0CAUQwS4oAg"><span class="gb_h" style="background-position: -173px 0"></span><span class="gb_i">YouTube</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb8" href="https://maps.google.co.uk/maps?hl=en&tab=wl" data-pid="8" data-ved="0CAYQwS4oAw"><span class="gb_h" style="background-position: 0 -714px"></span><span class="gb_i">Maps</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb78" href="https://play.google.com/?q=office+supplies&espv=210&es_sm=93&um=1&ie=UTF-8&hl=en&sa=N&tab=w8" data-pid="78" data-ved="0CAcQwS4oBA"><span class="gb_h" style="background-position: -104px -345px"></span><span class="gb_i">Play</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb5" href="https://news.google.co.uk/nwshp?hl=en&tab=wn&ei=g7ohU8a4AYeS7QaUpYGIBA&ved=0CAgQqS4oBQ" data-pid="5"><span class="gb_h" style="background-position: -138px -207px"></span><span class="gb_i">News</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb23" href="https://mail.google.com/mail/?tab=wm" data-pid="23" data-ved="0CAkQwS4oBg"><span class="gb_h" style="background-position: -152px -276px"></span><span class="gb_i">Gmail</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb25" href="https://drive.google.com/?tab=wo" data-pid="25" data-ved="0CAoQwS4oBw"><span class="gb_h" style="background-position: -138px -484px"></span><span class="gb_i">Drive</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb24" href="https://www.google.com/calendar?tab=wc" data-pid="24" data-ved="0CAsQwS4oCA"><span class="gb_h" style="background-position: 0 -345px"></span><span class="gb_i">Calendar</span></a></li>
                                    </ul>
                                    <a class="gb_w gb_Kb" href="http://www.google.co.uk/intl/en/options/" aria-expanded="false" aria-hidden="true">More</a><span class="gb_x"></span><ul class="gb_v gb_Jb" aria-hidden="true">
                                        <li class="gb_b"><a class="gb_f" id="gb51" href="https://translate.google.co.uk/?hl=en&tab=wT" data-pid="51" data-ved="0CAwQwS4oCQ"><span class="gb_h" style="background-position: -167px -553px"></span><span class="gb_i">Translate</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb10" href="http://books.google.co.uk/bkshp?hl=en&tab=wp&ei=g7ohU8a4AYeS7QaUpYGIBA&ved=0CA0QqS4oCg" data-pid="10"><span class="gb_h" style="background-position: -69px -138px"></span><span class="gb_i">Books</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb6" href="http://www.google.co.uk/shopping?hl=en&tab=wf&ei=g7ohU8a4AYeS7QaUpYGIBA&ved=0CA4QqS4oCw" data-pid="6"><span class="gb_h" style="background-position: 0 0"></span><span class="gb_i">Shopping</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb30" href="https://www.blogger.com/?tab=wj" data-pid="30" data-ved="0CA8QwS4oDA"><span class="gb_h" style="background-position: -138px -138px"></span><span class="gb_i">Blogger</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb27" href="https://www.google.co.uk/finance?tab=we" data-pid="27" data-ved="0CBAQwS4oDQ"><span class="gb_h" style="background-position: -69px -207px"></span><span class="gb_i">Finance</span></a></li>
                                        <li class="gb_b"><a class="gb_f" id="gb31" href="https://plus.google.com/photos?tab=wq" data-pid="31" data-ved="0CBEQwS4oDg"><span class="gb_h" style="background-position: 0 -414px"></span><span class="gb_i">Photos</span></a></li>
                                    </ul>
                                    <a class="gb_x gb_Bb" href="http://www.google.co.uk/intl/en/options/" aria-hidden="true">Even more from Google</a>
                                </div>
                            </div>
                            <div class="gb_Tb gb_k">
                                <div class="gb_La">
                                    <a class="gb_O gb_M" id="gb_70" href="https://accounts.google.com/ServiceLogin?hl=en&continue=https://www.google.co.uk/search%3Fq%3Doffice%2Bsupplies%26oq%3Doffice%2Bsupplies%26aqs%3Dchrome..69i57j69i61j0l4.3032j0j4%26sourceid%3Dchrome%26espv%3D210%26es_sm%3D93%26ie%3DUTF-8" target="_top">Sign in</a><div class="gb_T"></div>
                                    <div class="gb_S"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gb_qa gb_k gb_ua" id="gbq1" style="max-width: 127px; min-width: 127px">
                        <div class="gb_ra"><a class="gb_Hb gb_ta" href="https://www.google.co.uk/webhp?tab=ww&ei=g7ohU8a4AYeS7QaUpYGIBA&ved=0CBIQ1S4" title="Go to Google Home"><span class="gb_h"></span></a></div>
                    </div>
                    <div class="gb_k gb_hb">
                        <div id="gbq">
                            <div class="gbt" id="gbq2">
                                <div class="gbqfr" id="gbqfw">
                                    <form class="gb_Mb" action="https://www.google.co.uk/search" onsubmit="" target="" id="gbqf" name="gbqf" method="get" data-ved="0CBMQuyc">
                                        <fieldset class="gbxx">
                                            <legend class="gbxx">Hidden fields</legend>
                                            <div id="gbqffd">
                                                <input name="espv" value="210" type="hidden"><input name="es_sm" value="93" type="hidden"><input name="sclient" value="psy-ab" type="hidden">
                                            </div>
                                        </fieldset>
                                        <fieldset class="gbqff gb_k" id="gbqff">
                                            <legend class="gbxx"></legend>
                                            <div id="gbfwa" class="gbqfwa ">
                                                <div id="gbqfqw" class="gbqfqw ">
                                                    <div id="gbqfqwb" class="gbqfqwc">
                                                        <table cellspacing="0" cellpadding="0" id="gs_id0" class="gstl_0 lst-t" style="height: 27px; padding: 0px;">
                                                            <tbody>
                                                                <tr>
                                                                    <td id="gs_ttc0" dir="ltr" style="white-space: nowrap;"></td>
                                                                    <td id="gs_tti0" class="gsib_a">
                                                                        <div id="gs_lc0" style="position: relative;">
                                                                            <input id="gbqfq" class="gbqfif" name="q" type="text" autocomplete="off" value="office supplies" dir="ltr" spellcheck="false" style="border: none; padding: 0px; margin: 0px; height: auto; width: 100%; background-image: url(data:image/gif;base64,R0lGODlhAQABAID/AMDAwAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw%3D%3D); background-color: transparent; position: absolute; z-index: 6; left: 0px; outline: none; background-position: initial initial; background-repeat: initial initial;">
                                                                            <div class="gbqfif" id="gs_sc0" style="background-color: transparent; color: transparent; padding: 0px; position: absolute; z-index: 2; white-space: pre; visibility: hidden; background-position: initial initial; background-repeat: initial initial;"></div>
                                                                            <input class="gbqfif" disabled="" autocomplete="off" aria-hidden="true" id="gs_taif0" dir="ltr" style="border: none; padding: 0px; margin: 0px; height: auto; width: 100%; position: absolute; z-index: 1; background-color: transparent; -webkit-text-fill-color: silver; color: silver; left: 0px;">
                                                                            <input class="gbqfif" disabled="" autocomplete="off" aria-hidden="true" id="gs_htif0" dir="ltr" style="border: none; padding: 0px; margin: 0px; height: auto; width: 100%; position: absolute; z-index: 1; background-color: transparent; -webkit-text-fill-color: silver; color: silver; transition: all 0.218s; -webkit-transition: all 0.218s; opacity: 0; left: 0px; text-align: left;">
                                                                        </div>
                                                                    </td>
                                                                    <td class="gsib_b">
                                                                        <div class="gsst_b" id="gs_st0" dir="ltr" style="line-height: 27px;">
                                                                            <a class="gsst_a" href="javascript:void(0)" aria-label="Search by voice"><span class="gsri_a gsst_e" id="gsri_ok0"></span></a>
                                                                            <div id="chmo">
                                                                                <div id="chm">
                                                                                    <div class="chmp">
                                                                                        <div class="chmpi chmp"></div>
                                                                                    </div>
                                                                                    <div style="display: none;">
                                                                                        <div class="chma"></div>
                                                                                        <div>Not listening. Something went wrong.</div>
                                                                                        <div><a>Restart listening</a><a style="padding-left: 10px;">Help</a></div>
                                                                                    </div>
                                                                                    <div style="display: none;">
                                                                                        Hotword detection is off.<div><a>Start listening for "Ok Google"</a></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <div class="gb_k gb_Lb" id="gbqfbw">
                                            <button class="gbqfb" aria-label="Google Search" name="btnG" id="gbqfb"><span class="gbqfi gb_h"></span></button>
                                        </div>
                                        <div class="jsb" id="gbqfbwa" style="display: none;">
                                            <button class="gbqfba" aria-label="Google Search" id="gbqfba" name="btnK"><span id="gbqfsa">Google Search</span></button>
                                            <button class="gbqfba" aria-label="I&#39;m Feeling Lucky" onclick="if(this.form.q.value)this.checked=1;else window.top.location=&#39;/doodles/&#39;" id="gbqfbb" name="btnI"><span id="gbqfsb">I'm Feeling Lucky</span></button>
                                        </div>
                                        <div class="gbqfif" style="background-color: transparent; color: rgb(0, 0, 0); padding: 0px; position: absolute; white-space: pre; visibility: hidden; background-position: initial initial; background-repeat: initial initial;"></div>
                                        <input type="hidden" name="oq"><input type="hidden" name="gs_l"><input type="hidden" name="pbx" value="1">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="gbw"></div>
            </div>
            <div id="gba"></div>
        </div>
        <textarea name="csi" id="csi" style="display: none"></textarea>
        <a href="https://www.google.co.uk/setprefs?suggon=2&prev=https://www.google.co.uk/search%3Fq%3Doffice%2Bsupplies%26oq%3Doffice%2Bsupplies%26aqs%3Dchrome..69i57j69i61j0l4.3032j0j4%26sourceid%3Dchrome%26espv%3D210%26es_sm%3D93%26ie%3DUTF-8&sig=0_Wmn5YxWzjwmdZ4QBNrvyR1Y_qEA%3D" style="left: -1000em; position: absolute">Screen-reader users, click here to turn off Google Instant.</a>
        <div id="gac_scont"></div>
        <div class="s2fp-h" id="spch">
            <div id="spchx">×</div>
            <div id="spchc">
                <div id="spcho">
                    <div id="spchk">
                        <span id="spchb"><span id="spchm"><span id="mrcv"></span>
                            <div id="mwrp"><span id="mstm"></span><span id="mshl"></span></div>
                        </span></span><span id="spchl"></span><span id="spchp"></span>
                    </div>
                    <div id="spchtc"><span class="spcht" id="spchf"></span><span class="spcht" id="spchi"></span></div>
                    <div id="spchg"></div>
                </div>
                <div id="s2pb">
                    <div id="s2pbg"></div>
                    <div id="s2pbt"></div>
                </div>
            </div>
        </div>
        <div data-jiis="cc" id="main">
            <div data-jibp="" data-jiis="uc" id="easter-egg"></div>
            <div data-jiis="bp" id="cnt" class=" mdm">
                <div class="mw">
                    <style data-jiis="uc" id="_css0">
                        #epb-ok {
                            background-color: #4d90fe;
                            background-image: -webkit-linear-gradient(top,#4d90fe,#4787ed);
                            border: 1px solid #3079ed;
                            border-radius: 2px;
                            color: #fff;
                            cursor: default;
                            display: inline-block;
                            font-size: 11px;
                            font-weight: bold;
                            height: 20px;
                            line-height: 20px;
                            margin-right: 0px;
                            min-width: 26px;
                            outline: 0;
                            padding: 0 8px;
                            text-align: center;
                            white-space: nowrap;
                        }

                            #epb-ok:hover {
                                background-color: #357ae8;
                                background-image: -webkit-linear-gradient(top,#4d90fe,#357ae8);
                                border: 1px solid #2f5bb7;
                                border-bottom-color: 2f 5bb 7;
                            }

                            #epb-ok:active {
                                background: #357ae8;
                                border: 1px solid #2f5bb7;
                                border-top: 1px solid #2f5bb7;
                                -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.3);
                            }

                            #epb-ok:focus {
                                border: 1px solid #fff;
                                border: 1px solid rgba(0,0,0,0);
                                -webkit-box-shadow: inset 0 0 0 1px #fff;
                                outline: none;
                            }

                        #epb-lm {
                            color: #12c;
                            cursor: pointer;
                            margin-left: 10px;
                            text-decoration: none;
                        }

                            #epb-lm:hover {
                                text-decoration: underline;
                            }

                            #epb-lm:visited {
                                color: #609;
                            }

                            #epb-lm:active {
                                color: #dd4b39;
                            }

                        .ads-bbl-container {
                            background-color: #fff;
                            border: 1px solid rgba(0,0,0,0.2);
                            box-shadow: 0 4px 16px rgba(0,0,0,0.2);
                            color: #666;
                            position: absolute;
                            z-index: 120;
                        }

                        .ads-bbl-triangle {
                            border-left-color: transparent;
                            border-right-color: transparent;
                            border-width: 0 9.5px 9.5px 9.5px;
                            width: 0px;
                            border-style: solid;
                            border-top-color: transparent;
                            height: 0px;
                            position: absolute;
                            z-index: 121;
                        }

                        .ads-bbl-triangle-bg {
                            border-bottom-color: #999;
                        }

                        .ads-bbl-triangle-fg {
                            border-bottom-color: #fff;
                            margin-left: -9px;
                            margin-top: 1px;
                        }

                        .ads-bblc {
                            display: none;
                        }

                        ._hi {
                            padding: 16px;
                            color: #666;
                        }

                        ._Ov {
                            padding-top: 12px;
                        }

                        ._hi a {
                            text-decoration: none;
                        }

                            ._hi a:hover {
                                text-decoration: underline;
                            }

                        ._or {
                            margin-top: -2px;
                            position: relative;
                            display: inline-block;
                            top: 2px;
                        }

                        ._Pv {
                            background: url(/assets/images/Google/nav_logo170_hr.png);
                            height: 12px;
                            width: 12px;
                            background-position: 0 -106px;
                        }

                        ._pr {
                            background: url(/assets/images/Google/nav_logo170_hr.png);
                            height: 14px;
                            width: 14px;
                            background-position: -114px -40px;
                        }

                        ._pr {
                            background-size: 167px;
                        }

                        ._Pv {
                            background-size: 167px;
                        }

                        ._fP {
                            text-overflow: ellipsis;
                            white-space: nowrap;
                            overflow: hidden;
                            color: #006621;
                        }

                        #center_col .ads-visurl cite {
                            color: #006621;
                        }

                        .ads-visurl {
                            font-size: 13px;
                        }

                        ._kb .action-menu {
                            line-height: 0;
                        }

                        #center_col ._kb .clickable-dropdown-arrow, #center_col ._kb .clickable-dropdown-arrow.selected {
                            background-color: #fff;
                        }

                        #center_col ._kb .action-menu .mn-dwn-arw {
                            border-color: #006621 transparent;
                        }

                        #center_col ._kb .action-menu:hover .mn-dwn-arw {
                            border-color: #00591E transparent;
                        }

                        ._br {
                            font-size: 13px;
                        }

                            ._br._vv {
                                display: inline;
                                margin-left: 3px;
                            }

                        ._tC {
                            padding-left: 2px;
                        }

                        ._Zq {
                            color: #e7711b;
                        }

                        ._ar {
                            display: inline-block;
                            position: relative;
                            top: 1px;
                            background: url(/assets/images/Google/nav_logo170.png) no-repeat -100px -260px;
                            height: 13px;
                            width: 65px;
                        }

                        ._lC {
                            display: inline-block;
                            position: absolute;
                            top: 0px;
                            left: 0px;
                            background: url(/assets/images/Google/nav_logo170.png) no-repeat -100px -275px;
                            height: 13px;
                            width: 65px;
                        }

                        .rtng {
                            color: #e7711b;
                            white-space: nowrap;
                        }

                        .star {
                            display: inline-block;
                            overflow: hidden;
                            position: relative;
                            top: 1px;
                        }

                            .star span {
                                display: block;
                            }

                        ._mn {
                            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAICAYAAAArzdW1AAAASUlEQVQYV2P4//8/AwwDAScII4uBxdEUSYEwIUXaIIyhCKrbGAeWgpuEQyHcWmQHoyviRFcEMkkfiIWgWB+bSSBFrEgOZUVWBACHuXBp6R5xwgAAAABJRU5ErkJggg==);
                        }

                            ._mn span {
                                background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAICAYAAAArzdW1AAAAbklEQVQYlWN4XijNgIT1gdgQTYyBAU2gF4gnYFMkAMSCQCwCxC+B+BUQi0LFBGCKQoH4KxD/R8PfgDgc2TpjIP6ApOATEJugu4kNatpvIP4FxN+hYiiKzKAmuQGxC5Rthq4oEIh1kHykDcR+MD4Al69+px07HvMAAAAASUVORK5CYII=);
                            }

                            ._mn, ._mn span {
                                height: 8px;
                                width: 44px;
                            }

                        .star-s {
                            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAANCAYAAACZ3F9/AAAAdElEQVQoz2P4//8/AzkYH9BDFyBGIx9UIx+pGmWhGmVJ1agB1aiBT6MgEGtDFRLCIHV8yDayAbESAU0geTZcThXBoUmEkB85cWjkJKQRl41ShDQqIAWCIHro4tMICwRmKJ8ZKdDYcGnkAWJxHPEqDosGGAYAPKyWjQLQgJcAAAAASUVORK5CYII=);
                        }

                            .star-s span {
                                background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAANCAYAAACZ3F9/AAAAh0lEQVQoz2P4//8/AzkYJ3heKI1VFq9GoKYAkEYQTarGBVCNC0jV+ACq8QFOjUDJBCB+D1VICIPUBcBtBHIUgHg/AU0geQWsTgVK5OPQlI/Xj0AFBjg0GhDSWIBD4wRCGjcgBUI8EN9HD11cGmGBIADlCyAFmgJWjUAJByCuxxGv9bBUBNMIAE/pEHiIacCdAAAAAElFTkSuQmCC);
                            }

                            .star-s, .star-s span {
                                height: 13px;
                                width: 69px;
                            }

                        .star-m {
                            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAARCAYAAADQWvz5AAAAl0lEQVQ4y63TYQfAIBAG4IgRExER+7JZIvb//10rbuSou62N17SrZ1ckcs7ij3CeY1TkQqrkgvcU5ABys1AAKMxAEpAn8itkEGQoSJcktIibuk63HdW295dInS97W7OM7hLMI89oKYkdJEKdddiS6IgNWQKyXCgQUORACi3ysBWPvisK8s1fV1Sr4xPqGwWl0QVtLnLC0A2F/aQSMOub8wAAAABJRU5ErkJggg==);
                        }

                            .star-m span {
                                background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAARCAYAAADQWvz5AAAAsklEQVQ4y2P4//8/AzUwQfC8UPoAPnmiDAIaYgDE/0E0pQY1QA1qoNSgC1CDLpBtEFCzANQQGBYg16AENIMS8BoEVBAAxO/RNBGLQfoC4C6CemM/iYaA1Atg9RpQIp8I14Hk8wmGEVCRAhDfx2EISFyBqMDGElvomGiDCggYVECsQRcIGPSAoEFIeQuG+6Fh1o8mbkDIoAlIgeqAJucAxOeh8gsIGfQBiOsJ5L96kDp0gwDxwKURpWWtvgAAAABJRU5ErkJggg==);
                            }

                            .star-m, .star-m span {
                                height: 17px;
                                width: 89px;
                            }

                        .star-l {
                            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAATCAYAAAB/TkaLAAAArklEQVQoz63SUQcFIRAF4MNwWdYSEUtkH64l7v//d3NfioxdnVL0Vl/TzAG45ZlDqgpVpcAPgB+AbSXqC+pXoqmg31WoFLBuWYE6g7oVaDRoZFF7cXZHW6kDkCexXNvy9P0NwD0I3m1+33oqAC4SvGwaeoM6O+A5M/3QQcMMehO9HEJ3sqfHCGpzm8pDyeaSRaXJa36o5jB5pqbvmurkpd/SpMMxaChfZdZuU1DRP2OfiP9e/N9BAAAAAElFTkSuQmCC);
                        }

                            .star-l span {
                                background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAATCAYAAAB/TkaLAAAAz0lEQVQ4y2NgIAI8L5QuIEbd////wZgYAxWA+D8QG1DT0AKooQXUNHQD1NALVDEUaJAA1EAYFqCGoQlohiZQw9AFaIYuIMpQoML5aBrJxfNRXAr15nsyDXsPCxYM74PSIRDfJ9HA+8jpF2uYQmN7P5EG7kdPDXgjCqi4n4CB/STHPlBTAwFDG8gx9AEBQx+QZChQgwORYRpAiqHoCX491KL1hDICvtj/gJT+AtDkA9DSswAxhiYguU4ATyHTj60swGUoKNYdiKwNHNBTAcxQAN7t22e26CvrAAAAAElFTkSuQmCC);
                            }

                            .star-l, .star-l span {
                                height: 19px;
                                width: 103px;
                            }

                        .star-xl {
                            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAWCAYAAAA1vze2AAAAxUlEQVR42rXUUQuEIAwH8GAQCIcQCIFPcUchCH3/b+f18D+MUdzmUhg9KPttag7K8fm3oJTCQwX4I3Z8uyERSOyJJCCpF+IA/ML1QAJDQg9kY8j2NEJIzIM0iD8iswSmQD5fkVrt+wkAeYh3wg84G6oP0jMZtV1h/dhy8EEIBMvtIiFCFmQSIpMFWYTIYkGyEMmtiL9ItmJr1os534JElmRm8zObjy1IqtXfPuvu1FXSIu5UHQkeT3St+Bmxv69BMbDe3SFf/+tYufyUsgoAAAAASUVORK5CYII=);
                        }

                            .star-xl span {
                                background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAWCAYAAAA1vze2AAAA40lEQVR42rXW3Q2DIBAH8I7Ae18cgREcgQ3qBtgJHEFGcQO6QR2Btz7WDejZXHL1EtIDxOQfHvj4gRjwkvO87tfHvzYxRp4swEDiXrZEHCKuJRIQCeciBOgvQNEtkJEhYwtkZchai3BAHQCKEiP4ab6pc31wPIPIYbb+JMBDVOp17ZgtXRX2s6k94VAH8QWz7+QbT5gVApZ65SNKiKgaZBAiQw2yCJGlBtmEyFaA0N3B8oTcsOR1pgRxbJCJ1U+s3pUg4Wf2Onn806qCFOF3xwxRgsNzxvZdDmIgfeYPRg/RKeQDVyEPzMDbhwwAAAAASUVORK5CYII=);
                            }

                            .star-xl, .star-xl span {
                                height: 22px;
                                width: 123px;
                            }

                        .star-red, .star-red span {
                            background-repeat: repeat-x;
                        }

                        @media (-webkit-min-device-pixel-ratio:1.25),(min-resolution:120dpi) {
                            .star-red {
                                background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAmCAYAAACyAQkgAAABR0lEQVQ4y9XVcQfFIBAA8BERiYgRMW8eEe/7f7u9jRuTWlu7eveOsz/es36ru2sY8IKt+YFndSzLkkzM0ABV1KEOoI46NAA0UIZKQO4pqEJtBLVUoT6CeopQHiH35NSgJgM11KBzBjpTgrIMck9GBaoLUE0F6gpQRwUaCtCACVUXFuydm0eldnSbeS8iyM3BS0c//hg53qlRsabvDPSw7u1m2uaf7YS0x3lb2/UtGy3A+9HGE2vQaK/crYUxRw0S0vQY+OIhUvS6meRDqOwFfToJbC/o0/nqe0A5UjPx1tC/6foZCTq3hDLkgc9aQfWFxSeov+nCf3UrqDtZNCTqrlTPrhU0ZBZ8n9w2An7PfRw6VNYOb6jF3GkobKhN7Ia8eVGoxKlYbKiPGoYNdcGjUvCYUHHSMLUxHrACC2oKDVMbEnbUXIV+AcIQ9r/GDIUMAAAAAElFTkSuQmCC);
                            }

                                .star-red span {
                                    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAmCAYAAACyAQkgAAABeUlEQVRIx83X0Y2DMAwAUEbI//0wAiNkBEbIBuQm6Ahkg8sGHaFswAjl7z7LBlyQjFSlhCTE5hzJ6g+FJ4hju6qQ1u/3l3CxrL8l91mWZTcqRKgCaMsdagFquUNngM5soQ4nAblFwxVqPKjhCp086MQO6lC1h9yi5gbVAajmBh0C0IEN9K0ahUJwgaoIVHGB2gjUcoHOEeiMBl2bCBevyAOvjtXTfrxROAsfTJCroz789O6C2z8jb8l7dG0oXDwvBj63RiYrmeB87C9C9u/n7amsJ0601940cPp4grf7IEgYQXKOuht3SMiO/MCHRCtBRjt/LKgshMqroKYQaq6CToXQiRx6MHLkRk0N1UhQTQ0dkKADGTRh5MgNQQVVCQ+/wz6+J1yrqKA2UrO7zCpmqaChkWMMVRuoYmPuiFLSlISqUZ+4t38C/2+xoWbnU8sqYwXaRYMNnbyEEdWJBYk2xqrU2ca5CSXM2eXNZQ0WVB8lTAFWwpykU6F//b/XFxMLzj0AAAAASUVORK5CYII=);
                                }

                            ._mn, ._mn span {
                                -webkit-background-size: 9px 8px;
                                background-size: 9px 8px;
                            }

                            .star-s, .star-s span {
                                -webkit-background-size: 14px 13px;
                                background-size: 14px 13px;
                            }

                            .star-m, .star-m span {
                                -webkit-background-size: 18px 17px;
                                background-size: 18px 17px;
                            }

                            .star-l, .star-l span {
                                -webkit-background-size: 21px 19px;
                                background-size: 21px 19px;
                            }

                            .star-xl, .star-xl span {
                                -webkit-background-size: 25px 22px;
                                background-size: 25px 22px;
                            }
                        }

                        .mfr {
                            margin-top: 1em;
                            margin-bottom: 1em;
                        }

                        #brs {
                        }

                            #brs .med {
                            }

                        .brs_col {
                            display: inline-block;
                            font-size: small;
                            margin-top: -1px;
                            padding-bottom: 1px;
                            float: left;
                            padding-right: 16px;
                        }

                        #brs ._hw {
                            margin: 0;
                            padding-top: 5px;
                        }

                        .uh_h, .uh_hp, .uh_hv {
                            display: none;
                            position: fixed;
                        }

                        .uh_h {
                            height: 0px;
                            left: 0px;
                            top: 0px;
                            width: 0px;
                        }

                        .uh_hv {
                            background: #fff;
                            border: 1px solid #ccc;
                            -webkit-box-shadow: 0 4px 16px rgba(0,0,0,0.2);
                            margin: -8px;
                            padding: 8px;
                            background-color: #fff;
                        }

                        .uh_hp, .uh_hv, #uh_hp.v {
                            display: block;
                            z-index: 5000;
                        }

                        #uh_hp {
                            -webkit-box-shadow: 0px 2px 4px rgba(0,0,0,0.2);
                            display: none;
                            opacity: .7;
                            position: fixed;
                        }

                        #uh_hpl {
                            cursor: pointer;
                            display: block;
                            height: 100%;
                            outline-color: -moz-use-text-color;
                            outline-style: none;
                            outline-width: medium;
                            width: 100%;
                        }

                        .uh_hi {
                            border: 0;
                            display: block;
                            margin: 0 auto 4px;
                        }

                        .uh_hx {
                            opacity: 0.5;
                        }

                            .uh_hx:hover {
                                opacity: 1;
                            }

                        .uh_hn, .uh_hr, .uh_hs, .uh_ht, .uh_ha {
                            margin: 0 1px -1px;
                            padding-bottom: 1px;
                            overflow: hidden;
                        }

                        .uh_ht {
                            font-size: 123%;
                            line-height: 120%;
                            max-height: 1.2em;
                            word-wrap: break-word;
                        }

                        .uh_hn {
                            line-height: 120%;
                            max-height: 2.4em;
                        }

                        .uh_hr {
                            color: #093;
                            white-space: nowrap;
                        }

                        .uh_hs {
                            color: #093;
                            white-space: normal;
                        }

                        .uh_ha {
                            color: #777;
                            white-space: nowrap;
                        }

                        a.uh_hal {
                            color: #36c;
                            text-decoration: none;
                        }

                        a:hover.uh_hal {
                            text-decoration: underline;
                        }

                        ._kC a {
                            font-size: 11px;
                        }
                    </style>
                    <div data-jibp="h" data-jiis="uc" id="dc"></div>
                    <div id="subform_ctrl" style="visibility: visible;"></div>
                </div>
                <div data-jibp="h" data-jiis="uc" id="bst" style="display: none"><span>&nbsp;</span></div>
                <div data-jibp="h" data-jiis="uc" id="top_nav">
                    <div class="hdtbna notl" id="hdtb" role="navigation" tabindex="0">
                        <div id="hdtbSum">
                            <div id="hdtb_s" style="white-space: nowrap">
                                <div id="hdtb_msb">
                                    <div class="hdtb_mitem hdtb_msel">Web</div>
                                    <div class="hdtb_mitem"><a class="q qs" href="http://maps.google.co.uk/maps?q=office+supplies&espv=210&es_sm=93&um=1&ie=UTF-8&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CAkQ_AUoAQ">Maps</a></div>
                                    <div class="hdtb_mitem"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnms&tbm=isch&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CAoQ_AUoAg">Images</a></div>
                                    <div class="hdtb_mitem"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnms&tbm=shop&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CAsQ_AUoAw">Shopping</a></div>
                                    <div class="hdtb_mitem"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnms&tbm=nws&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CAwQ_AUoBA">News</a></div>
                                    <a id="hdtb_more" role="menu" tabindex="0" data-ved="0CAYQ2h8" aria-label="More"><span class="mn-hd-txt">More</span><span class="mn-dwn-arw"></span></a><div id="hdtb_more_mn" class="hdtb-mn-c">
                                        <div class="hdtb_mitem"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnms&tbm=vid&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CA0Q_AUoAA">Videos</a></div>
                                        <div class="hdtb_mitem"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnms&tbm=bks&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CA4Q_AUoAQ">Books</a></div>
                                        <div class="hdtb_mitem"><a class="q qs" href="https://www.google.co.uk/flights/gwsredirect?q=office+supplies&espv=210&es_sm=93&source=lnms&tbm=flm&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CA8Q_AUoAg">Flights</a></div>
                                        <div class="hdtb_mitem"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnms&tbm=app&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CBAQ_AUoAw">Apps</a></div>
                                    </div>
                                    <a id="hdtb_tls" class="hdtb-tl" role="button" tabindex="0" data-ved="0CAcQ2x8">Search tools</a>
                                </div>
                                </li></ol>
                            </div>
                        </div>
                        <div class="hdtb-td-c hdtb-td-h" aria-expanded="false" id="hdtbMenus" tabindex="0" data-ved="0CBEQ3B8">
                            <div class="hdtb-mn-cont">
                                <div id="hdtb-mn-gp"></div>
                                <div class="hdtb-mn-hd" aria-haspopup="true" role="button" tabindex="0" aria-label="Any country">
                                    <div class="mn-hd-txt">Any country</div>
                                    <span class="mn-dwn-arw"></span>
                                </div>
                                <ul class="hdtbU hdtb-mn-c">
                                    <li class="hdtbItm hdtbSel" id="lr_" tabindex="0">Any country</li>
                                    <li class="hdtbItm" id="ctr_countryUK_countryGB"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=ctr:countryUK%7CcountryGB&cr=countryUK%7CcountryGB&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CBUQpwUoAQ">Country: the UK</a></li>
                                </ul>
                                <div class="hdtb-mn-hd" aria-haspopup="true" role="button" tabindex="0" aria-label="Any time">
                                    <div class="mn-hd-txt">Any time</div>
                                    <span class="mn-dwn-arw"></span>
                                </div>
                                <ul class="hdtbU hdtb-mn-c">
                                    <li class="hdtbItm hdtbSel" id="qdr_" tabindex="0">Any time</li>
                                    <li class="hdtbItm" id="qdr_h"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=qdr:h&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CBgQpwUoAQ">Past hour</a></li>
                                    <li class="hdtbItm" id="qdr_d"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=qdr:d&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CBkQpwUoAg">Past 24 hours</a></li>
                                    <li class="hdtbItm" id="qdr_w"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=qdr:w&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CBoQpwUoAw">Past week</a></li>
                                    <li class="hdtbItm" id="qdr_m"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=qdr:m&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CBsQpwUoBA">Past month</a></li>
                                    <li class="hdtbItm" id="qdr_y"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=qdr:y&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CBwQpwUoBQ">Past year</a></li>
                                    <li class="hdtbItm" id="cdr_opt">
                                        <div class="cdr_sep"></div>
                                        <span class="q" id="cdrlnk" jsaction="ttbcdr.showCal" tabindex="0">Custom range...</span><div style="display: none" class="cdr_cont">
                                            <div class="cdr_bg"></div>
                                            <div class="cdr_dlg">
                                                <div class="cdr_ttl">Custom date range</div>
                                                <label class="cdr_mml cdr_minl" for="cdr_min">From</label><label class="cdr_mml cdr_maxl" for="cdr_max">To</label><div class="cdr_cls"></div>
                                                <div class="cdr_sft">
                                                    <div class="cdr_highl"></div>
                                                    <form action="https://www.google.co.uk/search" method="get" class="cdr_frm">
                                                        <input type="hidden" name="q" value="office supplies"><input type="hidden" name="espv" value="210"><input type="hidden" name="es_sm" value="93"><input type="hidden" name="sa" value="X"><input type="hidden" name="ei" value="g7ohU8dptJHsBuvigKAO"><input type="hidden" name="ved" value="0CB0QpwUoBg"><input name="source" type="hidden" value="lnt"><input name="tbs" type="hidden" value="cdr:1,cd_min:x,cd_max:x" class="ctbs"><input name="tbm" type="hidden" value=""><input class="ktf mini cdr_mm cdr_min" type="text" autocomplete="off" value="" tabindex="1"><input class="ktf mini cdr_mm cdr_max" type="text" autocomplete="off" value="" tabindex="1"><input class="ksb mini cdr_go" type="submit" value="Go" tabindex="1" jsaction="tbt.scf">
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="hdtb-mn-hd" aria-haspopup="true" role="button" tabindex="0" aria-label="All results">
                                    <div class="mn-hd-txt">All results</div>
                                    <span class="mn-dwn-arw"></span>
                                </div>
                                <ul class="hdtbU hdtb-mn-c">
                                    <li class="hdtbItm hdtbSel" id="whv_" tabindex="0">All results</li>
                                    <li class="hdtbItm" id="rl_1"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=rl:1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CCAQpwUoAQ">Reading level</a></li>
                                    <li class="hdtbItm" id="li_1"><a class="q qs" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&source=lnt&tbs=li:1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CCEQpwUoAg">Verbatim</a></li>
                                </ul>
                                <div class="hdtb-mn-hd" aria-haspopup="true" role="button" tabindex="0" aria-label="London, UK">
                                    <div class="mn-hd-txt">London, UK</div>
                                    <span class="mn-dwn-arw"></span>
                                </div>
                                <ul class="hdtbU hdtb-mn-c">
                                    <li class="hdtbItm hdtbSel" tabindex="0">London, UK</li>
                                    <li id="set_location_section" style="display: block">
                                        <ul>
                                            <li class="hdtbItm"><a href="https://www.google.co.uk/support/websearch/bin/answer.py?answer=179386&hl=en" class="fl"><span style="font-size: 11px">Auto-detected</span></a></li>
                                            <li class="hdtbItm hdtb-loc">
                                                <form id="change_location_form" action="javascript:void(0)">
                                                    <input class="ktf mini" id="lc-input" jsaction="keypress:loc.kp;blur:loc.stt;focus:loc.htt" style="margin-left: 0px" type="text" value="Enter location" aria-label="Enter location"><input class="ksb mini" type="submit" style="margin-left: 5px" value="Set" jsaction="loc.s">
                                                </form>
                                                <div id="error_section" style="display: block; font-size: 11px"></div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-jibp="h" data-jiis="uc" id="appbar">
                    <div id="extabar">
                        <div id="topabar" style="position: relative">
                            <div class="ab_tnav_wrp" id="slim_appbar">
                                <div id="sbfrm_l">
                                    <div id="resultStats">About 344,000,000 results<nobr> (0.18 seconds)&nbsp;</nobr></div>
                                </div>
                            </div>
                        </div>
                        <div id="botabar" style="display: none"></div>
                    </div>
                    <div></div>
                </div>
                <div class="mw" data-jibp="h" data-jiis="uc" id="ucs"></div>
                <div class="mw">
                    <div id="rcnt" style="clear: both; position: relative; zoom: 1">
                        <div data-jibp="h" data-jiis="uc" id="gko-srp-sp"></div>
                        <div id="er" style="display: none;"></div>
                        <div class="col" style="width: 0">
                            <div data-jibp="h" data-jiis="uc" id="leftnavc"></div>
                        </div>
                        <div class="col" style="width: 0">
                            <div id="center_col" style="visibility: visible;">
                                <div data-jibp="h" data-jiis="uc" id="taw" style="margin-right: 0">
                                    <div></div>
                                    <div style="padding: 0 8px">
                                        <div class="med"></div>
                                        <div id="epbar" data-ved="0CCYQ-Cc" style="display: block;">
                                            <p id="epb-notice">Cookies help us deliver our services. By using our services, you agree to our use of cookies.</p>
                                            <div aria-label="OK" title="Clicking OK dismisses this notice." jsaction="epb.dismiss" id="epb-ok" role="button" data-ved="0CCcQ-ic">OK</div>
                                            <a href="https://www.google.co.uk/intl/en-GB/policies/technologies/cookies/" id="epb-lm" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;AFQjCNG_dfdJvnEIqRSk95S4cnqP6z9Pkg&#39;,&#39;&#39;,&#39;0CCgQ-Sc&#39;,&#39;&#39;,&#39;&#39;,event)">Learn more</a>
                                        </div>
                                    </div>
                                    <div id="tvcap">
                                        <div class="_kb c mnr-c" id="tads">
                                            <h2 class="_Vf"><span><a href="javascript:void(0)" class="ads-bbll" data-width="230" jsaction="bbl.tb" data-ved="0CCoQJw"><span class="_or _Pv" title="Why these ads?"></span></a>
                                                <div class="ads-bblc" data-ved="0CCsQKA">
                                                    <div class="_hi">
                                                        <div>These ads are based on your current search terms.</div>
                                                        <div class="_Ov">Visit Google’s <a href="javascript:void();" jsaction="wta.nta" data-ved="0CCwQKQ">Ads Settings</a> to learn more or opt out.</div>
                                                    </div>
                                                </div>
                                            </span></h2>
                                            <ol>
                                                <li class="ads-ad" data-hveid="45">
                                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=CauHRg7ohU92SAuP77Qa5-oDYBarn89YE4sug7jP4188JCAAQASgDUOufqLL5_____wFgu76ug9AKoAG80p_zA8gBAakCRRImTN38uz6qBCJP0Aeu05BQC0jGt27yKpIB4oZwtrPwN7zvwjSky8NeaxjxgAesreAMkAcD&sig=AOD64_25XYKovbAzjF-MbuK_sBmsJuTJHA&rct=j&q=office+supplies&ved=0CC4Q0Qw&adurl=http://www.theofficesuppliessupermarket.com/landing/10-5-off%3Futm_source%3Dgoogle%26utm_medium%3Dcpc%26utm_term%3Doffice_supplies%26utm_content%3Dex%26utm_campaign%3DHV_STExact_office_supplies_E" id="s0p1" style="display: none"></a><a href="http://www.theofficesuppliessupermarket.com/" id="vs0p1" onmousedown="return google.arwt(this)"><b>Office Supplies</b> Online - The<b>OfficeSupplies</b>Supermarket.com‎</a></h3>
                                                    <div class="kv _IH ads-visurl">
                                                        <span class="_Wu">Ad</span><cite>www.the<b>officesupplies</b>supermarket.com/</cite>‎<div class="action-menu ab_ctl">
                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b1036527074" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CC8Q7B0"><span class="mn-dwn-arw"></span></a>
                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CDAQqR8">
                                                                <ul>
                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CDEQgRM">Why this ad?</div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ads-creative"><b>Office Supplies</b> | Massive Range, Great Prices, Save Now!</div>
                                                </li>
                                                <li class="ads-ad" data-hveid="50">
                                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=CXH1fg7ohU92SAuP77Qa5-oDYBZn1jdsF6cTz3HX4188JCAAQAigDUIWw8vr5_____wFgu76ug9AKoAG3pf7WA8gBAakCRRImTN38uz6qBCNP0EepFolJMXBGNW074DIU8SaVbNy_qgew6C20UiXeE1kZ14AHsdqBKZAHAw&sig=AOD64_1MMiyxUqw74lakc2jSDLfRLNTg4g&rct=j&q=office+supplies&ved=0CDMQ0Qw&adurl=http://www.viking-direct.co.uk/%3Fcm_mmc%3DUK-PPC-_-Google-_-Cat-Office%2520Supplies-_-office%2520supplies_exact%26_%24ja%3Dcgid:6390487305%7Ctsid:27533%7Ccid:137471025%7Clid:20179960%7Cnw:g%7Ccrid:31505807985%7Crnd:14148538991916298394%7Cdvc:c%7Cadp:1t2" id="s0p2" style="display: none"></a><a href="http://www.viking-direct.co.uk/" id="vs0p2" onmousedown="return google.arwt(this)">Buy <b>Office Supplies</b> - viking-direct.co.uk‎</a></h3>
                                                    <div class="kv _IH ads-visurl">
                                                        <cite>www.viking-direct.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b1537008233" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CDQQ7B0"><span class="mn-dwn-arw"></span></a>
                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CDUQqR8">
                                                                <ul>
                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CDYQgRM">Why this ad?</div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ads-creative"><b>Office Supplies</b> at Viking Great Savings At Viking</div>
                                                    <div class="_ZO"><a href="http://www.google.co.uk/aclk?sa=l&ai=CoNCBg7ohU92SAuP77Qa5-oDYBZn1jdsF6cTz3HX4188JCAAQAigDULHjmNwFYLu-roPQCqABt6X-1gPIAQGpAkUSJkzd_Ls-qgQjT9BHqRaJSTFwRjVtO-AyFPEmlWzcv6oHsOgttFIl3hNZGdfSBgsQsYEbGNHiuQEoAYAHsdqBKZAHAw&sig=AOD64_3P8Xg0BPAsD8EgjLAZTKWVGDIAEw&ctype=4&rct=j&q=office+supplies&ved=0CDoQpigoAA&adurl=http://www.viking-direct.co.uk/a/bb/Office-Furniture-Seating/N%3D2%2B1288888/%26cm_mmc%3DUK-PPC-_-Google-_-Cat-Office%2520Supplies-_-office%2520supplies_exact%26_%24ja%3Dcgid:6390487305%7Ctsid:27533%7Ccid:137471025%7Clid:20179960%7Cnw:g%7Ccrid:31505807985%7Crnd:14148538991916298394%7Cdvc:c%7Cadp:1t2">Office Furniture and Seating</a> - <a href="http://www.google.co.uk/aclk?sa=l&ai=CK7aBg7ohU92SAuP77Qa5-oDYBZn1jdsF6cTz3HX4188JCAAQAigDUNKf0_QFYLu-roPQCqABt6X-1gPIAQGpAkUSJkzd_Ls-qgQjT9BHqRaJSTFwRjVtO-AyFPEmlWzcv6oHsOgttFIl3hNZGdfSBgsQsYEbGOHguQEoAYAHsdqBKZAHAw&sig=AOD64_1uXkqdsAmu8q5k3Z_up-VxkcGK0w&ctype=4&rct=j&q=office+supplies&ved=0CDsQpigoAQ&adurl=http://www.viking-direct.co.uk/a/bb/Storing-Archiving/N%3D2%2B1289069/%26cm_mmc%3DUK-PPC-_-Google-_-Cat-Office%2520Supplies-_-office%2520supplies_exact%26_%24ja%3Dcgid:6390487305%7Ctsid:27533%7Ccid:137471025%7Clid:20179960%7Cnw:g%7Ccrid:31505807985%7Crnd:14148538991916298394%7Cdvc:c%7Cadp:1t2">Storage and Archiving</a> - <a href="http://www.google.co.uk/aclk?sa=l&ai=C5l3tg7ohU92SAuP77Qa5-oDYBZn1jdsF6cTz3HX4188JCAAQAigDUJT45f0FYLu-roPQCqABt6X-1gPIAQGpAkUSJkzd_Ls-qgQjT9BHqRaJSTFwRjVtO-AyFPEmlWzcv6oHsOgttFIl3hNZGdfSBgsQsYEbGOnfuQEoAYAHsdqBKZAHAw&sig=AOD64_0B0odAdcQm8WMU_PaiB-TvZNtFZw&ctype=4&rct=j&q=office+supplies&ved=0CDwQpigoAg&adurl=http://www.viking-direct.co.uk/a/bb/Desktop-Essentials/N%3D2%2B1288771/%26cm_mmc%3DUK-PPC-_-Google-_-Cat-Office%2520Supplies-_-office%2520supplies_exact%26_%24ja%3Dcgid:6390487305%7Ctsid:27533%7Ccid:137471025%7Clid:20179960%7Cnw:g%7Ccrid:31505807985%7Crnd:14148538991916298394%7Cdvc:c%7Cadp:1t2">Desktop Essentials</a></div>
                                                </li>
                                                <li class="ads-ad" data-hveid="61">
                                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=C4Jacg7ohU92SAuP77Qa5-oDYBfPgoMcBw5z__JgB-NfPCQgAEAMoA1Cxk5_rA2C7vq6D0AqgAa6Vjf8DyAEBqQLf5aH03v-7PqoEIk_QZ-d3iUkwcEY1bTvgMga_d5Vs3L-qB7DoLbRSJd5kbcmAB7rqcpAHAw&sig=AOD64_20tgBrH5ysP2MMz9_B2eLM5QebWQ&rct=j&q=office+supplies&ved=0CD4Q0Qw&adurl=http://sushi.euroffice.co.uk/ct/665790" id="s0p3" style="display: none"></a><a href="http://www.euroffice.co.uk/OfficeSupplies" id="vs0p3" onmousedown="return google.arwt(this)"><b>Office Supplies</b> - eur<b>office</b>.co.uk‎</a></h3>
                                                    <div class="kv _IH ads-visurl">
                                                        <span class="_Wu">Ad</span><cite>www.eur<b>office</b>.co.uk/<b>OfficeSupplies</b></cite>‎<div class="action-menu ab_ctl">
                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b-1885352381" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CD8Q7B0"><span class="mn-dwn-arw"></span></a>
                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CEAQqR8">
                                                                <ul>
                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CEEQgRM">Why this ad?</div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="ads-creative">Your <b>Office</b>, Our Passion. Next Day Delivery !</div>
                                                    <div class="_ZO"><a href="http://www.google.co.uk/aclk?sa=l&ai=CynhEg7ohU92SAuP77Qa5-oDYBfPgoMcBw5z__JgB-NfPCQgAEAMoA1Dv5aOiAWC7vq6D0AqgAa6Vjf8DyAEBqQLf5aH03v-7PqoEIk_QZ-d3iUkwcEY1bTvgMga_d5Vs3L-qB7DoLbRSJd5kbcnSBgsQ-9UYGMu_1gMoAYAHuupykAcD&sig=AOD64_0XBdObx8rrUbkt8QooGPY7ESsQeg&ctype=4&rct=j&q=office+supplies&ved=0CEMQpigoAA&adurl=http://sushi.euroffice.co.uk/ct/8038885">Office Stationery</a> - <a href="http://www.google.co.uk/aclk?sa=l&ai=Chv8ug7ohU92SAuP77Qa5-oDYBfPgoMcBw5z__JgB-NfPCQgAEAMoA1Cr3air_f____8BYLu-roPQCqABrpWN_wPIAQGpAt_lofTe_7s-qgQiT9Bn53eJSTBwRjVtO-AyBr93lWzcv6oHsOgttFIl3mRtydIGCxD71RgYu8HWAygBgAe66nKQBwM&sig=AOD64_1qNfAVS4-XYrqJBXwuuH2NRtXsOg&ctype=4&rct=j&q=office+supplies&ved=0CEQQpigoAQ&adurl=http://sushi.euroffice.co.uk/ct/8038836">Ink &amp; Toner Cartridges</a> - <a href="http://www.google.co.uk/aclk?sa=l&ai=CSNhFg7ohU92SAuP77Qa5-oDYBfPgoMcBw5z__JgB-NfPCQgAEAMoA1DI28lLYLu-roPQCqABrpWN_wPIAQGpAt_lofTe_7s-qgQiT9Bn53eJSTBwRjVtO-AyBr93lWzcv6oHsOgttFIl3mRtydIGCxD71RgYq8PWAygBgAe66nKQBwM&sig=AOD64_3WEf7ZBK6DBTx4RqIDRYkeI1CwOQ&ctype=4&rct=j&q=office+supplies&ved=0CEUQpigoAg&adurl=http://sushi.euroffice.co.uk/ct/8052741">Low Price Guarantee</a></div>
                                                </li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>
                                <div class="med" id="res" role="main">
                                    <div data-jibp="h" data-jiis="uc" id="topstuff"></div>
                                    <div data-jibp="h" data-jiis="uc" id="search">
                                        <!--a-->
                                        <h2 class="hd">Search Results</h2>
                                        <div data-async-econtext="query:office%20supplies" data-async-context="query:office%20supplies" id="ires">
                                            <ol eid="g7ohU8dptJHsBuvigKAO" id="rso">
                                                <div class="srg">
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="73">
                                                            <h3 class="r"><a href="http://www.staples.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;1&#39;,&#39;AFQjCNHOAZymLH8CYicZsQWZm5PbXHIeuw&#39;,&#39;&#39;,&#39;0CEoQFjAA&#39;,&#39;&#39;,&#39;&#39;,event)">Stationery, <em>Office Furniture</em> and chair, laptop and tablet</a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.staples.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b0" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CEsQ7B0wAA"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CEwQqR8wAA">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:AHN3YAdASJwJ:www.staples.co.uk/+&cd=1&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;1&#39;,&#39;AFQjCNH8XUUVrfcFQwkICw5W90FOijl3vg&#39;,&#39;&#39;,&#39;0CE0QIDAA&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.staples.co.uk/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CE4QHzAA">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st">Staples.co.uk Your business partner for <em>Office Supplies</em>, furniture and technology. - Welcome to Staples.co.uk. We stock a range of furniture for the office such as&nbsp;<b>...</b></span><div class="osl">‎<a class="fl" href="http://www.staples.co.uk/StoreLocator.aspx" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;1&#39;,&#39;AFQjCNHM75jTau7FCFdSelKHzQJ2DlzxtA&#39;,&#39;&#39;,&#39;0CFAQ0gIoADAA&#39;,&#39;&#39;,&#39;&#39;,event)">Find a Store</a> -&nbsp;‎<a class="fl" href="http://www.staples.co.uk/computers-drives-accessories" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;1&#39;,&#39;AFQjCNE9dJ5OLlnzakDBwVP8bo2YrwB8CQ&#39;,&#39;&#39;,&#39;0CFEQ0gIoATAA&#39;,&#39;&#39;,&#39;&#39;,event)">Computers | Drives | Accessories</a> -&nbsp;‎<a class="fl" href="http://www.staples.co.uk/furniture-chairs-cabinets" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;1&#39;,&#39;AFQjCNF66f3bqcXFt9ihT4gjYKTbktG6UA&#39;,&#39;&#39;,&#39;0CFIQ0gIoAjAA&#39;,&#39;&#39;,&#39;&#39;,event)">Furniture | Chairs | Cabinets</a> -&nbsp;‎<a class="fl" href="http://www.staples.co.uk/pens-tape-desk-supplies/pens" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;1&#39;,&#39;AFQjCNHKCDAnzGEkPStIDZDDythTkBB_9Q&#39;,&#39;&#39;,&#39;0CFMQ0gIoAzAA&#39;,&#39;&#39;,&#39;&#39;,event)">Pens</a></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="84">
                                                            <h3 class="r"><a href="http://www.viking-direct.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;2&#39;,&#39;AFQjCNEU-6cHfwdoFtzyKmdPm3TIQiswXQ&#39;,&#39;&#39;,&#39;0CFUQFjAB&#39;,&#39;&#39;,&#39;&#39;,event)"><em>Office Supplies</em>, Stationery and Furniture from Viking</a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.viking-direct.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b1" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CFYQ7B0wAQ"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CFcQqR8wAQ">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:hO8aLbXj8jMJ:www.viking-direct.co.uk/+&cd=2&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;2&#39;,&#39;AFQjCNFTHaJYg8Vbj6Oqx_4cLUI6019AWg&#39;,&#39;&#39;,&#39;0CFgQIDAB&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.viking-direct.co.uk/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CFkQHzAB">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st">Viking is a leading supplier of <em>office supplies</em>, including everything from stationery and ink cartridges to <em>office furniture</em>. FREE DELIVERY AVAILABLE.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="90">
                                                            <h3 class="r"><a href="http://www.amazon.co.uk/stationery-office-supplies/b?ie=UTF8&node=192413031" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;3&#39;,&#39;AFQjCNHmXtZ7bLLwD5GM2_fDxJyja7Vxbg&#39;,&#39;&#39;,&#39;0CFsQFjAC&#39;,&#39;&#39;,&#39;&#39;,event)">Amazon.co.uk Stationery &amp; <em>Office Supplies</em>: furniture, storage <b>...</b></a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.amazon.co.uk/<b>stationery</b>-<b>office</b>-<b>supplies</b>/b?ie=UTF8&amp;node...</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b2" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CFwQ7B0wAg"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CF0QqR8wAg">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:bt7BP4IqFmwJ:www.amazon.co.uk/stationery-office-supplies/b%3Fie%3DUTF8%26node%3D192413031+&cd=3&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;3&#39;,&#39;AFQjCNE6ND-5RoTKGEBp4jq3dbjonF_xcA&#39;,&#39;&#39;,&#39;0CF4QIDAC&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.amazon.co.uk/stationery-office-supplies/b%3Fie%3DUTF8%26node%3D192413031+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CF8QHzAC">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st">Welcome to the Amazon.co.uk Stationery &amp; <em>Office Supplies</em> store, where you'll find a great selection of business and stationery items, including everyday&nbsp;<b>...</b></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="96">
                                                            <h3 class="r"><a href="http://www.tesco.com/direct/home/stationery-office-supplies/cat11260030.cat" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;4&#39;,&#39;AFQjCNGncqkdVFUwRVdusdIcU4iCB2uRDw&#39;,&#39;&#39;,&#39;0CGEQFjAD&#39;,&#39;&#39;,&#39;&#39;,event)">Buy Stationery &amp; <em>Office Supplies</em> from our Home Office range - Tesco <b>...</b></a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md bc">www.tesco.com › ... › <a href="http://www.tesco.com/direct/home/home-office/cat3376605.cat?catId=4294837259" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;4&#39;,&#39;AFQjCNHVW_gwN05UViyF8dLupUCqMRKULA&#39;,&#39;&#39;,&#39;0CGMQ6QUoADAD&#39;,&#39;&#39;,&#39;&#39;,event)">Home Office</a> › <a href="http://www.tesco.com/direct/home/stationery-office-supplies/cat11260030.cat?catId=4294795262" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;4&#39;,&#39;AFQjCNE-iLzjWjPBv5HLG3-W8LNV2itg3g&#39;,&#39;&#39;,&#39;0CGQQ6QUoATAD&#39;,&#39;&#39;,&#39;&#39;,event)">Stationery &amp; Office Supplies</a></cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b3" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CGUQ7B0wAw"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CGYQqR8wAw">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:QyOtcVYEVMwJ:www.tesco.com/direct/home/stationery-office-supplies/cat11260030.cat+&cd=4&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;4&#39;,&#39;AFQjCNH0-kRzhlFNy8-bJdz6cHJsgNqjlw&#39;,&#39;&#39;,&#39;0CGcQIDAD&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st">Buy Stationery &amp; <em>Office Supplies</em> from our Home Office range at Tesco Direct. We stock a great range of products at everyday prices. Clubcard points on every&nbsp;<b>...</b></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="104">
                                                            <h3 class="r"><a href="http://www.officerange.com/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;5&#39;,&#39;AFQjCNGB_LliqvYp43yWpsqi1Y8HprG3uw&#39;,&#39;&#39;,&#39;0CGkQFjAE&#39;,&#39;&#39;,&#39;&#39;,event)"><em>Office Supplies</em></a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.<b>office</b>range.com/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b4" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CGoQ7B0wBA"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CGsQqR8wBA">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:7BE_ubgDszYJ:www.officerange.com/+&cd=5&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;5&#39;,&#39;AFQjCNH4NSVR1d84xJ_7hiLN0lmKmnlH3Q&#39;,&#39;&#39;,&#39;0CGwQIDAE&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.officerange.com/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CG0QHzAE">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st"><em>Office Supplies</em>. Archive &amp; Storage · Archive &amp; Storage · Lever Arch Storage Module · Magazine File · Magazine Rack File · Mobile Storage Unit · View All.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="110">
                                                            <h3 class="r"><a href="http://www.officesuppliesnow.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;6&#39;,&#39;AFQjCNFsYsdJJ3nR6Daqz10f-kdRbkwRQg&#39;,&#39;&#39;,&#39;0CG8QFjAF&#39;,&#39;&#39;,&#39;&#39;,event)"><em>Office Supplies</em> Now Ltd</a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.<b>officesupplies</b>now.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b5" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CHAQ7B0wBQ"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CHEQqR8wBQ">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:PnQJTT4a4ucJ:www.officesuppliesnow.co.uk/+&cd=6&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;6&#39;,&#39;AFQjCNGwp7REek8IxSdOPb0_dbaGWTh1WQ&#39;,&#39;&#39;,&#39;0CHIQIDAF&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.officesuppliesnow.co.uk/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CHMQHzAF">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st"><em>Office Supplies</em> Now Ltd, Books &amp; Pads, Business Gifts, Catering Supplies, Computer Supplies, Conference, Presentation &amp; Planning, Desk, Paper.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                </div>
                                                <hr class="rgsep">
                                                <li class="g no-sep" id="lclbox" style="padding-left: 0px; padding-right: 0px">
                                                    <div id="results">
                                                        <div style="line-height: normal; margin-top: 7px">
                                                            <div style="padding-bottom: 8px">
                                                                <div class="vsc vscl vslru" data-extra="ludocid=16075736539060904922&amp;lumarker=A" sig="IZu">
                                                                    <div data-ved="0CHYQkgowBg">
                                                                        <div data-ved="0CHcQkQowBg"></div>
                                                                    </div>
                                                                    <!--m-->
                                                                    <div class="g" style="padding-top: 2px">
                                                                        <div style="width: 318px; float: left">
                                                                            <h3 class="r" style="line-height: 1"><a class="l" href="http://www.londongraphics.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;7&#39;,&#39;AFQjCNFgRpdLYlBiATbLvEF792urFf11vQ&#39;,&#39;&#39;,&#39;0CHgQoAIwBg&#39;,&#39;&#39;,&#39;&#39;,event)">London Graphic Centre</a></h3>
                                                                            <span><cite style="font-size: 14px">www.londongraphics.co.uk</cite></span><br>
                                                                            <div style="display: inline-block; margin-right: 5px"><span class="rtng" style="margin-right: 5px">4.7</span><span class="star star-red star-s"><span style="width: 63px"></span></span></div>
                                                                            <a jsaction="lor.o" data-fid="0x487604cce1e66f2f:0xdf187d35997e23da" data-ved="0CHkQiSswBg" data-async-trigger="reviewDialog" href="javascript:void(0)" class="fl"><span style="white-space: nowrap">11 Google reviews</span></a>&nbsp;·&nbsp;<a class="fl" href="https://www.google.co.uk/url?url=https://plus.google.com/111098566001387969742/%3Fhl%3Den%26socfid%3Dweb:lu:unknown:pluspage%26socpid%3D1&rct=j&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CHsQwh8wBg&q=office+supplies&usg=AFQjCNGyky51CvVGuCFtU6gUFXmN3s3tNQ">Google+ page</a>
                                                                        </div>
                                                                        <div style="margin-left: 26px; width: 22px; float: left"><span style="height: 38px; padding: 0; width: 22px"><a class="l" href="http://maps.google.co.uk/maps?espv=210&es_sm=93&um=1&ie=UTF-8&q=office+supplies&fb=1&gl=uk&hq=office+supplies&hnear=0x47d8a00baf21de75:0x52963a5addd52a99,London,+Greater+London&cid=16075736539060904922&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CH4QrwswBg" style="border: none; display: block; overflow: hidden; height: 30px; width: 16px"><span class="lumi6 lupin" style="display: block; background-position: 0 -35px; background-size: ; height: 30px; width: 16px"></span></a></span></div>
                                                                        <div class="addrlu" style="width: 146px; float: left">
                                                                            <span>16 Shelton St</span><br>
                                                                            <span>London</span><br>
                                                                            <nobr><span>020 7759 4500</span></nobr>
                                                                        </div>
                                                                        <!--n-->
                                                                    </div>
                                                                    <div class="vspib" aria-label="Result details" role="button" tabindex="0">
                                                                        <div class="vspii">
                                                                            <div class="vspiic"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="padding-bottom: 8px">
                                                                <div class="vsc vscl vslru" data-extra="ludocid=11679421253766721994&amp;lumarker=B" sig="-3B">
                                                                    <div data-ved="0CIEBEJIKMAc">
                                                                        <div data-ved="0CIIBEJEKMAc"></div>
                                                                    </div>
                                                                    <!--m-->
                                                                    <div class="g" style="padding-top: 2px">
                                                                        <div style="width: 318px; float: left">
                                                                            <h3 class="r" style="line-height: 1"><a class="l" href="http://www.buysell4u.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;8&#39;,&#39;AFQjCNEjo4LZnU5dGsp2Jjb21NOuv4u_MQ&#39;,&#39;&#39;,&#39;0CIMBEKACMAc&#39;,&#39;&#39;,&#39;&#39;,event)">Park Royal <em>Office</em> Furniture</a></h3>
                                                                            <span><cite style="font-size: 14px">www.buysell4u.co.uk</cite></span><br>
                                                                            <a jsaction="lor.o" data-fid="0x487611eafd9c74cb:0xa215a3c004e9b1ca" data-ved="0CIQBEIkrMAc" data-async-trigger="reviewDialog" href="javascript:void(0)" class="fl"><span style="white-space: nowrap">3 Google reviews</span></a>&nbsp;·&nbsp;<a class="fl" href="https://www.google.co.uk/url?url=https://plus.google.com/111874147319211189699/%3Fhl%3Den%26socfid%3Dweb:lu:unknown:pluspage%26socpid%3D1&rct=j&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CIYBEMIfMAc&q=office+supplies&usg=AFQjCNEzZ1K-MQxNyeTtVYZMviQyRj0qrw">Google+ page</a>
                                                                        </div>
                                                                        <div style="margin-left: 26px; width: 22px; float: left"><span style="height: 38px; padding: 0; width: 22px"><a class="l" href="http://maps.google.co.uk/maps?espv=210&es_sm=93&um=1&ie=UTF-8&q=office+supplies&fb=1&gl=uk&hq=office+supplies&hnear=0x47d8a00baf21de75:0x52963a5addd52a99,London,+Greater+London&cid=11679421253766721994&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CIcBEK8LMAc" style="border: none; display: block; overflow: hidden; height: 30px; width: 16px"><span class="lumi7 lupin" style="display: block; background-position: 0 -70px; background-size: ; height: 30px; width: 16px"></span></a></span></div>
                                                                        <div class="addrlu" style="width: 146px; float: left">
                                                                            <span>186 Acton Ln</span><br>
                                                                            <span>London</span><br>
                                                                            <nobr><span>020 8838 1500</span></nobr>
                                                                        </div>
                                                                        <!--n-->
                                                                    </div>
                                                                    <div class="vspib" aria-label="Result details" role="button" tabindex="0">
                                                                        <div class="vspii">
                                                                            <div class="vspiic"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="padding-bottom: 8px">
                                                                <div class="vsc vscl vslru" data-extra="ludocid=15059864599654276304&amp;lumarker=C" sig="oi9">
                                                                    <div data-ved="0CIoBEJIKMAg">
                                                                        <div data-ved="0CIsBEJEKMAg"></div>
                                                                    </div>
                                                                    <!--m-->
                                                                    <div class="g" style="padding-top: 2px">
                                                                        <div style="width: 318px; float: left">
                                                                            <h3 class="r" style="line-height: 1"><a class="l" href="http://www.ryman.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;9&#39;,&#39;AFQjCNFkVV60DsOU8qInft5ZgWJs0-z5tw&#39;,&#39;&#39;,&#39;0CIwBEKACMAg&#39;,&#39;&#39;,&#39;&#39;,event)">Ryman</a></h3>
                                                                            <span><cite style="font-size: 14px">www.ryman.co.uk</cite></span><br>
                                                                            <a jsaction="lor.o" data-fid="0x4876035762be8f03:0xd0ff631013df9cd0" data-ved="0CI0BEIkrMAg" data-async-trigger="reviewDialog" href="javascript:void(0)" class="fl"><span style="white-space: nowrap">2 Google reviews</span></a>
                                                                        </div>
                                                                        <div style="margin-left: 26px; width: 22px; float: left"><span style="height: 38px; padding: 0; width: 22px"><a class="l" href="http://maps.google.co.uk/maps?espv=210&es_sm=93&um=1&ie=UTF-8&q=office+supplies&fb=1&gl=uk&hq=office+supplies&hnear=0x47d8a00baf21de75:0x52963a5addd52a99,London,+Greater+London&cid=15059864599654276304&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CI8BEK8LMAg" style="border: none; display: block; overflow: hidden; height: 30px; width: 16px"><span class="lumi8 lupin" style="display: block; background-position: 0 -105px; background-size: ; height: 30px; width: 16px"></span></a></span></div>
                                                                        <div class="addrlu" style="width: 146px; float: left">
                                                                            <span>63 Borough High St</span><br>
                                                                            <span>London</span><br>
                                                                            <nobr><span>020 7407 0288</span></nobr>
                                                                        </div>
                                                                        <!--n-->
                                                                    </div>
                                                                    <div class="vspib" aria-label="Result details" role="button" tabindex="0">
                                                                        <div class="vspii">
                                                                            <div class="vspiic"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <a class="fl _gf" href="http://maps.google.co.uk/maps?espv=210&es_sm=93&um=1&ie=UTF-8&q=office+supplies&fb=1&gl=uk&hq=office+supplies&hnear=0x47d8a00baf21de75:0x52963a5addd52a99,London,+Greater+London&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CJEBELcD">Map results for <b style="font-weight: bold">office supplies</b> </a>
                                                    </div>
                                                </li>
                                                <hr class="rgsep">
                                                <div class="srg">
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="147">
                                                            <h3 class="r"><a href="http://www.easycrane.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;10&#39;,&#39;AFQjCNGeAppOJCky4WarIHUoKxulaY-xoA&#39;,&#39;&#39;,&#39;0CJQBEBYwCQ&#39;,&#39;&#39;,&#39;&#39;,event)"><em>Office Supplies</em> UK, Office Products, <em>Office Equipment</em>, Paper <b>...</b></a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.easycrane.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b9" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CJUBEOwdMAk"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CJYBEKkfMAk">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:ZimYGkxByD8J:www.easycrane.co.uk/+&cd=10&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;10&#39;,&#39;AFQjCNFuHtjUqlhCidlaaw7lQLnjrsoT8g&#39;,&#39;&#39;,&#39;0CJcBECAwCQ&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.easycrane.co.uk/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CJgBEB8wCQ">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st">The easy way to obtain <em>office supplies</em>, stationery &amp; <em>office furniture</em> for your business. Delivered with 100% Guarantee of satisfaction or your money back.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="153">
                                                            <h3 class="r"><a href="http://www.rebelofficesupplies.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;11&#39;,&#39;AFQjCNG3dK7gZJtxDOZG6mJ0Ilg5kM-RkQ&#39;,&#39;&#39;,&#39;0CJoBEBYwCg&#39;,&#39;&#39;,&#39;&#39;,event)">Discount <em>Office Stationery</em> at Rebel <em>Office Supplies</em> UK</a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.rebel<b>officesupplies</b>.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b10" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CJsBEOwdMAo"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CJwBEKkfMAo">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:5UtgsXHy4NkJ:www.rebelofficesupplies.co.uk/+&cd=11&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;11&#39;,&#39;AFQjCNEL39hHltXsqU4MsvZ3PLYWm1DgUw&#39;,&#39;&#39;,&#39;0CJ0BECAwCg&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.rebelofficesupplies.co.uk/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CJ4BEB8wCg">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st">Our extensive range of very competitevly priced <em>office</em> products, <em>supplies</em> and funiture is carefully selected to be as a diverse as your <em>office</em> needs.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="159">
                                                            <h3 class="r"><a href="http://www.caboodle.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;12&#39;,&#39;AFQjCNGMIuBw9k-aQEo_fZcqzjgg40eb3Q&#39;,&#39;&#39;,&#39;0CKABEBYwCw&#39;,&#39;&#39;,&#39;&#39;,event)">Caboodle - <em>Office Supplies</em>, Office Products &amp; Stationery Suppliers</a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.caboodle.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b11" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CKEBEOwdMAs"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CKIBEKkfMAs">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:0Z3egnguI1IJ:www.caboodle.co.uk/+&cd=12&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;12&#39;,&#39;AFQjCNFtooCBcUmQLXYpa4LPwXuGksc27Q&#39;,&#39;&#39;,&#39;0CKMBECAwCw&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.caboodle.co.uk/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CKQBEB8wCw">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st"><em>Office Supplies</em>, Office Products and <em>Office Stationery</em> including Printer Ink Cartridges and Laser Toners - all available with next business day delivery.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                    <li class="g">
                                                        <!--m-->
                                                        <div class="rc" data-hveid="165">
                                                            <h3 class="r"><a href="http://www.graysofficesupplies.co.uk/" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;13&#39;,&#39;AFQjCNFAqX5OvJPn5JlEzn2NiclSSJwoZA&#39;,&#39;&#39;,&#39;0CKYBEBYwDA&#39;,&#39;&#39;,&#39;&#39;,event)">Grays <em>Office Supplies</em></a></h3>
                                                            <div class="s">
                                                                <div>
                                                                    <div class="f kv _Cu" style="white-space: nowrap">
                                                                        <cite class="_md">www.grays<b>officesupplies</b>.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b12" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CKcBEOwdMAw"><span class="mn-dwn-arw"></span></a>
                                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CKgBEKkfMAw">
                                                                                <ul>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="http://webcache.googleusercontent.com/search?q=cache:IgL02FH8n1gJ:www.graysofficesupplies.co.uk/+&cd=13&hl=en&ct=clnk&gl=uk" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;13&#39;,&#39;AFQjCNENBmFdzNpmumCFzSjwWJ_aEsPBCw&#39;,&#39;&#39;,&#39;0CKkBECAwDA&#39;,&#39;&#39;,&#39;&#39;,event)">Cached</a></li>
                                                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem"><a class="fl" href="https://www.google.co.uk/search?espv=210&es_sm=93&q=related:www.graysofficesupplies.co.uk/+office+supplies&tbo=1&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CKoBEB8wDA">Similar</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="f slp"></div>
                                                                    <span class="st">Suppliers of Stationery, Office Machines, Inkjet and Laser Cartridges, <em>Office Furniture</em>, Presentation Equipment, and Office Catering Supplies.</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--n-->
                                                    </li>
                                                </div>
                                                <hr class="rgsep">
                                            </ol>
                                        </div>
                                        <!--z-->
                                    </div>
                                </div>
                                <div data-jibp="h" data-jiis="uc" id="bottomcu"></div>
                                <div data-jibp="h" data-jiis="uc" id="bottomads"></div>
                                <div class="med" id="extrares" style="padding: 0 8px">
                                    <div>
                                        <div data-jibp="h" data-jiis="uc" id="botstuff">
                                            <div id="brs" style="clear: both; overflow: hidden; margin-bottom: 17px">
                                                <div class="med _Hb" style="text-align: left">Searches related to <em>office supplies</em></div>
                                                <div class="_o">
                                                    <div class="brs_col">
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=lyreco+office+supplies&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CK0BENUCKAA"><b>lyreco</b> office supplies</a></p>
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=office+supplies+online&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CK4BENUCKAE">office supplies <b>online</b></a></p>
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=banner+office+supplies&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CK8BENUCKAI"><b>banner</b> office supplies</a></p>
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=set+office+supplies&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CLABENUCKAM"><b>set</b> office supplies</a></p>
                                                    </div>
                                                    <div class="brs_col">
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=quality+office+supplies&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CLEBENUCKAQ"><b>quality</b> office supplies</a></p>
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=clares+office+supplies&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CLIBENUCKAU"><b>clares</b> office supplies</a></p>
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=ross+office+supplies&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CLMBENUCKAY"><b>ross</b> office supplies</a></p>
                                                        <p class="_hw"><a href="https://www.google.co.uk/search?espv=210&es_sm=93&q=wg+office+supplies&revid=619198075&sa=X&ei=g7ohU8dptJHsBuvigKAO&ved=0CLQBENUCKAc"><b>wg</b> office supplies</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr class="rgsep">
                                            <div id="uh_hp" class=""><a href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="uh_hpl"></a></div>
                                            <div id="uh_h"><a id="uh_hl"></a></div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div id="foot" role="contentinfo">
                                        <div data-jibp="h" data-jiis="uc" id="cljs"></div>
                                        <span data-jibp="h" data-jiis="uc" id="xjs">
                                            <div id="navcnt">
                                                <table id="nav" style="border-collapse: collapse; text-align: left; margin: 30px auto 30px">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td class="b navend"><span class="csb gbil" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -24px 0; background-size: 167px; width: 28px"></span></td>
                                                            <td class="cur"><span class="csb gbil" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -53px 0; background-size: 167px; width: 20px"></span>1</td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=10&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>2</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=20&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>3</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=30&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>4</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=40&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>5</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=50&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>6</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=60&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>7</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=70&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>8</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=80&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>9</a></td>
                                                            <td><a class="fl" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=90&sa=N"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -74px 0; background-size: 167px; width: 20px"></span>10</a></td>
                                                            <td class="b navend"><a class="pn" href="https://www.google.co.uk/search?q=office+supplies&espv=210&es_sm=93&ei=g7ohU8dptJHsBuvigKAO&start=10&sa=N" id="pnnext" style="text-decoration: none; text-align: left"><span class="csb gbil ch" style="background: url(/assets/images/Google/nav_logo170_hr.png) no-repeat; background-position: -96px 0; background-size: 167px; width: 71px"></span><span style="display: block; margin-left: 53px; text-decoration: underline">Next</span></a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </span>
                                        <div></div>
                                        <div data-jibp="h" data-jiis="uc" id="gfn"></div>
                                        <div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div data-jibp="h" data-jiis="uc" id="rhscol">
                                <div id="rhs">
                                    <div id="rhs_block" class=" rhstc5">
                                        <div class="_kb mnr-c" id="mbEnd">
                                            <h2 class="_Vf"><span>Ads</span><span><a href="javascript:void(0)" class="ads-bbll" data-width="230" jsaction="bbl.tb" data-ved="0CLwBECc"><span class="_or _Pv" title="Why these ads?"></span></a><div class="ads-bblc" data-ved="0CL0BECg">
                                                <div class="_hi">
                                                    <div>These ads are based on your current search terms.</div>
                                                    <div class="_Ov">Visit Google’s <a href="javascript:void();" jsaction="wta.nta" data-ved="0CL4BECk">Ads Settings</a> to learn more or opt out.</div>
                                                </div>
                                            </div>
                                            </span></h2>
                                            <ol>

                                                <div id="lu_pinned_rhs">
                                                    <div style="background: rgb(255, 255, 255); padding-bottom: 12px; padding-left: 6px;"
                                                        id="rhs_map">
                                                        <a style="border: 1px solid rgb(235, 235, 235); width: 240px; height: 311px; display: block;"
                                                            href="http://maps.google.co.uk/maps?client=safari&amp;rls=en&amp;oe=UTF-8&amp;redir_esc=&amp;bav=on.2,or.r_gc.r_pw.&amp;biw=1272&amp;bih=873&amp;noj=1&amp;um=1&amp;ie=UTF-8&amp;q=office+supplies&amp;fb=1&amp;gl=uk&amp;hq=office+supplies&amp;hnear=0x487603523805d857:0x7a1806052dfad721,London+EC3M+8AA&amp;ei=mRBuTqHQK4yxhQfn2pyDDA&amp;sa=X&amp;oi=local_group&amp;ct=image&amp;ved=0CBsQtgM">
                                                            <img
                                                                id="lu_map" border="0" alt="" src="/assets/images/Google/map.gif"
                                                                width="240" height="311"></a>
                                                    </div>
                                                </div>

                                                <div class="vsc vsra" sig="kcD">
                                                    <H3><A id="an1" href="http://<%= SITE_URL%>/?sc_camp=6EB3D7B6-2FCB-4BD3-8458-826B21C2D721">Discount 
        <B>Office Supplies </B></A><NOBR style="margin-left: -5px;">&nbsp;<BUTTON 
        class="vspib"></BUTTON></NOBR></H3>
                                                    <DIV class="kv"><CITE><%= SITE_URL%></CITE></DIV>
                                                    <div style="color: rgb(102, 102, 102);">
                                                        officecore is <a
                                                            class="fl" href="">rated</a>

                                                        <table style="top: 2px; position: relative;" class="ti" border="0"
                                                            cellspacing="0" cellpadding="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <p style="margin: 0px; padding: 0px; width: 13px; height: 13px; overflow: hidden; position: relative;">
                                                                            <img
                                                                                style="left: -110px; top: -230px; position: absolute;" alt="Rated 4.7 out of 5.0"
                                                                                src="/assets/images/Google/nav_logo83.png">
                                                                        </p>
                                                                        <td>
                                                                            <p style="margin: 0px; padding: 0px; width: 13px; height: 13px; overflow: hidden; position: relative;">
                                                                                <img
                                                                                    style="left: -110px; top: -230px; position: absolute;" alt="" src="/assets/images/Google/nav_logo83.png">
                                                                            </p>
                                                                            <td>
                                                                                <p style="margin: 0px; padding: 0px; width: 13px; height: 13px; overflow: hidden; position: relative;">
                                                                                    <img
                                                                                        style="left: -110px; top: -230px; position: absolute;" alt="" src="/assets/images/Google/nav_logo83.png">
                                                                                </p>
                                                                                <td>
                                                                                    <p style="margin: 0px; padding: 0px; width: 13px; height: 13px; overflow: hidden; position: relative;">
                                                                                        <img
                                                                                            style="left: -110px; top: -230px; position: absolute;" alt="" src="/assets/images/Google/nav_logo83.png">
                                                                                    </p>
                                                                                    <td>
                                                                                        <p style="margin: 0px; padding: 0px; width: 13px; height: 13px; overflow: hidden; position: relative;">
                                                                                            <img
                                                                                                style="left: -82px; top: -230px; position: absolute;" alt="" src="/assets/images/Google/nav_logo83.png">
                                                                                        </p>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <span class="ac">Save up to 85%. Free Delivery<br>
                                                        Tel 020 3327 0630 
                                                    </span>
                                                </div>

                                                <li class="ads-ad" data-hveid="191">
                                                    <h3><a href="http://officecore.dev/?sc_camp=6EB3D7B6-2FCB-4BD3-8458-826B21C2D721" id="s1p1" style="display: none"></a><a href="http://officecore.dev/?sc_camp=6EB3D7B6-2FCB-4BD3-8458-826B21C2D721" id="vs1p1" onmousedown="return google.arwt(this)">Discount <b>Office Supplies</b>‎</a></h3>
                                                    <div class="kv _IH ads-visurl">
                                                        <cite>www.uk<b>office</b>direct.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b1009423552" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CMEBEOwd"><span class="mn-dwn-arw"></span></a>
                                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CMIBEKkf">
                                                                <ul>
                                                                    <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CMMBEIET">Why this ad?</div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="ads-creative">
                                    Huge Savings Free Next Day Delivery<br>
                                    UK Lowest Prices Guaranteed!
                                </div>
                                </li><li class="ads-ad" data-hveid="198">
                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=CSM00g7ohU92SAuP77Qa5-oDYBZvZjZICy-3l0yD4188JEAIoCFCgw7muB2C7vq6D0AqgAc3bjOQDyAEBqQJFEiZM3fy7PqoEIk_QR__hkFQLSMa3bvIqq3q9lHC2s_A3vO_CNKTLwyNdVeCAB5uk8xuQBwM&num=5&sig=AOD64_1AkJMwM7WaRTyobmy2V-XVCJh5mQ&rct=j&q=office+supplies&ved=0CMcBENEM&adurl=http://www.officesupplies.org.uk/storefront/home" id="s1p2" style="display: none"></a><a href="http://www.officesupplies.org.uk/" id="vs1p2" onmousedown="return google.arwt(this)"><b>Office Supplies</b>‎</a></h3>
                                    <div class="kv _IH ads-visurl">
                                        <cite>www.<b>officesupplies</b>.org.uk/</cite>‎<div class="action-menu ab_ctl">
                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b175732427" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CMgBEOwd"><span class="mn-dwn-arw"></span></a>
                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CMkBEKkf">
                                                <ul>
                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CMoBEIET">Why this ad?</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="_Yu"><span>0333 256 3662</span></div>
                                    <div class="ads-creative">
                                        Huge Savings, Easy Returns, Free<br>
                                        Delivery. Great Service. Buy Online
                                    </div>
                                </li>
                                <li class="ads-ad" data-hveid="204">
                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=CqISQg7ohU92SAuP77Qa5-oDYBcj8g9gDyKOgxn34188JEAMoCFDe7Z0mYLu-roPQCqABuM3S-QPIAQGpAkUSJkzd_Ls-qgQjT9BX1iuJSTVwRjVtO-AyVddSgGzcv6oHsOgttFIl3j4xR_mAB7CyrQaQBwM&num=6&sig=AOD64_0TQB5yzBHGLNOfPgUzE40VHEvARw&rct=j&q=office+supplies&ved=0CM0BENEM&adurl=http://www.monkeyoffice.co.uk" id="s1p3" style="display: none"></a><a href="http://www.monkeyoffice.co.uk/OfficeSupplies" id="vs1p3" onmousedown="return google.arwt(this)"><b>Office Supplies</b>.‎</a></h3>
                                    <div class="kv _IH ads-visurl">
                                        <cite>www.monkey<b>office</b>.co.uk/<b>OfficeSupplies</b></cite>‎<div class="action-menu ab_ctl">
                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b-657976888" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CM4BEOwd"><span class="mn-dwn-arw"></span></a>
                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CM8BEKkf">
                                                <ul>
                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CNABEIET">Why this ad?</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ads-creative">
                                        Save Up To 92%, Massive Savings !<br>
                                        Huge Range &amp; Free Next Day Delivery
                                    </div>
                                </li>
                                <li class="ads-ad" data-hveid="209">
                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=CNUZIg7ohU92SAuP77Qa5-oDYBZX-v6wEtcGg83D4188JEAQoCFCKjoenAmC7vq6D0AqgAZuKiN8DyAEBqQJFEiZM3fy7PqoEI0_QN9Mwikk0cEY1bTvgMjDMd5hs3L-qB7DoLbRSJd4PDxrfgAfN9fcgkAcD&num=7&sig=AOD64_1MTFpzecdblmc41e4l3l9Z0l0yMg&rct=j&q=office+supplies&ved=0CNIBENEM&adurl=http://www.postofficeshop.co.uk/office-supplies/" id="s1p4" style="display: none"></a><a href="http://www.postofficeshop.co.uk/OfficeSupplies" id="vs1p4" onmousedown="return google.arwt(this)">Buy Your <b>Office Supplies</b>‎</a></h3>
                                    <div class="kv _IH ads-visurl">
                                        <cite>www.post<b>offices</b>hop.co.uk/<b>OfficeSupplies</b></cite>‎<div class="action-menu ab_ctl">
                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b241705141" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CNMBEOwd"><span class="mn-dwn-arw"></span></a>
                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CNQBEKkf">
                                                <ul>
                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CNUBEIET">Why this ad?</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ads-creative">
                                        Save On <b>Office Supplies</b> &amp; <b>Equipment</b><br>
                                        Free Delivery, All Orders Over £30
                                    </div>
                                </li>
                                <li class="ads-ad" data-hveid="214">
                                    <h3><a href="http://www.google.co.uk/aclk?sa=L&ai=CxU4Cg7ohU92SAuP77Qa5-oDYBbqvgoQB7vPGkXDWsIPxOhAFKAhQgOWStQVgu76ug9AKyAEBqgQkT9AXl_WQWQNJfrSnONb8YSxlqtn8bYzjxdskPSjXOJRtIxTjgAeiiucPkAcD&num=8&sig=AOD64_2Nlt-nc8sIIvz1LtdVphlhTjjrlQ&rct=j&q=office+supplies&ved=0CNcBENEM&adurl=http://www.amazon.co.uk/b/%3Fie%3DUTF8%26node%3D192413031%26tag%3Dgooghydr-21%26hvadid%3D30061307206%26hvpos%3D1s5%26hvexid%3D%26hvnetw%3Dg%26hvrand%3D902361307363057262%26hvpone%3D%26hvptwo%3D%26hvqmt%3Db%26hvdev%3Dc%26ref%3Dpd_sl_5v8f2k01ck_b" id="s1p5" style="display: none"></a><a href="http://www.amazon.co.uk/Office" id="vs1p5" onmousedown="return google.arwt(this)"><b>Office Supplies</b> at Amazon‎</a></h3>
                                    <div class="kv _IH ads-visurl">
                                        <cite>www.amazon.co.uk/<b>Office</b></cite>‎<div class="action-menu ab_ctl">
                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b36813294" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CNgBEOwd"><span class="mn-dwn-arw"></span></a>
                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0CNkBEKkf">
                                                <ul>
                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0CNoBEIET">Why this ad?</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ads-creative">
                                        Large selection and low prices.<br>
                                        Free UK Delivery on Eligible Orders
                                    </div>
                                </li>
                                <li class="ads-ad" data-hveid="221">
                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=C4UUHg7ohU92SAuP77Qa5-oDYBaHVvKgE-YSB4IUB-NfPCRAGKAhQ0d34pAFgu76ug9AKoAHjtd39A8gBAakCRRImTN38uz6qBCJP0CfIvZBYC0jGt27yKpkhvqBwtrPwN7zvwjSky8MpUUX_gAeFyqICkAcD&num=9&sig=AOD64_3Ka6Qy3nsHJmZjseeeb5UK0jEeEg&rct=j&q=office+supplies&ved=0CN4BENEM&adurl=http://2110.xg4ken.com/media/redir.php%3Fprof%3D3%26camp%3D4378%26affcode%3Dkw767553%26cid%3D35864723897%26networkType%3Dsearch%26kdv%3Dc%26url%5B%5D%3Dhttp%253A%252F%252Fad.doubleclick.net%252Fclk%253B261980678%253B85985812%253Bg%253Fhttp:%252F%252Fwww.staples.co.uk%252FHome.aspx" id="s1p6" style="display: none"></a><a href="http://www.staples.co.uk/office_supplies" id="vs1p6" onmousedown="return google.arwt(this)">Staples <b>Office Supplies</b>‎</a></h3>
                                    <div class="kv _IH ads-visurl">
                                        <cite>www.staples.co.uk/<b>office</b>_<b>supplies</b></cite>‎<div class="action-menu ab_ctl">
                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b1543520889" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0CN8BEOwd"><span class="mn-dwn-arw"></span></a>
                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0COABEKkf">
                                                <ul>
                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0COEBEIET">Why this ad?</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ads-creative">
                                        Free UK Delivery On <b>Office Supplies</b><br>
                                        Over £30. Don’t Miss Out. Order Now
                                    </div>
                                </li>
                                <li class="ads-ad" data-hveid="226">
                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=C8SXGg7ohU92SAuP77Qa5-oDYBfu2hrwCxdLW5BGiv9kIEAcoCFDforv0______8BYLu-roPQCqABxZ3z-APIAQGpAkUSJkzd_Ls-qgQoT9BHtJqQWwNJfrTvOCn479Nqe5gG0OWaC7cHrUK8OJEh7B7r1h4KZYAHo-KMB5AHAw&num=10&sig=AOD64_2gsxTDveHSAPYhi8LCV0LsjewSbg&rct=j&q=office+supplies&ved=0COMBENEM&adurl=http://www.fireflyoffice.com" id="s1p7" style="display: none"></a><a href="http://www.fireflyoffice.com/office+stationery" id="vs1p7" onmousedown="return google.arwt(this)">OneStop <b>Office</b> Stationery‎</a></h3>
                                    <div class="kv _IH ads-visurl">
                                        <cite>www.firefly<b>office</b>.com/<b>office</b>+stationery</cite>‎<div class="action-menu ab_ctl">
                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b479570245" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0COQBEOwd"><span class="mn-dwn-arw"></span></a>
                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0COUBEKkf">
                                                <ul>
                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0COYBEIET">Why this ad?</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ads-creative">
                                        22,000+ <b>Products</b>, up to 92% off RRP<br>
                                        Next Day Delivery, Buy Online Now
                                    </div>
                                </li>
                                <li class="ads-ad" data-hveid="231">
                                    <h3><a href="http://www.google.co.uk/aclk?sa=l&ai=CfPGEg7ohU92SAuP77Qa5-oDYBbTQmblAvIO5snvop4MQEAgoCFCegIOzAmC7vq6D0AqgAbyQueIDyAEBqQIl_hK8mwq8PqoEKE_QN-OakFoDSX607zgp-O-8aCv2BtDlmgu3B61CvDiRIewe6_ExJH2AB6zvxh2QBwM&num=11&sig=AOD64_29MPke8iCCgiMC3aVBTjlKPPaKpw&rct=j&q=office+supplies&ved=0COgBENEM&adurl=http://www.OfficeFurnitureWorld.co.uk%3Faffiliate%3Dadwords" id="s1p8" style="display: none"></a><a href="http://www.officefurnitureworld.co.uk/" id="vs1p8" onmousedown="return google.arwt(this)"><b>Office Furniture</b> 70% Off‎</a></h3>
                                    <div class="kv _IH ads-visurl">
                                        <cite>www.<b>officefurniture</b>world.co.uk/</cite>‎<div class="action-menu ab_ctl">
                                            <a class="clickable-dropdown-arrow ab_button" href="https://www.google.co.uk/search?q=office+supplies&oq=office+supplies&aqs=chrome..69i57j69i61j0l4.3032j0j4&sourceid=chrome&espv=210&es_sm=93&ie=UTF-8#" id="am-b-1236385348" aria-label="Result details" jsaction="ab.tdd;keydown:ab.hbke;keypress:ab.mskpe" aria-expanded="false" aria-haspopup="true" role="button" data-ved="0COkBEOwd"><span class="mn-dwn-arw"></span></a>
                                            <div class="action-menu-panel ab_dropdown" jsaction="keydown:ab.hdke;mouseover:ab.hdhne;mouseout:ab.hdhue" role="menu" tabindex="-1" data-ved="0COoBEKkf">
                                                <ul>
                                                    <li class="action-menu-item ab_dropdownitem" role="menuitem" data-type="why_this_ad">
                                                        <div class="action-menu-button" jsaction="am.itemclk" role="menuitem" tabindex="-1" data-ved="0COsBEIET">Why this ad?</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ads-creative">
                                        Next Day Delivery on All <b>Furniture</b><br>
                                        Call Now Lines Open 9am-5pm
                                    </div>
                                </li>
                                </ol><div class="_kC"><a href="https://adwords.google.com/um/StartNewLogin?service=adwords&sourceid=awo&hl=en-GB&subid=uk-en-GB-et-symh" onmousedown="return rwt(this,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;&#39;,&#39;AFQjCNFf_TKJVeLz89YX7VWtmb-SRx7SWA&#39;,&#39;&#39;,&#39;0COwBEO4q&#39;,&#39;&#39;,&#39;&#39;,event)">See your ad here&nbsp;»</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="clear: both"></div>
        </div>
        <div data-jibp="h" data-jiis="uc" id="bfoot">
            <div id="nyc" role="dialog" style="display: none" class="rhstc5">
                <div id="nycp">
                    <div id="nycxh">
                        <button title="Hide result details" id="nycx"></button>
                    </div>
                    <div id="nycntg"></div>
                    <div id="nycpp">
                        <div style="position: absolute; left: 0; right: 0; text-align: center; top: 45%">
                            <img id="nycli">
                            <div id="nycm"></div>
                        </div>
                        <div id="nycprv"></div>
                    </div>
                </div>
                <div id="nyccur"></div>
            </div>
            <div id="nycf"></div>
        </div>
        <div data-jibp="h" data-jiis="uc" id="zbc"></div>
        </div><div id="footcnt">
            <div>
                <style>
                    .fmulti {
                    }

                    ._op {
                        bottom: 0;
                        left: 0;
                        position: absolute;
                        right: 0;
                    }

                    ._Rh {
                        background: #f2f2f2;
                        bottom: 0;
                        left: 0;
                        position: absolute;
                        right: 0;
                        -webkit-text-size-adjust: none;
                    }

                    .fbar p {
                        display: inline;
                    }

                    .fbar a, #fsettl {
                        text-decoration: none;
                        white-space: nowrap;
                    }

                    .fbar ._Vd {
                        padding: 0 0 0 27px !important;
                        margin: 0 !important;
                    }

                    .fbar ._wi {
                        padding: 0 !important;
                        margin: 0 !important;
                    }

                    ._rg a:hover {
                        text-decoration: underline;
                    }

                    ._nf img {
                        margin-right: 4px;
                    }

                    ._nf a, ._Rh #swml a {
                        text-decoration: none;
                    }

                    .fmulti {
                        text-align: center;
                    }

                        .fmulti #fsr {
                            display: block;
                            float: none;
                        }

                        .fmulti #fuser {
                            display: block;
                            float: none;
                        }

                    #fuserm {
                        line-height: 25px;
                    }

                    #fsr {
                        float: right;
                        white-space: nowrap;
                    }

                    #fsl {
                        white-space: nowrap;
                    }

                    #fsett {
                        background: #fff;
                        border: 1px solid #999;
                        bottom: 30px;
                        padding: 10px 0;
                        position: absolute;
                        box-shadow: 0 2px 4px rgba(0,0,0,0.2);
                        -webkit-box-shadow: 0 2px 4px rgba(0,0,0,0.2);
                        text-align: left;
                        z-index: 100;
                    }

                        #fsett a {
                            display: block;
                            line-height: 44px;
                            padding: 0 20px;
                            text-decoration: none;
                            white-space: nowrap;
                        }

                    ._rg #fsettl:hover {
                        text-decoration: underline;
                    }

                    ._rg #fsett a:hover {
                        text-decoration: underline;
                    }

                    ._ib {
                        color: #777;
                    }

                    ._qb {
                        color: #222;
                        font-size: 14px;
                        font-weight: normal;
                        -webkit-tap-highlight-color: rgba(0,0,0,0);
                    }

                        ._qb:hover, ._qb:active {
                            color: #444;
                        }

                    ._Sc {
                        display: inline-block;
                        position: relative;
                    }

                    ._Bb, ._nc {
                        height: 13px;
                        width: 8px;
                    }

                        ._Bb:before, ._nc:before {
                            border: 8px solid rgba(255,255,255,0);
                            border-radius: 8px;
                            content: '';
                            position: absolute;
                        }

                        ._Bb:before {
                            border-left: 8px solid #777;
                            left: 1px;
                        }

                        ._nc:before {
                            border-right: 8px solid #777;
                            left: -9px;
                        }

                        ._Bb:after, ._nc:after {
                            border: 12px solid rgba(255,255,255,0);
                            content: '';
                            position: absolute;
                            top: -4px;
                        }

                        ._Bb:after {
                            border-left: 10px solid #f6f6f6;
                            left: -4px;
                        }

                        ._nc:after {
                            border-right: 10px solid #f6f6f6;
                            left: -10px;
                        }

                    ._jj ._Bb:after {
                        border-left: 10px solid white;
                    }

                    ._jj ._nc:after {
                        border-right: 10px solid white;
                    }

                    ._qb {
                        padding: 8px 16px;
                        margin-right: 10px;
                    }

                    ._ib {
                        margin: 40px 0;
                    }

                    ._cg {
                        margin-right: 10px;
                    }

                    .fbar {
                        background: #f2f2f2;
                        border-top: 1px solid #e4e4e4;
                        line-height: 40px;
                        min-width: 980px;
                    }

                    ._pp {
                        margin-left: 135px;
                    }

                    ._np {
                        margin-left: 135px;
                    }

                    .fbar p, .fbar a, #fsettl, #fsett a {
                        color: #777;
                    }

                        .fbar a:hover, #fsett a:hover {
                            color: #333;
                        }

                    .fbar {
                        font-size: small;
                    }

                    #fuser {
                        float: right;
                    }
                </style>
                <div id="fbarcnt" style="position: relative; visibility: visible; display: block; height: 41px;">
                    <div id="fbar" style="position: absolute; bottom: 0; left: 0; right: 0">
                        <div class="fbar"><span class="_pp"><span id="fsl"><a class="_wi" href="https://support.google.com/websearch/?p=ws_results_help&hl=en-GB&fg=1">Help</a><a class="_Vd" href="javascript:void(0)" data-bucket="websearch" jsaction="gf.sf" id="_mQ" target="_blank" data-ved="0CO8BEC4">Send feedback</a><a class="_Vd" href="https://www.google.co.uk/intl/en/policies/?fg=1">Privacy &amp; Terms</a><span class="_Vd" data-jibp="h" data-jiis="uc" id="fescapehatch"><a href="https://www.google.co.uk/setprefdomain?prefdom=US&prev=https://www.google.com/search%3Fq%3Doffice%2Bsupplies%26oq%3Doffice%2Bsupplies%26aqs%3Dchrome..69i57j69i61j0l4.3032j0j4%26sourceid%3Dchrome%26espv%3D210%26es_sm%3D93%26ie%3DUTF-8&sig=0_dZ-DTb3vWI03CcIWhP-rv5HgPL0%3D&fg=1">Google.com</a></span><span data-jibp="h" data-jiis="uc" id="fbbv"></span><span data-jibp="h" data-jiis="uc" id="fbsh"></span></span></span></div>
                    </div>
                </div>
            </div>
        </div>
        <style data-jiis="uc" id="_css1"></style>
        <div data-jibp="h" data-jiis="uc" id="bpsw">
        </div>
        <div id="xfootw" data-jiis="bp">
            <div data-jibp="h" data-jiis="uc" id="xfoot">
                <div id="xjsd">
                </div>
                <div id="xjsi" data-jiis="bp">
                </div>
            </div>
        </div>
        <style data-jiis="uc" id="_css2"></style>
        <div data-jibp="h" data-jiis="uc" id="lfoot"></div>
        </div><div data-async-type="reviewDialog" id="reviewDialog" class="y yp" data-ved="0CPIBEMQs"></div>
        </div>
        <table cellspacing="0" cellpadding="0" class="gstl_0 gssb_c" style="width: 597px; top: 44px; position: absolute; left: 127px;">
            <tbody>
                <tr>
                    <td class="gssb_f"></td>
                    <td class="gssb_e" style="width: 100%; display: none;"></td>
                </tr>
                <tr style="height: 0px;">
                    <td></td>
                    <td>
                        <div id="pocs" style="display: none; position: absolute; left: 0px;">
                            <div id="pocs0"><span><span>Google</span> Instant is unavailable. Press Enter to search.</span>&nbsp;<a href="https://www.google.co.uk/support/websearch/bin/answer.py?answer=186645&form=bb&hl=en-GB">Learn more</a></div>
                            <div id="pocs1"><span>Google</span> Instant is off due to connection speed. Press Enter to search.</div>
                            <div id="pocs2">Press Enter to search.</div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="wtalb" id="wtalb" style="display: none;">
            <span class="wtalbal"></span><span class="wtalbar"></span>
            <div class="wtalbc f"></div>
        </div>
        <div style="position: fixed; -webkit-transition: left 0.1s, top 0.1s; transition: left 0.1s, top 0.1s; z-index: 102; display: none;">
            <div class="lu_map_tooltip" style="position: absolute; border: 1px solid rgba(0, 0, 0, 0.2); border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; padding: 6px 12px; line-height: 1.2; font-size: 85%; background-color: white; white-space: nowrap; -webkit-box-shadow: rgba(0, 0, 0, 0.2) 0px 2px 4px; right: 0px;"></div>
        </div>
        <style type="text/css">
            #nycntg {
                margin: 6px 25px 10px 0;
            }

            #nycp {
                background-color: #fafafa;
                border-left: 1px solid #ebebeb;
                bottom: 0;
                left: 0;
                margin-left: 33px;
                min-width: 240px;
                position: absolute;
                right: 0;
                top: 0;
                visibility: hidden;
                z-index: 102;
                padding: 38px 16px 10px 31px;
            }

            .nyc_open #nycp {
                visibility: visible;
            }

            #nycf {
                display: none;
                height: 1px;
                left: 0;
                min-width: 940px;
                position: absolute;
                visibility: hidden;
                z-index: -1;
            }

            .nyc_open #nycf {
                display: block;
            }

            .nyc_opening #nycp, .nyc_opening #nycprv {
                display: block;
                visibility: hidden!important;
            }

            #nyccur {
                background: #fafafa;
                height: 100%;
                left: 33px;
                opacity: 0;
                position: absolute;
                top: 0;
                width: 0;
                z-index: 120;
            }

                #nyccur.wipeRight {
                    border-right: 1px solid #e8e8e8;
                    opacity: 1;
                    -webkit-transition: width 0.08s ease-in;
                    width: 100%;
                }

                #nyccur.fadeOut {
                    opacity: 0;
                    -webkit-transition: opacity 0.08s linear;
                    width: 100%;
                }

                #nyccur.fadeIn {
                    opacity: 1;
                    -webkit-transition: opacity 0.08s linear;
                    width: 100%;
                }

                #nyccur.wipeLeft {
                    border-right: 1px solid #eee;
                    opacity: 1;
                    -webkit-transition: width 0.08s ease-out;
                    width: 0;
                }

            .nyc_open .vspib, .nyc_opening .vspib {
                padding-right: 0;
                -webkit-transition: padding-right .2s ease;
            }

                .nyc_open .vspib .vspii, .nyc_opening .vspib .vspii {
                    -webkit-border-top-right-radius: 0;
                    -webkit-border-bottom-right-radius: 0;
                    border-right: none;
                }

            .nyc_open #nycxh {
                cursor: pointer;
                opacity: 0.7;
                padding: 15px;
                position: absolute;
                right: 1px;
                top: 12px;
            }

                .nyc_open #nycxh:hover {
                    opacity: 1;
                }

            #nycx {
                display: none;
            }

            .nyc_open #nycx {
                border: none;
                cursor: pointer;
                display: block;
                padding: 0;
            }

            #nycntg h3 .esw {
                display: none;
            }

            #nyc .vshid {
                display: inline;
            }

            #nyc #nycntg .vshid a {
                white-space: nowrap;
            }

            #nycntg a:link {
                border: 0;
                text-decoration: none;
            }

            #nycntg a:hover {
                text-decoration: underline;
            }

            #vsi, .vsi {
                border: none;
                width: 100%;
            }

            .vslru.vso:before {
                border: 1px solid #ebebeb;
                border-right: none;
                bottom: -8px;
                top: -7px;
                left: -7px;
                right: -9px;
                content: "";
                position: absolute;
                z-index: -1;
            }

            .vslru div.vspib {
                bottom: -6px;
                top: -7px;
            }

                .vslru div.vspib .vspii {
                    border-radius: 0;
                }

            .vscl.vso.vslru:before, .vscl.vslru div.vspib {
                top: -4px;
            }
        </style>
    </body>
</html>
