///////////////////////////////////////////////////////////-*- mode: cc-mode -*-
//                                                                             /
//                      Copyright (C) 2005-2010, Nangate Inc.                  /
//                             All rights reserved.                            /
//                                                                             /
////////////////////////////////////////////////////////////////////////////////
//                                                                             /
//                              Copyright Notice:                              /
//                                                                             /
//  This document contains confidential and proprietary information.           /
//  Reproduction or usage of this document, in part or whole, by any means,    /
//  electrical, mechanical, optical, chemical or otherwise is prohibited,      /
// without written permission from Nangate Inc..                               /
//                                                                             /
//  The information contained herein is protected by Danish and international  /
//  copyright laws.                                                            /
//                                                                             /
////////////////////////////////////////////////////////////////////////////////

function verifyBrowser() {
  var browserOk = false;
  var browser = '';
  if (navigator.userAgent.indexOf("Firefox") != -1) {
    var versionindex = navigator.userAgent.indexOf("Firefox") + 8;
    var version = parseInt(navigator.userAgent.charAt(versionindex));
    if (version < 3.0)
      browser = 'ff2';
    else
      browser = 'ff3';
    if (version >= 2.0)
      browserOk = true;
  }
  if (navigator.appVersion.indexOf("MSIE") != -1) {
    browser = 'IE';
    var temp = navigator.appVersion.split("MSIE");
    var version = parseFloat(temp[1]);
    if (version >= 7) //NON IE browser will return 0
      browserOk = true;
  }
  
  if (!browserOk) {
    body = document.getElementsByTagName("BODY")[0];
    body.innerHTML = '<p class="comment">Better visualized with '+
      getSupportedBrowsers() + '.</p>' + body.innerHTML;
  }
  return browser;
}

function getSupportedBrowsers() {
  return 'Firefox 2.0+ and IE 7.0';
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  End of file.                                                              //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
