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

function tBr(branch){
  var objBranch = document.getElementById(branch).style;
  var obj = document.getElementById('I'+branch);
  
  if (obj) {  
    if (objBranch.display=="none" || (objBranch.display=="" && document.getElementById(branch).getAttribute('hide')=="true")) {
      objBranch.display="block";
      obj.innerHTML = '<img border="0" src="'+openImg+'"/>';
    } else {
      objBranch.display="none";
      obj.innerHTML = '<img border="0" src="'+closeImg+'"/>';
    }
  }
}

function oBr(branch){
  var objBranch = document.getElementById(branch).style;
  var obj = document.getElementById('I'+branch);
  if (obj) {
    objBranch.display="block";
    obj.innerHTML = '<img border="0" src="'+openImg+'"/>';
  }
}

function oBrs(branch, parentTag){
  oBr(parentTag);
  oBr(branch);
}

