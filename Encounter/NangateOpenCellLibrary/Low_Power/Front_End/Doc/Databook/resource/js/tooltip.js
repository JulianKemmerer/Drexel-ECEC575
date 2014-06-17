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

var nangate_tt = null;
var nangate_image = null;

function NgTooltip() {
  //-----------------
  // Class attributes
  //-----------------
  this.bgColor = "#FFFFCC";
  this.text = '';
  this.id = '';
  this.obj = null;
  this.active = false;
  this.okToFade = true;

  //--------
  // Methods
  //--------
  this.create = function() {
    var tdObj = document.getElementById(this.id);
    if (tdObj) {
      this.obj = document.createElement('div');
      this.obj.setAttribute('id', 'ToolTip');
      this.obj.setAttribute('style', 'position:absolute; visibility:hidden');
      tdObj.appendChild(this.obj);
    }

    var t = '<a href=' + this.text + ' onmouseover=\"doNotFade()\" onmouseout=\"doFade()\">See table from where this value was extracted</href>';

    var extraDiv = document.createElement('div');
    extraDiv.innerHTML += t;
    this.obj.appendChild(extraDiv);
    if (this.bgColor) 
      this.obj.style.backgroundColor = this.bgColor;

    this.show();
  }

  this.show = function() {
    this.obj.style.zIndex = 69;
    this.active = true;
    this.obj.style.visibility = 'visible';
    this.obj.style.display = 'block';
  }

  this.hide = function() {
    var _self = this;
    setTimeout(function() {_self.fadeOut();}, 100);
  }

  this.fadeOut = function() {
    if (this.okToFade) {
      this.obj.style.zIndex = -1;
      this.active = false;
      this.obj.style.visibility = 'hidden';
      this.obj.style.display = 'none';
    }
  }
}

function NgImTooltip() {
  //-----------------
  // Class attributes
  //-----------------
  this.id = '';
  this.obj = null;

  //--------
  // Methods
  //--------
  this.create = function() {
    var images = document.getElementById(this.id).getElementsByTagName('div')[0].getElementsByTagName('img');
    this.obj = images[0];
    this.show();
  }

  this.show = function() {
    this.obj.style.display = "inline";
  }

  this.hide = function() {
    var _self = this;
    setTimeout(function() {_self.fadeOut();}, 2500);
  }

  this.fadeOut = function() {
    this.obj.style.display = 'none';
  }
}

function tt(id, text) {
  if (id && !text) {
    nangate_image = new NgImTooltip();
    nangate_image.id = id;
    nangate_image.create();
  } else if (text && id) {
    nangate_tt = new NgTooltip();  
    nangate_tt.text = text;
    nangate_tt.id = id;
    nangate_tt.create();
  }
  else if (nangate_tt)
    nangate_tt.hide();
  else if (nangate_image)
    nangate_image.hide();
}

function doNotFade() {
  nangate_tt.okToFade = false;
}

function doFade() {
  nangate_tt.okToFade = true;
  nangate_tt.fadeOut();
}

function createToolTips() {
  var elems=document.getElementsByTagName('div'); 
  for (var j = 0; j < elems.length; j++) {
    var ttDiv = elems[j].getAttribute('cTt');
    if (ttDiv != null) {
      var parent = elems[j].parentNode;
      var id = parent.getAttribute('id');
      elems[j].onmouseover=new Function('tt(\''+id+'\', \''+ttDiv+'\')');
      elems[j].onmouseout=new Function('tt()');
    }
  }
}

function createHighlight() {
  var elems=document.getElementsByTagName('td'); 
  for (var j = 0; j < elems.length; j++) {
    var ttDiv = elems[j].className;
    if (ttDiv != null) {
      if ((ttDiv == 'num') || (ttDiv == 'neg')) {
        elems[j].onmouseover = new Function('highlight(this)');
        elems[j].onmouseout  = new Function('highlight(this)');
        elems[j].onclick     = new Function('highlight(this)');
      }
    }
  }
}
