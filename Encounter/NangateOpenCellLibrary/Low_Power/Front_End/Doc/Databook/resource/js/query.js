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

function queryString() {
  var query = window.location.search.substring(1);
  queryFromString(query);
}

function queryFromString(query) {
  var parms = query.split('&');
  for (var i=0; i<parms.length; i++) {
    var pos = parms[i].indexOf('=');
    if (pos > 0) {
      var key = parms[i].substring(0,pos);
      var val = parms[i].substring(pos+1);
      if (key == "elem") {
        highlightPageElements(val);
      } else if (key == "colHide") {
        columnHide(val);
      } else if (key == "rowHide") {
        rowHide(val);
      }
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  End of file.                                                              //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
