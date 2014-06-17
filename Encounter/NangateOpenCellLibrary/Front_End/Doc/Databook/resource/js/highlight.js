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

highlightClassNum = 'highlightNum';
highlightClass1st = 'highlight1st';
class1st = 'stOrder';


disableHL = false;

function disableHighlight() {
  disableHL = true;
}

// Enables highlight in all td elements that contain an id attribute
function highlightAllCells() {
  var elems=document.getElementsByTagName('TD');  
  for (var j=0; j<elems.length; j++) {
    var id = elems[j].getAttribute('eHL');
    if (id == 'y') {
      elems[j].onmouseover=function() {highlight(this);}
      elems[j].onmouseout=function() {highlight(this);}
      elems[j].onclick=function() {highlight(this);}
      elems[j].width = '70px';
      elems[j].align = 'center';
    }
  }
}


// highlight one element
function highlight(my_el) {
  var highlightClass = (my_el.className == highlightClass1st ||
                        my_el.className == class1st) ? highlightClass1st : highlightClassNum;
                        
  if (!my_el.origClassName) {
    if (my_el.className && my_el.className != highlightClass) {
      my_el.origClassName = my_el.className;
    }
  }
  if (my_el.origClassName) {
    my_el.className = ( my_el.className != my_el.origClassName )? 
      my_el.origClassName : highlightClass;
  } else {
    if (!my_el.className) {
      my_el.className = highlightClass;
    } else {
      my_el.className = null;
    }
  }
}

// highlight one element. used for traceability
function highlightPage(my_el) {
  var highlightClass = (my_el.className == highlightClass1st ||
                        my_el.className == class1st) ? highlightClass1st : highlightClassNum;
  if (!my_el.origClassName) {
    if (my_el.className && my_el.className != highlightClass) {
      my_el.origClassName = my_el.className;
    }
  } 
  if (my_el.origClassName) {
    my_el.className = ( my_el.className != my_el.origClassName )? 
      my_el.origClassName : highlightClass;
  } else {
    if (!my_el.className) {
      my_el.className = highlightClass;
    } 
  }
}


// highlight one entire column
function cHL(el) {
  var table = el.parentNode.parentNode.parentNode;
  for (i in table.rows) {
    cells = table.rows[i].cells;
    var index = el.cellIndex;
    try {
      if (cells[1].tagName == 'TH')
        ++index;
      if (cells[2].tagName == 'TH')
        ++index;
      if (cells[3].tagName == 'TH')
        ++index;
    } catch(err) {} // tagName may be undefined for that object
    for (j in cells) {
      try{
        if (cells[j].tagName == 'TH')
          continue;
        if (cells[j].getAttribute("noHL") == 'true')
          continue;
      } catch(err) {}
      if (cells[j].cellIndex == index)
        highlight(cells[j]);
    }
  }
}

// highlight one entire row
function rHL(el) {
  if (disableHL) {
    disableHL = false;
    return;
  }
  var parent=el.parentNode;
  var td = parent.childNodes[1];
  while (td) {
    if (td.tagName!="TH") {
      highlight(td);
    }
    td = td.nextSibling;
  }
} 

// func to process the query from html address line
// it accept values with one '*' to select all elements
// in one dimension
// Ex: el_1_*_0_3
function highlightElements(val) {
  var elems = document.getElementsByTagName('TD');
  for (var j = 0; j < elems.length; j++) {
    el = elems[j];
    if (el.id.match(val)!=null) {
      highlight(el,1);
    }
  }
}

function highlightPageElements(val) {
  var elems = document.getElementsByTagName('TD');
  for (var j = 0; j < elems.length; j++) {
    el = elems[j];
    if (el.id.match(val)!=null) {
      highlightPage(el,1);
    }
  }
} 

// hide one html element
function hide(el) {
  el.style.display="none";
//	highlight(el);
}

// hide one entire row
// Ex: OutputSlope_NoCorner.xml?rowHide=aoi12x1,clkbufx16
// The input of the func is the list of th titles to be hidden
function rowHide(val) {
  var el = document.getElementById('pop_row_ret');
  el.value = el.value+val;
	
  var pars = val.split(',');
  for (var k = 0; k < pars.length; k++) {
    var id = pars[k];
    var elems = document.getElementsByTagName('TABLE');
    
    for (var i = 0; i < elems.length; i++) {
      if (elems[i].className=="big") {
        var el = elems[i].childNodes[2].childNodes[0];
        while (el)  {
          if (el.childNodes[0].childNodes[0].innerHTML.match(id)!=null) {
            var tr=el;
            var td = tr.childNodes[0];            
            while (td) {
              hide(td);
              td = td.nextSibling;
            }
            hide(tr);
          }
          el = el.nextSibling;
        }	
      }
    }
  }
} 

// hide one column of a timming table
// param val: X,Y
//  X = row, must be either 0 or 1
//  Y = column name (content of the header)
function columnHide(val) {
  var el3 = document.getElementById('pop_col_ret');
  el3.value = el3.value+val;
  var pars = val.split(',');
  for (var k = 0; k < pars.length; k+=2) {
    var row = parseInt(pars[k]);
    var id  = pars[k+1];
    var elems = document.getElementsByTagName('TABLE');
    
    for (var i = 0; i < elems.length; i++) {
      if (elems[i].className=="big") {
        var colspan = elems[i].childNodes[1].childNodes[0].childNodes[1].colSpan;
        var col = 1;
        for (; col < elems[i].childNodes[1].childNodes[row].childNodes.length; col++) {
          var th = elems[i].childNodes[1].childNodes[row].childNodes[col];
          if(th.innerHTML.match(id)!=null) {
            // th
            hideColHeader(th, elems[i].childNodes[1], colspan, row, col);
            
            //td
            hideColBody(elems[i].childNodes[2].childNodes[0], colspan, row, col);
          }
          if (row==1 && col >= colspan) break;
        }
      }
    }
  }
}

// helper func to hide the table body
function hideColBody(tr, colspan, row, col) {
  var td;
  while (tr) {
    var fi = tr.childNodes[1].tagName=="TH";
    if (row==0) {
      for (var j = 0; j < colspan; j++) {
        td = tr.childNodes[(col-1)*colspan + j + (fi?2:1)];
        hide(td);
      }
    } else if (row==1) {
      td = tr.childNodes[col - 1 + (fi?2:1)];
      while (td) {
        hide(td);
        for (j=0; j<colspan; j++) {
          td = td.nextSibling;
          if (!td) break;
        }
      }
    }
    tr = tr.nextSibling;
  }
}

// helper func to hide the table header
function hideColHeader(th, el, colspan, row, col) {
  if (row==0) {
    hide(th);
    var tr = el.childNodes[row+1];
    if (tr) {
      while (tr) {
        for (var j = 0; j < colspan; j++) {
          td = tr.childNodes[(col-1)*colspan + j + 1];
          hide(td);
        }
        tr = tr.nextSibling;
      }
    }
  } else if (row==1) {
    var th1 = el.childNodes[0].childNodes[1];
    while (th1) {
      th1.colSpan = th1.colSpan-1;
      th1 = th1.nextSibling;
    }
    while (th) {
      hide(th);
      for (j=0; j<colspan; j++) {
        th = th.nextSibling;
        if (!th) break;
      }
    }
  }
} 




///// HIDE - POPUP FUNCS
function passText(passedvalue) {
  if (passedvalue != "") {
    document.displayform.filters.innerHTML = document.displayform.filters.innerHTML+
      "<OPTION>"+passedvalue+"</OPTION>";
  }
}

function removeSelected()
{
  var el = document.displayform.filters;
  var i;
  for (i = el.length - 1; i>=0; i--) {
    if (el.options[i].selected) {
      el.remove(i);
    }
  }
}
function buildFilter()
{
  var el = document.displayform.filters;
  var i;
  var query="";
  for (i = el.length - 1; i>=0; i--) {
     query += el.options[i].innerHTML;
     if (i!=0) query+=",";
  }
  return query;
}

function sendValue(){
  var selValue = buildFilter();
  window.opener.document.retEl.value = selValue;
  window.close();
}

function openPopupFilter(elRet) {
  myWin = window.open(
      'resource/js/popup.html','popuppage',
      'width=250,height=200,top=100,left=100');
  document.retEl = document.getElementById(elRet);
}

function submitHides() {
  var row = document.getElementById('pop_row_ret').value;
  var col = document.getElementById('pop_col_ret').value;
  if (row || col) {
    query = "?";
    if (row) {
      query += "rowHide="+row;
      if (col) query += "&";
    } 
    if (col) {
      query += "colHide="+col;
    }
    
    var loc = location.href;
    var pos = loc.indexOf('?');
    if (pos >= 0) loc = location.href.substring(0, pos);
    document.selectform.action = loc+query;
  }
}

