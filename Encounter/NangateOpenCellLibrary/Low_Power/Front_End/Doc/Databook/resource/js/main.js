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

loadScript('resource/js/browserdetect.js', 'javascript');
loadScript('resource/js/highlight.js'    , 'javascript');
loadScript('resource/js/collapse.js'     , 'javascript');
loadScript('resource/js/query.js'        , 'javascript');
loadScript('resource/js/tooltip.js'      , 'javascript');
loadScript('resource/js/cookies.js'      , 'javascript');
loadScript('resource/js/config.js'       , 'javascript');
loadScript('resource/js/ctp.js'          , 'javascript');
loadScript('resource/js/tables.js'       , 'javascript');

function NanInit() {	
  verifyBrowser();
  createTables();
  createToolTips();
  createHighlight();
  queryString();
  goToId();
}

function goToId() {
  var url = location.href;
  var fIdPos = url.search('#');
  if (fIdPos > 0) {
    location.href = url.substring(fIdPos);
  }
}

function tablePopUp(path, id) {
  var pageInfo = document.getElementById('PageInfo');
  var tableNode = document.getElementById(id);
  var title = "<p class=\"Subtitle\">" + tableNode.parentNode.parentNode.getAttribute('eName') + "</p>";
  var ctxStr = "<br/><span class=\"weakComment\">Cell <span class=\"comment\">" + tableNode.getAttribute('t') + "</span>";

  var tableHtml = tableHtmlForPopUp(tableNode, pageInfo, id);
  if (tableHtml) {
    var myWin = window.open(path + '/resource/js/plot.html#table&+' + title + '&+' + ctxStr + '&+' + id + '&+' + tableHtml, 
                            '_blank', 
                            'titlebar="no", scrollbars="no", menubar="no", location="no", directories="no", status="no", fullscreen="yes", top=100, left=100');
  }
}

function tableHtmlForPopUp(tableNode, pageInfo, id) {
  var tableHtml = "";
  if (!tableNode || !pageInfo)
    return tableHtml;

  var summName = pageInfo.getAttribute('SummName');
  var corner = pageInfo.getAttribute('Corner');
  var refFile = pageInfo.getAttribute('RefFile');
  var trgFile = pageInfo.getAttribute('TrgFile');
  var cellPath = '../../Cells/';

  var i1 = tableNode.getAttribute('i1');
  var i2 = tableNode.getAttribute('i2');
  var arc = tableNode.getAttribute('t');
  var t = tableNode.getAttribute('unit');
  var el = tableNode.getAttribute('el');
  var trace = tableNode.getAttribute('trace');

  if (i1) {
    tableHtml = '<a id=\"PageInfo\" SummName=\"' + summName + '\" Corner=\"' + corner + '\" CellPath=\"' + cellPath + '\"'
      + ' RefFile=\"../../' + refFile + '\" TrgFile=\"../../' + trgFile + '\"/>'
      + '<div ngTable=\"tGr\" tGr=\"1\" ctx=\";;;;;;;\" i1=\"' + i1 + '\" ' + (i2 ? ('i2=\"' + i2 + '\" ') : '') + 'arc=\"' + arc + '\">' 
      + '<div t=\"' + t + '\" id=\"' + id + '\"' + (trace ? ' trace=\"' + trace + '\"' : '') +  ' el=\"' + el + '\"/>'
      + '</div>';
  }
  return tableHtml;
}

function showPlot(path, str, title, cell, pin, ctx, width, height, extraTitle, deckList) {
  title = "<p class=\"Subtitle\">" + title + "</p>";
  var ctxStr = "";
  ctxStr += 
    (cell ? "<br/><span class=\"weakComment\">Cell <span class=\"comment\">" + cell + "</span>" : "") +
    (pin ? "<br/>Pin <span class=\"comment\">" + pin + "</span>" : "");
  if (ctx)
    ctxStr += "<br/><span class=\"comment\">" + ctx + "</span>";
  if (extraTitle)
    ctxStr = "<br/><span class=\"weakComment\">" + extraTitle + "</span>" + ctxStr;
  if (deckList) {
    var dlArray = deckList.split(';');
    ctxStr += ";";
    for (i = 0; i < dlArray.length - 1; i++)
      ctxStr += dlArray[i] + "*";
  }
  var myWin = window.open(
      path+'/resource/js/plot.html#'+str+'&+'+title+'&+'+ctxStr,'',
      'width='+width+',height='+height+',top=100,left=100');
}

function readPlot() {

  var params = location.hash.split('&+');
  var str = params[0].substr(1, params[0].length);
  var title = params[1];
  var context = params[2];

  if (str == 'none') {
    var hri = context.split(';')[0];
    var names = context.split(';')[1].split('*');
    var i;
    var content = '<br/>';
    var tmp_name;
    content += '<p>'+ hri+ '</p><ul class="TOC4">';
    for (i = 0; i < names[i].length -1; i++) {
      var resumed_name = '';
      var full_path = '';
      var path = '';
      var k;
      tmp_name = names[i].split('/');
      for (k = 0; k < tmp_name.length - 1; k++) {
        full_path += tmp_name[k] + '/';
        path += tmp_name[k] + '/';
      }
      full_path += tmp_name[tmp_name.length-1];
      var tmp = tmp_name[tmp_name.length-1].split('-');
      var j;
      for (j = 3; j < tmp.length; j++) {
        resumed_name += tmp[j] + '-';
      }
      var final_name = '';
      var name2 = tmp_name[tmp_name.length-1];
      if ((tmp_name.length > 1) && (name2.substr(name2.length-3,3) != '.gz')) {
        final_name = resumed_name.split('.')[0];
      } else {
        final_name = tmp_name[tmp_name.length-1];
      }
      if ((tmp_name.length > 1) && (name2.substr(name2.length-3,3) != '.gz')) {
        content += '<li><a target="deck" href="' + full_path + '" onClick="document.getElementById(\'fullname\').innerHTML = \'Full Path:<br/> ' 
          + path + '<br/>' + tmp_name[tmp_name.length -1] + '\'">' + final_name + '</a></li>';
      } else {
        content += '<li><a target="deck">'+ final_name+'</a></li>';
      }
    }
    content += '</ul><br/><p id="fullname"></p><br/><iframe name="deck" width="100%" height="55%" frameborder="0"></iframe>';
    window.document.body.innerHTML += content;
  } else if (str == 'table') {
    window.document.body.innerHTML += context + '<br/>' + params[4];
    createTables();
    createToolTips();
    var tableWidth = document.getElementById('t_' + params[3]).offsetWidth;
    var tableHeight = document.getElementById('t_' + params[3]).offsetHeight;
    if (!(params[5] || params[5] == 'noResize')) {
      var browser = verifyBrowser();
      if (browser == 'ff2')
        top.resizeTo(tableWidth + 80, tableHeight + 150);
      else
        top.resizeTo(tableWidth + 160, tableHeight + 250);
    } else if (params[6]) {
      queryFromString(params[6]);
    }
  } else {
    window.document.body.innerHTML += context + '<br/><center><img src="' + str + '"/></center>';
  }

  window.document.getElementById("_title").innerHTML = title;
}

function deckPage(header, human_readable_info, spice_file) {
  window.document.body.innerHTML = header + human_readable_info + '<br/>' + spice_file;
  window.document.getElementById("_title").innerHTML = title;
}

function showPlotList(path, str, title, cell, pin, ctx, width, height, count) {
  title = "<p class=\"Subtitle\">" + title + "</p>";
  var ctxStr = "<br/><span class=\"weakComment\">Cell <span class=\"comment\">" + cell + "</span><br/>Pin <span class=\"comment\">" + pin + "</span>";
  if (ctx)
    ctxStr += "<br/><span class=\"comment\">" + ctx + "</span>";
  ctx += "</span>";
  var myWin = window.open(path + '/resource/js/plot_list.html', '' , 'width=' + width + ',height=' + height + ',top=100,left=100');
  myWin.mplot=str;
  myWin.mtitle=title;
  myWin.mctx=ctxStr;
  myWin.current = 1;
  myWin.plotCount = count;
}

function readPlotList() {
  var str = window.mplot;
  var title = window.mtitle;
  var context = window.mctx;
  var current = window.current;
  var plotCount = window.plotCount;
  
  baseHtml = '<table class="navigation" width="100%">' +
             '  <tr>' +
             '    <td align="left" id="_title">' + title + '</td>' +
             '    <td align="right">' +
             '      <a href="http://www.nangate.com" target="_blank"><img src="../image/Nangatelogo_small.gif" border="0"/></a>' +
             '      <br/><br/>' +
             '      <span class="comment">Copyright ® 2004-2010 Nangate Inc.</span>' +
             '    </td>' +
             '  </tr>';
  
  if (plotCount > 1) {
    baseHtml += '<tr><td>';
    if (current > 1)
      baseHtml += '<img src="../image/first.gif" onClick="window.current = 1; readPlotList();"/>' +
                  '<img src="../image/blank.gif"/>' + 
                  '<img src="../image/previous.gif" onClick="window.current--; readPlotList();"/>';
    else
      baseHtml += '<img src="../image/blank.gif"/><img src="../image/blank.gif"/><img src="../image/blank.gif"/>';
    baseHtml += '<img src="../image/blank.gif"/>' + current + ' of ' + plotCount + '<img src="../image/blank.gif"/>';
    if (current != plotCount)
      baseHtml += '<img src="../image/next.gif" onClick="window.current++; readPlotList();"/>' +
                  '<img src="../image/blank.gif"/>' +
                  '<img src="../image/last.gif" onClick="window.current = plotCount; readPlotList();"/>';
    baseHtml += '</td></tr>';
  }
       
  baseHtml += '</table><hr class="navigation_tb">';
  window.document.body.innerHTML = baseHtml + context + '<br/><center><img name="plot" src="' + str + window.current + '.png"/></center>';
}

function copyToClipboard() {
  CopiedTxt = document.selection.createRange();
  CopiedTxt.execCommand("Copy");
}

function loadScript(name,type) {
  if (type == 'javascript') {
    elem = 'script';
  } else if (type == 'css') {
    elem = 'link';
  }
  
  var script = document.createElement(elem);
  script.type = 'text/'+type ;
  
  if (type == 'javascript') {
    script.src = name;
  } else if (type == 'css') {
    script.href = name;
    script.rel = 'stylesheet';
  }	
  document.getElementsByTagName('head')[0].appendChild(script); 
	
  name = '../'+name;
  script = document.createElement(elem);
  script.type = 'text/'+type ;
  if (type == 'javascript') {
    script.src = name;
  } else if (type == 'css') {
    script.href = name;
    script.rel = 'stylesheet';
  }	
  document.getElementsByTagName('head')[0].appendChild(script); 
}

function oFr(str) {
  var pageInfo = document.getElementById('PageInfo');
  var refFile = pageInfo.getAttribute('RefFile');
  var trgFile = pageInfo.getAttribute('TrgFile');
  if (refFile && trgFile) {
    var params = str.split("%");
    myWin = window.open('','','');
    myWin.document.write('<html><head></head><frameset cols="50%,50%">\n');
    myWin.document.write('<frame  src="' + refFile + params[0] + params[2] + '" scrolling="auto"/>\n');
    myWin.document.write('<frame src="' + trgFile + params[1] + params[3] + '" scrolling="auto"/>\n');
    myWin.document.write('</frameset></html>\n');
  }
}

function oTraceFr(str) {
  if (window.opener)
    window.opener.open(str, '_blank','');
  else
    window.open(str, '_self','');
}

function unsupportedBrowserMsg() {
  alert("Your browser does not support this feature. Please consider using one of the Nangate Liberty Analyzer recommended browsers.");
}

function oTFr(str) {
  if (verifyBrowser() == 'IE') {
    unsupportedBrowserMsg();
    return;
  }
  var pageInfo = document.getElementById('PageInfo');
  var pageInfoFather = pageInfo.parentNode;
  var refFile = pageInfo.getAttribute('RefFile');
  var trgFile = pageInfo.getAttribute('TrgFile');
  // Removing pageInfo so we don't have problems with ref and trg pages
  pageInfo.parentNode.removeChild(pageInfo);
  if (refFile && trgFile) {
    var params = str.split("%");
    var myDivs = document.getElementsByTagName('div');
    var refId = params[2].substring(TABLE_ID.length + 1);
    var trgId = params[3].substring(TABLE_ID.length + 1);
    var refHtml = getTableFromPage(refFile, refId, myDivs[0]);
    var trgHtml = getTableFromPage(trgFile, trgId, myDivs[0]);

    myWin = window.opener.open('', '_blank','');
    myWin.document.write('<html><head></head><frameset rows="50%,50%"><frame src="" name="leftPage" scrolling="auto"/><frame src="" name="rightPage" scrolling="auto"/></frameset></html>');
    myWin.leftPage.location = 'plot.html' + refHtml + '&+noResize' + '&+' + params[0];
    myWin.rightPage.location = 'plot.html' + trgHtml + '&+noResize' + '&+' + params[1];

  }
  // Adding back original pageInfo
  pageInfoFather.appendChild(pageInfo);
}

function getTableFromPage(file, elemId, fatherDiv) {
  var xmlHttp;
  try {
    xmlHttp = new XMLHttpRequest();
  } catch (e) {   
  }
  var tableHtml = "";
  if (xmlHttp) {
    xmlHttp.open("GET", file, false);
    xmlHttp.send(null);
    var myHTML = xmlHttp.responseText;
    var tempDiv = document.createElement('div');
    tempDiv.innerHTML = myHTML.replace(/<script(.|\s)*?\/script>/g, '');
    tempDiv.style.visibility = 'hidden';
    fatherDiv.appendChild(tempDiv);   
    var tableNode = document.getElementById(elemId);
    pageInfo = document.getElementById('PageInfo');
    var title = "<p class=\"Subtitle\">" + tableNode.parentNode.parentNode.getAttribute('eName') + " [" + pageInfo.getAttribute('Corner') +  "]</p>";
    var ctxStr = "<br/><span class=\"weakComment\">Cell <span class=\"comment\">" + tableNode.getAttribute('t') + "</span>";

    tableHtml = '#table&+' + title + '&+' + ctxStr + '&+' + elemId + '&+' + tableHtmlForPopUp(tableNode, pageInfo, elemId);
    tempDiv.parentNode.removeChild(tempDiv);
  } else {
    unsupportedBrowserMsg();
  }
  return tableHtml;
}


/*
Function to change the contents of a look-up table based on a combo box selection.
*/
function updateTable(comboBox, tableId, fallCount, riseCount) {
  table = document.getElementById(tableId);
  unit = comboBox.options[comboBox.selectedIndex].getAttribute('unit');
  if (fallCount > 0) {
    fixUnit(table.rows[2].cells[1].childNodes[0], unit);
    if (riseCount > 0)
      fixUnit(table.rows[2 + fallCount].cells[0].childNodes[0], unit);
  } else if (riseCount > 0)
    fixUnit(table.rows[2].cells[1].childNodes[0], unit);
  for (i in table.rows) {
    cells = table.rows[i].cells;
    for (j in cells) {
      try {
        if (cells[j].tagName == 'TD') {
          cell = cells[j].getElementsByTagName('div')[0];
          tolExc = cell.getAttribute('t' + comboBox.options[comboBox.selectedIndex].value);
          
          // Fix highlight first
          textNode = cell.childNodes[0];
          if (textNode.nodeName == '#text') {
            if (tolExc == 'up' || tolExc == 'down') {
              spanNode = document.createElement('span');
              attr = document.createAttribute('class');
              if (tolExc == 'up')
                attr.value = 'erU';
              else
                attr.value = 'erD';
              spanNode.setAttributeNode(attr);
              spanNode.appendChild(textNode.cloneNode(true));
              cell.replaceChild(spanNode, textNode);
              textNode = spanNode.childNodes[0];
            }
          } else {
            spanNode = textNode;
            textNode = spanNode.childNodes[0];
            
            if (tolExc == 'up' && spanNode.getAttribute('class') == 'erD')
              spanNode.setAttribute('class', 'erU');  
            else if (tolExc == 'down' && spanNode.getAttribute('class') == 'erU')
              spanNode.setAttribute('class', 'erD');
            else if (tolExc != 'up' && tolExc != 'down')
              cell.replaceChild(textNode, spanNode);
          }
          
          textNode.nodeValue = cell.getAttribute(comboBox.options[comboBox.selectedIndex].value);
        }
      } catch(err) {}
    }
  }
}

/*
Helper function to set the unit information in a table header. Used only by 'updateTable'.
*/
function fixUnit(node, unit) {
  if (node.nodeValue.indexOf('[') != -1)
    node.nodeValue = node.nodeValue.slice(0, node.nodeValue.indexOf('['));
  if (unit != '')
    node.nodeValue += '[' + unit + ']';
}
