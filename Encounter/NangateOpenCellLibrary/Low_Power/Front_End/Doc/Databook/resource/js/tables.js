///////////////////////////////////////////////////////////-*- mode: cc-mode -*-
//                                                                             /
//                      Copyright (C) 2005-2006, Nangate Inc.                  /
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


var laElems = new Array();
var lastIndex = 0;

var TABLE_ID = "Table_";

function createTables() {
  var elems = document.getElementsByTagName('div');
  for (var elCount = 0; elCount < elems.length; elCount++) {
    var ngTable = elems[elCount].getAttribute('ngTable');
    if (ngTable) {
      var ngPair = new Array();
      ngPair.push(elems[elCount]);
      ngPair.push(ngTable);
      laElems.push(ngPair);
    }
  }
  createTablesTimeOut();
}

function createTablesTimeOut() {
  var start = new Date().getTime();
  var pageInfo = document.getElementById('PageInfo');
  var focus = (pageInfo ? pageInfo.getAttribute('Focus') : '');
  for (var elCount = lastIndex; elCount < laElems.length; elCount++) {
    var elemNode = laElems[elCount][0];
    var ngType = laElems[elCount][1];
    var newElem = document.createElement('div');

    switch (ngType) {
      case "hidGr":
        var hidGroup = elemNode.getAttribute('hidGr');
        newElem.innerHTML = createHiddenPowerTable(elemNode, hidGroup);
        break;
      case "tGr":
        var tableGroup = elemNode.getAttribute('tGr');
        newElem.innerHTML = createCellTable(elemNode, tableGroup, focus);
        break;
      case "leakGrp":
        newElem.innerHTML = createLeakTable(elemNode);
        break;
      case "leakCurrGrp":
        newElem.innerHTML = createCcsPowerTable(elemNode, 'leakCurr');
        break;
      case "parGrp":
        newElem.innerHTML = createCcsPowerTable(elemNode, 'par');
        break;
      case "CharEnv":
        newElem.innerHTML = createCharEnvTable(elemNode);
        break;
      case "sumSc":
        var pageInfo = document.getElementById('PageInfo');
        var summName = pageInfo.getAttribute('SummName');
        var cellPath = pageInfo.getAttribute('CellPath');
        var corner = pageInfo.getAttribute('Corner');
        newElem.innerHTML = createScalarSumm(elemNode, cellPath, corner, summName);
        break;
      case "sumGr":
        var pageInfo = document.getElementById('PageInfo');
        var cellPath = pageInfo.getAttribute('CellPath');
        var corner = pageInfo.getAttribute('Corner');
        var index1 = getIndexArray(elemNode, 'i1');
        var index2 = getIndexArray(elemNode, 'i2');
        var sumGroup = elemNode.getAttribute('sumGr');
        if (index1 && index2)
          newElem.innerHTML = create2DSumm(elemNode, index1, index2, cellPath, corner, mapName(sumGroup));
        else if (index1)
          newElem.innerHTML = create1DSumm(elemNode, index1, cellPath, corner, mapName(sumGroup));
        break;
      case "stApp":
        var pageInfo = document.getElementById('PageInfo');
        var cellPath = pageInfo.getAttribute('CellPath');
        var corner = pageInfo.getAttribute('Corner');
        var index1 = getIndexArray(elemNode, 'i1');
        var stApp = elemNode.getAttribute('stApp');
        if (index1)
          newElem.innerHTML = create1StOrderAppSumm(elemNode, index1, cellPath, corner, mapName(stApp));
        break;
      case "capGr":
        var capGroup = elemNode.getAttribute('capGr');
        if (capGroup == 'nldm') {
          newElem.innerHTML = createNldmCap(elemNode);
        } else if (capGroup == 'max') {
          newElem.innerHTML = createMaxCap(elemNode);
        }
        break;
      case "minPW":
        var minPW = elemNode.getAttribute('minPW');
        newElem.innerHTML = createMinPw(elemNode, minPW);
        break;
      case "QoRSumm":
      case "mxcSumm":
        var pageInfo = document.getElementById('PageInfo');
        var cellPath = pageInfo.getAttribute('CellPath');
        var corner = pageInfo.getAttribute('Corner');
        var qorSumm = elemNode.getAttribute('QoRSumm');
        var mxcSumm = elemNode.getAttribute('mxcSumm');
        if (qorSumm)
          newElem.innerHTML = createQoRSumm(elemNode, qorSumm, cellPath, corner);
        else if (mxcSumm)
          newElem.innerHTML = createMxcSumm(elemNode, mxcSumm, cellPath, corner);
        break;
      case "sumSt": 
        var sumStats = elemNode.getAttribute("sumSt");
        var pageInfo = document.getElementById('PageInfo');
        var cellPath = pageInfo.getAttribute('CellPath');
        var corner = pageInfo.getAttribute('Corner');
        var refNode = pageInfo.getAttribute('RefNode');
        newElem.innerHTML = createStatsSumm(elemNode, cellPath, corner, refNode, mapName(sumStats), focus);
        break;
      case "DATable":
        var pageInfo = document.getElementById('PageInfo');
        var cellPath = pageInfo.getAttribute('CellPath');
        var corner = pageInfo.getAttribute('Corner');
        var multiLib = pageInfo.getAttribute('MultiLib');
        newElem.innerHTML = createDATables(elemNode, cellPath, corner, multiLib);
        break;
      case "ConstrValidSumm":
        var pageInfo = document.getElementById('PageInfo');
        var cellPath = pageInfo.getAttribute('CellPath');
        var corner = pageInfo.getAttribute('Corner');
        newElem.innerHTML = createConstrValidTable(elemNode, cellPath, corner);
        break;
      default:
    }
    elemNode.appendChild(newElem);
    if (new Date().getTime() - start > 3000) {
      lastIndex = elCount + 1;
      setTimeout('createTablesTimeOut()',0);
      return;
    }
  }
}

// ************** Cell Page tables
function createHiddenPowerTable(elemNode, nRows) {
  var index1Array = getIndexArray(elemNode, 'i1');
  var tableHtml = "";
  if (index1Array) {
    tableHtml += "<table border=\"1\" class=\"big\">";
    tableHtml += createTableHeader(index1Array, null, null);
    var innerTables = elemNode.getElementsByTagName('div');
    var tName = "pin " + elemNode.getAttribute('arc');
    for (var j = 0; j < nRows; j++) {
      if (j == 0)
        tableHtml += fillTableRow(innerTables[j], tName, nRows);
      else {
        tableHtml += fillTableRow(innerTables[j], null, null);
      }
    }
    tableHtml += "</table>";
    tableHtml += "<hr class=\"Title\"/>";
  }
  return tableHtml;
}

function createCellTable(elemNode, tableGroup, focus) {
  var index1Array = getIndexArray(elemNode, 'i1');
  var index2Array = getIndexArray(elemNode, 'i2');
  var index3Array = getIndexArray(elemNode, 'i3');
  var dimensions = index3Array ? 3 : (index2Array ? 2 : 1);
  var innerTables = elemNode.getElementsByTagName('div');
  var tableHtml = "";
  for (var i = 0; i < innerTables.length; i++) {
    if (innerTables[i])
      tableHtml += "<a name=\"" + TABLE_ID + innerTables[i].getAttribute('id') + "\"/>";
  }

  var tableClass = (elemNode.parentNode.nodeName == "TD") ? "inner" : "big";
  tableHtml += '<table border="1" class="' + tableClass + '" id="t_' + innerTables[0].getAttribute('id')  + '">';

  var eName = elemNode.parentNode.getAttribute('eName');
  var addTimType = (eName && (eName == "Setup/Hold Metastability Window")) ? false : true;
  if (dimensions > 1) {
    var nCols = index2Array.length - 3;
    var nRows = index1Array.length - 3;
    if (dimensions == 3)
      nRows *= index3Array.length - 3;
    // Checks if strength factor indication should be added (grouped comparisons)
    var addSF = false;
    var pageInfo = document.getElementById('PageInfo');
    if (pageInfo) {
      var refSF = pageInfo.getAttribute('RefSF');
      if (refSF) {
        if (eName && (eName == "Propagation Delay" || eName == "Output Transition" || eName == "Dynamic Power Consumption"))
          addSF = true;
      }
    }
    tableHtml += createTableHeader(index1Array, index2Array, index3Array, addSF);
    if (dimensions == 2)
      tableHtml += fillTable2D(nCols, index1Array, index2Array, innerTables[0], (tableGroup == 2 ? innerTables[1] : null), elemNode.getAttribute('arc'));
    else
      tableHtml += fillTable3D(nCols, index1Array, index3Array, innerTables[0], (tableGroup == 2 ? innerTables[1] : null), elemNode.getAttribute('arc'));
    tableHtml += createCtx(elemNode.getAttribute('ctx'), nCols, dimensions, addTimType);
    tableHtml += createStats(innerTables[0], (tableGroup == 2 ? innerTables[1] : null), nCols, dimensions, focus);
  } else if (dimensions == 1) {
    tableHtml += createTableHeader(index1Array, index2Array, index3Array);
    var nRows = tableGroup;
    var tName = elemNode.getAttribute('arc');
    for (var j = 0; j < nRows; j++) {
      if (j == 0)
        tableHtml += fillTableRow(innerTables[j], tName, nRows);
      else {
        tableHtml += fillTableRow(innerTables[j], null, null);
      }
    }
    var nCols = index1Array.length - 3;
    tableHtml += createCtx(elemNode.getAttribute('ctx'), nCols, dimensions, addTimType);
    tableHtml += createStats(innerTables[0], (tableGroup == 2 ? innerTables[1] : null), nCols, dimensions, focus);
  }
  tableHtml += "</table>";
  tableHtml += "<hr class=\"Title\"/>";
  return tableHtml;
}

function createLeakTable(elemNode) {
  var header = elemNode.getAttribute('lTitles').split(';');
  var entries = elemNode.getAttribute('entries').split('#');
  var tableHtml = "<table border=\"1\" class=\"big\">";
  tableHtml += "<tr>";
  for (var i = 0; i < header.length - 1; i++)
    tableHtml += "<th>" + header[i] + "</th>";
  for (var i = 0; i < entries.length - 1; i++) {
    tableHtml += "<tr>";
    var cols = entries[i].split('$');
    for (var j = 0; j < cols.length - 1; j++) {
      if (j == (cols.length - 2))
        tableHtml += fillValue('leak', cols, j, i);
      else
        tableHtml += "<td align=\"center\">" + cols[j] + "</td>";
    }
    tableHtml += "</tr>";        
  }
  tableHtml += "</tr>";
  tableHtml += "</table>";
  tableHtml += "<hr class=\"Title\"/>";
  return tableHtml;
}

function createCcsPowerTable(elemNode, type) {
  var entries = elemNode.getAttribute('entries').split('#');
  var tableUnit = elemNode.getAttribute('grpUnit');
  var tableHtml = "<table border=\"1\" class=\"big\">";
  tableHtml += "<tr><th width='100'>When</th><th width='100'>Type</th><th width='100'>Pin</th><th width='90'>Value " + tableUnit + "</th></tr>";
  for (var i = 0; i < entries.length - 1; i++) {
    tableHtml += "<tr>";
    var cols = entries[i].split('$');
    for (var j = 0; j < cols.length - 1; j++) {
      if (j == (cols.length - 2))
        tableHtml += fillValue(type, cols, j, i);
      else
        tableHtml += "<td align=\"center\">" + cols[j] + "</td>";
    }
    tableHtml += "</tr>";        
  }
  tableHtml += "</table>";
  tableHtml += "<hr class=\"Title\"/>";
  return tableHtml;
}

function createCharEnvTable(elemNode) {
  var entries = elemNode.getAttribute('entries').split('$');
  var tableHtml = "<table border=\"1\" class=\"big\">";
  for (var i = 0; i < entries.length - 1; i++) {
    tableHtml += "<tr>";
    var cols = entries[i].split(';');
    tableHtml += "<th align=\"left\" width=200>" + cols[0] + "</th><td>" + cols[1] + "</td>";
    tableHtml += "</tr>";        
  }
  tableHtml += "</table>";
  tableHtml += "<hr class=\"Title\"/>";
  return tableHtml;
}

function createMaxCap(node) {
  var table = "";
  var unit = node.getAttribute('unit');
  var libMaxCap = node.getAttribute('libMaxCap');
  var libMaxCapFO = node.getAttribute('libMaxCapFO');
  if (libMaxCap) {
    table += "<table border=\"1\" class=\"big\">"
      + "<tr><th colspan=\"2\">Library</th></tr>"
      + "<tr><th>" + unit + "</th><th>FO</th></tr>"
      + "<tr><td class=\"num\">" + libMaxCap + "</td><td class=\"num\">" + (libMaxCapFO ? libMaxCapFO : "-") + "</td></tr>"
      + "</table>";
  }
  var hasFileCap = node.getAttribute('hasFileCap');
  var hasFileFO = node.getAttribute('hasFileFO');
  var hasEMCap = node.getAttribute('hasEMCap');
  var hasEMFO = node.getAttribute('hasEMFO');
  var hasDev = node.getAttribute('hasDev');
  var fInv = false, fConv = false, fBounds = false, fDelay = false, fMinFo = false;
  if (hasFileCap || hasEMCap) {
    table += "<table border=\"1\" class=\"big\">" +
      "<tr>" + 
      "<th rowspan=\"2\">Output</th>" +
      (hasFileCap ? "<th colspan=\"2\">Liberty</th>" : "") +
      (hasEMCap ? "<th colspan=\"2\">Electromigration</th>" : "") +
      (hasDev ? "<th>Deviation</th>" : "") +
      "</tr>" +
      "<tr>" + 
      (hasFileCap ? "<th>" + unit + "</th><th>FO</th>" : "") +    
      (hasEMCap ? "<th>" + unit + "</th><th>FO</th>" : "") +
      (hasDev ? "<th>%</th>" : "") +
      "</tr>";
    var entries = node.getAttribute('entries').split('$');
    for (var i = 0; i < entries.length - 1; i++) {
      table += "<tr>";
      var cols = entries[i].split(';');
      var emFlags = "", libFlags = "";
      if (cols[6] == 0 && hasEMCap) {
        fInv = true;
        emFlags += "&#8224;";
      } else {
        if (cols[6] == 1 && hasEMCap) {
          fConv = true;
          emFlags += "&#8225;";
        }
        if (cols[7] && hasEMCap) {
          fBounds = true;
          emFlags += "&#8226;";
        }
        if (cols[8] && hasEMCap) {
          fDelay = true;
          emFlags += "&#176;";
        }
        if (cols[9] && hasEMCap) {
          fMinFo = true;
          emFlags += "&#168;";
        }
      }
      if (cols[10] && hasFileCap) {
        fMinFo = true;
        libFlags += "&#168;";
      }     
      for (var j = 0; j < 6; j++) {
        var toPrint = false;
        if ((j > 0 && j < 3 && hasFileCap) ||
            (j > 2 && j < 5 && hasEMCap) ||
            (j == 5 && hasDev) ||
            j == 0)
          toPrint = true;
        if (toPrint) {
          if (!cols[j])
            cols[j] = "-";
          switch (j) {
          case 0:
            table += "<td class=\"num\">" + cols[0] + "</td>";
            break;
          case 1: 
            table += fillValue('mxc', cols, j, i + "_" + j, null, null, libFlags);
            break;
          case 3:
            if (emFlags == "&#8224;")
              cols[j] = "";
            table += fillValue('mxc', cols, j, i + "_" + j, null, null, emFlags);
            break;
          default:
            table += fillValue('mxc', cols, j, i + "_" + j, null, null);
          }
        }
      }
      table += "</tr>";
    }
    table += "</table>";
    table += "<hr class=\"Title\"/>";
    table += "<ul>";
    if (fInv)
      table += "<li>&#8224; : no capacitance value meets required current and frequency</li>";
    if (fConv)
      table += "<li>&#8225; : maximum capacitance value could not be precisely calculated</li>";
    if (fBounds)
      table += "<li>&#8226; : maximum capacitance is ouf of characterization limits</li>";
    if (fDelay)
      table += "<li>&#176; : maximum capacitance value bounded by frequency</xsl:text></li>";
    if (fMinFo)
      table += "<li>&#168; : maximum capacitance is below minimum fanout</li>";
    table += "</ul>";
  }
  return table;
}

function createNldmCap(node) {
  var ext = node.getAttribute('ext');
  var unit = node.getAttribute('unit');
  var table = "<table border=\"1\" class=\"big\">";
  if (ext == 'y') {
    table += "<tr>" +
      "<th rowspan=\"2\">Input</th>" +
      "<th rowspan=\"2\">Cg " + unit + "</th>" +
      "<th colspan=\"3\">Fall</th>" +
      "<th colspan=\"3\">Rise</th>" +
      "</tr>" +
      "<tr>" +
      "<th>Typical</th>" +
      "<th>Min</th>" +
      "<th>Max</th>" +
      "<th>Typical</th>" +
      "<th>Min</th>" +
      "<th>Max</th>" +
      "</tr>";
  } else {
    table += "<tr>" +
      "<th>Input</th>" +
      "<th>Cg " + unit + "</th>" +
      "</tr>";
  }
  var entries = node.getAttribute('entries').split('$');
  for (var i = 0; i < entries.length - 1; i++) {
    table += "<tr>";
    var cols = entries[i].split(';');
    table += "<td class=\"num\">" + cols[0] + "</td>";
    for (var j = 1; j < cols.length - 1; j++) {
      table += fillValue('CAP', cols, j, ((j == 1) ? cols[0] : j), null, null);
    }
    table += "</tr>";
  }
  table += "</table>";
  return table;
}

// ************** Summaries
function createMxcSumm(node, unit, cellPath, corner) {
  var table = "<table border=\"1\" class=\"big\">";
  var hasEMCap = node.getAttribute('hasEMData');
  var libMaxCap = node.getAttribute('libMaxCap');
  var cellHeader = ((hasEMCap == 'yes' && !libMaxCap) ? "From Liberty" : 
                    ((hasEMCap == 'no' && !libMaxCap) ? "Max Capacitance" : 
                     ((hasEMCap == 'yes') ? "Cell<br/>From Liberty" : "Max Capacitance")));
  var emHeader = (libMaxCap ? "Cell<br/>" : "") + "Electromigration";
  table += "<tr>"
    + "<th rowspan=\"2\">Cell<br/>Name</th>"    
    + (libMaxCap ? "<th>Library<br/>" + libMaxCap + " " + unit + "</th>" : "")
    + "<th colspan=\"2\">" + cellHeader + "</th>"
    + (hasEMCap == 'yes' ? "<th colspan=\"2\">" + emHeader + "</th>" : "")
    + "</tr>"
    + "<tr>"
    + (libMaxCap ? "<th width=\"70\">FO</th>" : "")
    + "<th width=\"70\">" + unit + "</th>"
    + "<th width=\"70\">FO</th>"
    + (hasEMCap == 'yes' ? "<th width=\"70\">" + unit + "</th><th width=\"70\">FO</th>" : "")
    + "</tr>";
  var entries = node.getAttribute('entries').split('$');
  for (var i = 0; i < entries.length - 1; ++i) {
    var cols = entries[i].split(';');
    table += "<tr>";
    table += "<th>" + "<a href=\"" + cellPath + cols[0] + "_" + corner + ".html#" + mapName('MXC') + "\">" + cols[0] + "<a>" +  "</th>";
    var emFlags = "", libFlags = "";
    if (cols[cols.length - 6] == 0 && hasEMCap) {
      emFlags += "&#8224;";
    }
    else {
      if (cols[cols.length - 6] == 1 && hasEMCap)
        emFlags += "&#8225;";
      if (cols[cols.length - 5] && hasEMCap)
        emFlags += "&#8226;";
      if (cols[cols.length - 4] && hasEMCap)
        emFlags += "&#176;";
      if (cols[cols.length - 3] && hasEMCap)
        emFlags += "&#168;";
    }
    if (cols[cols.length - 2])
      libFlags += "&#168;";

    for (var j = 1; j < cols.length - 6; j++) {
      var extra = "";
      if (((j == 1 && !libMaxCap) ||
          (j == 2 && libMaxCap)) && 
          cols[j] != '-')
        extra = libFlags;
      else if ((j == 3 && !libMaxCap) ||
               (j == 4 && libMaxCap)) {
        extra = emFlags;      
        if (extra == "&#8224;")
          cols[j] = "";
      }
      table += fillValue('mxc', cols, j, cols[0] + j, null, null, extra);
    }
    table += "</tr>";
  }
  table += "</table>";
  return table; 
}

function createConstrValidTable(node, cellPath, corner) {
  var timLabel = node.getAttribute("label");
  var measure = node.getAttribute("constrValidSumm");
  var table = "<table border=\"1\" class=\"big\">";
  table += "<tr>"
    + "<th rowspan='3'>Cell<br/>Name</th>"
    + "<th colspan='4'>Propagation Delay</th>"
    + "<th colspan='4'>Output Transition</th>"
    + "<th colspan='2' rowspan='2'>Glitch Peak [%]</th>"
    + "</tr>"
    + "<tr>"
    + "<th colspan='2'>Push-Out " + timLabel + "</th>"
    + "<th colspan='2'>Push-Out [%]</th>"
    + "<th colspan='2'>Push-Out " + timLabel + "</th>"
    + "<th colspan='2'>Push-Out [%]</th>"
    + "<tr>"
    + "<th title='Average'>&#956;</th>"
    + "<th title='Standard Deviation / Average'>&#963; / &#956;</th>"
    + "<th title='Average'>&#956;</th>"
    + "<th title='Standard Deviation / Average'>&#963; / &#956;</th>"
    + "<th title='Average'>&#956;</th>"
    + "<th title='Standard Deviation / Average'>&#963; / &#956;</th>"
    + "<th title='Average'>&#956;</th>"
    + "<th title='Standard Deviation / Average'>&#963; / &#956;</th>"
    + "<th title='Average'>&#956;</th>"
    + "<th title='Standard Deviation / Average'>&#963; / &#956;</th>"
    + "</tr>";
  var entries = node.getAttribute('entries').split('$');
  for (var i = 0; i < entries.length - 1; ++i) {
    var cols = entries[i].split(';');
    var baseLink = cellPath + cols[0] + "_" + corner + ".html";
    table += "<tr>";
    table += "<th>" + "<a href=\"" + baseLink + "\">" + cols[0] + "<a>" +  "</th>";
    var delay = new Array(4);
    var transition = new Array(4);
    var glitch = new Array(4);
    var numTypes = (cols.length - 2) / 5;
    for (var j = 0; j < numTypes; j++) {
      var temp = new Array(4);
      for (var k = 0; k < 4; k++) {
        temp[k] = cols[(j*5) + k + 2];
      }
      var typeName = cols[(j*5) + 1];
      if (typeName == 'delay')
        delay = temp;
      else if (typeName == 'glitch_peak') {
        glitch = temp;
      } else if (typeName == 'transition') {
        transition = temp;
      }
    }
    for (var j = 0; j < delay.length; ++j) {
      if (!delay[j])
        delay[j] = '-';
      table += fillValue('delay', delay, j, cols[0] + 'd' + measure + j, null, null, null, null);
    }
    for (var j = 0; j < transition.length; ++j) {
      if (!transition[j])
        transition[j] = '-';
      table += fillValue('trans', transition, j, cols[0] + 't' + measure + j, null, null, null, null);
    }
    for (var j = 2; j < glitch.length; ++j) {
      if (!glitch[j])
        glitch[j] = '-';
      table += fillValue('glitch', glitch, j, cols[0] + 'g' + measure + j, null, null, null, null);
    }
    table += "</tr>";
  }
  table += "</table>";
  return table; 
}


function createQoRSumm(node, qorCols, cellPath, corner) {
  var table = "<table border=\"1\" class=\"big\">";
  table += "<tr>"
    + "<th rowspan=\"2\">Cell<br/>Name</th>"
    + "<th colspan=\"" + qorCols + "\">QoR</th>"
    + "<th rowspan=\"2\">Driveability</th>"
    + "<th rowspan=\"2\">Input<br/>Capacitance</th>"
    + "</tr>"
    + "<tr>"
    + "<th>Cell</th>"
    + "<th>Area</th>"
    + "<th>Delay</th>"
    + "<th>Switching<br/>Power</th>"
    + "<th>Leakage<br/>Power</th>"
    + (qorCols == 6 ? "<th>Maximum<br/>Capacitance</th>" : "")
    + "</tr>";
  var sections = new Array(qorCols + 2);
  sections[0] = '_CellChars';
  sections[1] = mapName('PD');
  sections[2] = mapName('PWR');
  sections[3] = mapName('SP'); 
  sections[4] = qorCols == 6 ? mapName('MXC') : mapName('OS');
  sections[5] = qorCols == 6 ? mapName('OS') : mapName('CAP');
  sections[6] = qorCols == 6 ? mapName('CAP') : mapName('DQ');
  if (qorCols == 6)
    sections[7] = mapName('DQ');
  var entries = node.getAttribute('entries').split('$');
  for (var i = 0; i < entries.length - 1; ++i) {
    var cols = entries[i].split(';');
    var baseLink = cellPath + cols[0] + "_" + corner + ".html#";
    table += "<tr>";
    table += "<th>" + "<a href=\"" + cellPath + cols[0] + "_" + corner + ".html\">" + cols[0] + "<a>" +  "</th>";
    for (var j = 1; j < cols.length - 2; j++) {
      if (!cols[j])
        cols[j] = '-';
      var ind = (j == 3 && cols[cols.length - 2] == 'y') ? sections.length - 1 : j - 2;
      var trace = (j > 1 && cols[j] != '-') ? baseLink + sections[ind] : "";
      table += fillValue('qor', cols, j, cols[0] + j, null, null, null, trace);
    }
    table += "</tr>";
  }
  table += "</table>";
  return table; 
}

function createMinPw(node, unit) {
  var table = "<table border=\"1\" class=\"big\">";
  table += "<tr><th>Input</th><th>Time " + unit + "</th></tr>";
  var entries = node.getAttribute('entries').split('$');
  for (var i = 0; i < entries.length - 1; i++) {
    table += "<tr>";
    var cols = entries[i].split(';');
    table += "<td class=\"num\">" + cols[0] + " " + cols[1] + "</td>";
    table += fillValue('mpw', cols, 2, cols[0] + cols[1], null, null);
    table += "</tr>";
  }
  table += "</table>";
  return table;
}

function create1StOrderAppSumm(node, index1, cellPath, corner, section) {
  var table = "<table border=\"1\" class=\"big\">";
  table += createTableHeaderInline(index1);
  var lines = node.getElementsByTagName('div');
  for (var i = 0; i < lines.length; i++) {
    table += "<tr>";
    table += "<th>" + "<a href=\"" + cellPath + lines[i].getAttribute('t') + "_" + corner + ".html#" + section + "\">" + lines[i].getAttribute('t') + "<a>" +  "</th>";
    table += "<th onClick=\"rHL(this);\">" + lines[i].getAttribute('unit') + " " + buildPlot(lines[i], 'p') + "</th>";
    var elems = lines[i].getAttribute('el').split(';');
    for (var j = 0; j < elems.length - 1; j++) {
      var traceLink = "";
      var summTrace = lines[i].getAttribute('trace');
      if (summTrace) {
        var id2d = j;
        traceLink = buildTraceLink(summTrace.split('#'), "", id2d);
      }
      table += fillValue(lines[i].getAttribute('id'), elems, j, j, node, true, null, traceLink);
    }
    table += "</tr>";
  }
  table += "</table>";
  return table;
}

function create1DSumm(node, index1, cellPath, corner, section) {
  var table = "<table border=\"1\" class=\"big\">";
  table += createTableHeaderInline(index1);
  var lines = node.getElementsByTagName('div');
  for (var i = 0; i < lines.length; i++) {
    var cellName = lines[i].getAttribute('t');
    table += "<tr>";
    table += "<th>" + "<a name=\"" + TABLE_ID + lines[i].getAttribute('id') + "\"/>"  + "<a href=\"" + cellPath + cellName + "_" + corner + ".html#" + section + "\">" + cellName + "<a>" +  "</th>";
    table += "<th onClick=\"rHL(this);\">" + lines[i].getAttribute('unit') + " " + buildPlot(lines[i], 'p') + "</th>";
    var elems = lines[i].getAttribute('el').split(';');
    for (var j = 0; j < elems.length - 1; j++) {
      var perfSummTrace = lines[i].getAttribute('trace');
      var id2d = "0_" + j;
      var traceLink = "";
      var tracePos = elems[j].search('#');
      var trace = "";
      if (tracePos > -1) {
        trace = elems[j].substring(tracePos).split('#');
        elems[j] = elems[j].substring(0, tracePos);
      }
      if (perfSummTrace)
        traceLink = buildTraceLinkPerf(perfSummTrace.split('#'), trace, id2d);
      else 
        traceLink = buildTraceLink(trace, cellName, id2d);
      table += fillValue(lines[i].getAttribute('id'), elems, j, id2d, node, null, null, traceLink);
    }
    table += "</tr>";
  }
  table += "</table>";
  return table;
}

function create2DSumm(node, index1, index2, cellPath, corner, section) {
  var table = "<table border=\"1\" class=\"big\">";
  table += createTableHeaderInline(index1, index2);
  var lines = node.getElementsByTagName('div');
  for (var i = 0; i < lines.length; i++) {
    table += "<tr>";
    var cellName = lines[i].getAttribute('t');
    table += "<th>" + "<a name=\"" + TABLE_ID + lines[i].getAttribute('id') + "\">" + "<a href=\"" + cellPath + cellName + "_" + corner + ".html#" + section + "\">" + lines[i].getAttribute('t') + "<a>" +  "</th>";
    table += "<th onClick=\"rHL(this);\">" + lines[i].getAttribute('unit') + " " + buildPlot(lines[i], 'p') + "</th>";
    var elems = lines[i].getAttribute('el').split(';');
    for (var j = 0; j < elems.length - 1; j++) {
      var perfSummTrace = lines[i].getAttribute('trace');
      var id2d = ((j/(index2.length - 3))|0) + "_" + (j % (index2.length - 3));
      var traceLink = "";
      var tracePos = elems[j].search('#');
      var trace = "";
      if (tracePos > -1) {
        trace = elems[j].substring(tracePos).split('#');
        elems[j] = elems[j].substring(0, tracePos);
      }
      if (perfSummTrace)
        traceLink = buildTraceLinkPerf(perfSummTrace.split('#'), trace, id2d);
      else
        traceLink = buildTraceLink(trace, cellName, id2d);
      table += fillValue(lines[i].getAttribute('id'), elems, j, id2d, node, null, null, traceLink);
    }
    table += "</tr>";
  }
  table += "</table>";
  return table;
}

function createStatsSumm(node, cellPath, corner, refNode, section, focus) {
  var table = "<table border=\"1\" class=\"big\">";
  table += '<tr>' +
    '<th colspan="2">Cell</th>' +
    '<th onClick="cHL(this);">' + ((focus == 'correlation' && refNode) ? 'Abs<br/>' : '') + 'Best</th>' +
    '<th onClick="cHL(this);">' + ((focus == 'correlation' && refNode) ? 'Abs<br/>' : '') + 'Worst</th>' +
    '<th onClick="cHL(this);">' + 'Average</th>' +
    '<th onClick="cHL(this);">' + 'Abs<br/>Average</th>' +
    '<th onClick="cHL(this);">' + ((focus == 'correlation' && refNode) ? 'Abs<br/>' : '') + 'Std Dev</th>' +
    '<th onClick="cHL(this);">' + ((focus == 'correlation' && refNode) ? 'Abs<br/>' : '') + 'StdDev/<br/>Avg</th>' +
    '<th onClick="cHL(this);">RMS</th>' +
    '</tr>';
  var lines = node.getElementsByTagName('div');
  for (var i = 0; i < lines.length; i++) {
    table += "<tr>";
    var cellName = lines[i].getAttribute('t');
    table += "<th>" + "<a name=\"" + TABLE_ID + lines[i].getAttribute('id') + "\">" 
      + "<a href=\"" + cellPath + cellName + "_" + corner + ".html#" + section + "\">" + lines[i].getAttribute('t') + "<a>"
      + "</th>";
    table += "<th onClick=\"rHL(this);\">" 
      + lines[i].getAttribute('unit') + " " 
      + buildTablePopup(lines[i])
      + buildPlot(lines[i], 'p')
      + "</th>";
    var elems = lines[i].getAttribute('st').split(';');
    table += fillValue(lines[i].getAttribute('id'), elems, 5, "5", node, null, null, null);
    table += fillValue(lines[i].getAttribute('id'), elems, 0, "0", node, null, null, null);
    table += fillValue(lines[i].getAttribute('id'), elems, 1, "1", node, null, null, null);
    table += fillValue(lines[i].getAttribute('id'), elems, 2, "2", node, null, null, null);
    table += fillValue(lines[i].getAttribute('id'), elems, 3, "3", node, null, null, null);
    table += fillValue(lines[i].getAttribute('id'), elems, 6, "6", node, null, null, null);
    table += fillValue(lines[i].getAttribute('id'), elems, 4, "4", node, null, null, null);
    table += "</tr>";
  }
  table += "</table>";
  return table;
}

function createScalarSumm(node, cellPath, corner, summName) {
  var table = "<table border=\"1\" class=\"big\">";
  var entries = node.getAttribute('entries').split('$');
  var section = mapName(summName);

  for (var i = 0; i < entries.length - 1; i++) {
    table += "<tr>";
    var cols = entries[i].split(';');
    for (var j = 0; j < cols.length - 2; j++) {
      if (j < 2) {
        table += "<th>";
        if (j == 0)
          table += "<a href=\"" + cellPath + cols[j] + "_" + corner + ".html#" + section + "\">" + cols[j] + "<a>";
        else
          table += cols[j];
        table += "</th>";
      } else {
        var trace = cols[cols.length - 2];
        table += fillValue(summName, cols, j, cols[0] + "_" + j, node, null, null, buildTraceLink(trace, cols[0]));
      }
    }
    table += "</tr>";
  }
  table += "</table>";
  table += "<hr class=\"Title\"/>";
  return table;
}

function createDATables(elemNode, cellPath, corner, multiLib) {
  var entries = elemNode.getAttribute('entries').split('$');
  var tableHtml = "<table border=\"1\" class=\"big\">";
  var tableType = elemNode.getAttribute("DATable");
  if (tableType == "Delay") 
    tableType = "PD";
  else
    tableType = "OS";
  tableHtml += "<tr><th align='center' width=200>Instance Type</th>"
    + "<th align='center' width=70>Instance Name</th>"
    + "<th align='center' width=70>STA</th>"
    + "<th align='center' width=70>Spice</th>"
    + "<th align='center' width=70>Deviation [%]</th></tr>";
  for (var i = 0; i < entries.length - 1; i++) {
    tableHtml += "<tr>";
    var cols = entries[i].split(';');
    var lineName = "";
    if (cols[0] != 'net' && cols[2] != '' && multiLib != 'yes') {
      lineName = "<a href=\"" + cellPath + cols[0] + "_" + corner + ".html#" + mapName(tableType) + "\">" + cols[0] + "<a>";
    } else {
      lineName = cols[0];
    }
    lineName += (cols[1] == "yes" ? " *" : "");
    tableHtml += "<th align='center'>" + lineName + "</th>";
    for (var j = 2; j < cols.length - 1; ++j) {
      tableHtml += "<td align='center'>" + cols[j] + "</td>";
    }
    tableHtml += fillValue("da" + tableType + i, cols, cols.length - 1, tableType + i + "_" + cols.length - 1, "", "", "", "");
    tableHtml += "</tr>";        
  }
  tableHtml += "</table>";
  tableHtml += "<hr class=\"Title\"/>";
  return tableHtml;
}


// ************** Auxiliar Methods
function getIndexArray(node, indexName) {
  var index = node.getAttribute(indexName);
  if (index)
    return index.split(';');
  return null;
}

function mapName(tag) {
  switch (tag) {
    case 'FP':
    case 'RP':
    case 'PWR' :
      return 'DynamicPowerConsumption';
    case 'TP':
    case 'TPF':
    case 'TPR' :
      return 'TotalPower';
    case 'FCP' :
      return 'FullCyclePower';
    case 'TFCP' :
      return 'TotalFullCyclePower';
    case 'CAP' :
      return 'GateCapacitance';
    case 'SP' :
      return 'StaticPowerConsumption';
    case 'OS' :
    case 'OSRatio' :
    case 'FOOS' :
      return 'OutputTransition';
    case 'PD' :
    case 'PDRatio' :
    case 'FO4D' :
    case 'FOPD' :
      return 'PropagationDelay';
    case 'FCD' :
      return 'FullCycleDelay';
    case 'MS' :
      return 'SetupHoldMetastability';
    case 'RRMS' :
      return 'RecoveryRemovalMetastability';
    case 'ST' :
      return 'Setup';
    case 'HT' :
      return 'Hold';
    case 'RC' :
      return 'Recovery';
    case 'RM' :
      return 'Removal';
    case 'MP' :
      return 'MinPulseWidth';
    case 'DQ' :
      return 'ConstrainedDataToOutputDelay';
    case 'MXC' :
      return 'MaxCapacitance';
    case 'PDV' :
      return 'PropagationDelayVoltageThreshold';
    case 'PO' :
      return 'Pushout';
    default:
      return '';
  }
}

function createTableHeaderInline(index1, index2) {
  if (!index1 && !index2)
    return "";
  var table = "<thead><tr>";
  var cspan = index2 ? (index2.length - 3) : 1;
  table += "<th colspan=\"2\">" +
    index1[0] + " " + index1[1] + "</th>";
  for (var i = 0; i < index1.length - 3; i++)
    table += "<th colspan=\"" + cspan + "\"" + 
      (index2 ? "" : "onclick=\"cHL(this);\"") +
      ">" +  index1[i + 2] +  "</th>";
  table += "</tr>";
  if (index2) {
    table += "<tr><th colspan=\"2\">" + index2[0] + " " + index2[1] + "</th>";
    for (var i = 0; i < index1.length - 3; i++)
      for (var j = 0; j < index2.length - 3; j++)
        table += "<th onclick=\"cHL(this);\">" + index2[j + 2] + "</th>";
    table += "</tr>";
  }
  table += "</thead>";
  return table;
}

function buildTraceLinkPerf(tables, trace, id) {
  var pageInfo = document.getElementById('PageInfo');
  var summName = pageInfo.getAttribute('SummName');
  var corner = pageInfo.getAttribute('Corner');
  if (summName == 'OSRatio' || summName == 'PDRatio')
    return "javascript:oTraceFr(\\'" + '../../' + mapName(summName == 'OSRatio' ? 'OS' : 'PD') + "_" + corner + ".html?elem=el_" + tables[0] + "_*_*&elem=el_" + tables[1] + "_*_*#" + TABLE_ID + tables[0] + "\\');";
  var elems = new Array(2);
  elems[0] = "";
  elems[1] = "";
  for (var i = 1; i < trace.length; ++i) {
    var table = trace[i].substring(0, trace[i].search('_'));
    var ind = 0;
    if (table == tables[1])
      ind = 1;
    elems[ind] += (elems[ind] != "" ? "&" : "") + "elem=el_" + trace[i]; 
  }
  for (var i = 0; i < 2; i++)
    if (!elems[i])
      elems[i] = "elem=el_" + tables[i] + "_" + id;
  if (summName == 'FO4D')
    return "javascript:oFr(\\'?" + elems[0] + "%?" + elems[1] + "%#" + TABLE_ID + tables[0] + "%#" + TABLE_ID + tables[1] + "\\');";
  else
    return "javascript:oTFr(\\'" + elems[0] + "%" + elems[1] + "%#" + TABLE_ID + tables[0] + "%#" + TABLE_ID + tables[1] + "\\');";
}

function buildTraceLink(trace, cellName, id) {
  var pageInfo = document.getElementById('PageInfo');
  var summName = pageInfo.getAttribute('SummName');
  var cellPath = pageInfo.getAttribute('CellPath');
  var corner = pageInfo.getAttribute('Corner');
  var link = cellPath + cellName + "_" + corner + ".html";
  switch (summName) {
  case 'MP':
    return '';
  case 'CAP':
  case 'SP':
    return link + "?elem=el_" + summName + "_" + trace + "#" + mapName(summName);
  case 'FOOS':
  case 'FOPD':
    return mapName(summName) + "_" + corner + ".html?elem=el_" + trace + "_*_*#" + TABLE_ID + trace;
  case 'FO4D':
    return link + "?elem=el_" + trace[1] + "#" + TABLE_ID + trace[1].substring(0, trace[1].search('_'));
  default:
    if (!trace)
      return '';
    if (!(trace instanceof Array))
      return "javascript:oTraceFr(\\'" + link + "?elem=el_" + trace + "_" + id + "#" + TABLE_ID + trace + "\\');";
    if (trace[1].search('_') == -1)
      return "javascript:oTraceFr(\\'" + link + "?elem=el_" + trace[1] + "_" + id + "#" + TABLE_ID + trace[1] + "\\');";
    else {
      var elems = "";
      var table = trace[1].substring(0, trace[1].search("_"));
      for (var i = 1; i < trace.length; ++i) {
        if (i > 1)
          elems += "&";
        elems += "elem=el_" + trace[i];
      }
      return "javascript:oTraceFr(\\'" + link + "?" + elems + "#" + TABLE_ID + table + "\\');";
    }
  }
  return "";
}

function createTableHeader(index1, index2, index3, addSF) {
  if (!index1)
    return "";
  var table = "<thead><tr>";
  var cspan = (index3 ? 4 : (index2 ? 3 : 2));
  var topIndex = index2 ? index2 : index1;
  var tIndexSpan = index2 ? 2 : 1;
  table += "<th colspan=\"" + cspan + "\">" +    
    topIndex[0] + " " + topIndex[1] + "</th>";
  for (var i = 0; i < topIndex.length - 3; i++) {
    table += "<th rowspan=\"" + tIndexSpan + "\" onclick=\"cHL(this);\">" + 
      topIndex[i + 2] + (addSF ? "*sf" : "") +
      "</th>";
  }
  table += "</tr>";
  if (index2) {
  table += "<tr><th colspan=\"" + cspan + "\">" + 
    (index3 ? index3[0] + " " + index3[1] + " / " : "") +
    index1[0] + " " + index1[1] +
    "</th></tr>";
  }
  table += "</thead>";
  return table;
}

function fillTableRow(row, tblName, totalRows) {
  var table = "<tr>";
  if (tblName)
    table += "<th rowspan=\"" + totalRows + "\">" + tblName + "</th>";
  var desc = row.getAttribute('desc');
  table += "<th onclick=\"rHL(this);\">" +
    (desc ? row.getAttribute('desc') + " " : "") +
    row.getAttribute('t') + " " +
    buildPlot(row, 'p') +
    "</th>";
  var elems = row.getAttribute('el').split(';');
  for (i = 0; i < elems.length - 1; i++) {
    table += fillValue(row.getAttribute('id'), elems, i, i);
  }
  table += "</tr>";
  return table;
}

function fillTable2D(nCols, index1, index2, t1Table, t2Table, arc) {
  var nRows = index1.length - 3;
  var rspan = (t2Table ? (nRows*2 + 1) : nRows);
  var table = "<tr><th rowspan=\"" + rspan + "\"> " + arc + " </th>";
  for (n = 0; n < (t2Table ? 2 : 1); n++) {
    if (n == 1)
      table += "<tr><th colspan=\"" + (nCols + 2) + "\"></tr><tr>";
    var curTable = (n == 0 ? t1Table : t2Table);
    var elems = curTable.getAttribute('el').split(';');
    table += "<th rowspan=\"" + nRows + "\">" + 
      curTable.getAttribute('t') + " " + 
      buildPlot(curTable, 'p') + 
      buildPlot(curTable, 'wp') + 
      buildPlot(curTable, 'vwp') + 
      buildPlot(curTable, 'ewp') + 
      buildRefTrgLinks(curTable) + 
      "</th>";
    for (i = 0; i < nRows; i++) {
      if (i != 0)
        table += "<tr>";
      table += "<th onclick=\"rHL(this);\">" + index1[i + 2] + "</th>";
      for (j = 0; j < nCols; j++) {
        var traceLink = "";
        var perfSummTrace = curTable.getAttribute('trace');
        var id2d = i + "_" + j;
        var tracePos = elems[i*nCols + j].search('#');
        var trace = "";
        if (tracePos > -1) {
          trace = elems[i*nCols + j].substring(tracePos).split('#');
          elems[i*nCols + j] = elems[i*nCols + j].substring(0, tracePos);
        }
        if (perfSummTrace)
          traceLink = buildTraceLinkPerf(perfSummTrace.split('#'), trace, id2d);
        else {
          var cellName = curTable.parentNode.getAttribute('arc');
          traceLink = buildTraceLink(trace, cellName, id2d);
        }
        table += fillValue(curTable.getAttribute('id'), elems, i*nCols + j, i + "_" + j, curTable, null, null, traceLink);
      }
      table += "</tr>";
    }
  }
  return table;
}

function fillTable3D(nCols, index1, index3, t1Table, t2Table, arc) {
  var nRows = (index1.length - 3) * (index3.length - 3);
  var rspan = (t2Table ? (nRows*2 + 1) : nRows);
  var rspan2 = index1.length - 3;
  var table = "<tr><th rowspan=\"" + rspan + "\"> " + arc + " </th>";
  for (n = 0; n < (t2Table ? 2 : 1); n++) {
    if (n == 1)
      table += "<tr><th colspan=\"" + (nCols + 3) + "\"></tr><tr>";
    var curTable = (n == 0 ? t1Table : t2Table);
    var elems = curTable.getAttribute('el').split(';');

    table += "<th rowspan=\"" + nRows + "\">" + 
      curTable.getAttribute('t') + " " + 
      buildPlot(curTable, 'p') + 
      buildPlot(curTable, 'wp') + 
      buildPlot(curTable, 'vwp') + 
      buildPlot(curTable, 'ewp') + 
      buildRefTrgLinks(curTable) + "</th>";

    for (i = 0; i < index3.length - 3; i++) {
      if (i != 0)
        table += "<tr>";
      table += "<th rowspan=\"" + rspan2 + "\">" + index3[i + 2] + "</th>";
      for (j = 0; j < index1.length - 3; j++) {
        if (j != 0)
          table += "<tr>";
        table += "<th onclick=\"rHL(this);\">" + index1[j + 2] + "</th>";
        for (k = 0; k < nCols; k++)
          table += fillValue(curTable.getAttribute('id'), elems, ((i * nCols * rspan2) + (j * nCols) + k), i + "_" + j + "_" + k, curTable);
        if (j != rspan2 - 1)
          table += "</tr>";
      }
      table += "</tr>";
    }
  }
  return table;
}

function fillValue(lutId, elems, index, id, tbl, stOrder, extras, trace) {
  var plot = "";  
  var value = elems[index];
  if (stOrder) {
    var delimPos = value.search(/\$/);
    var cLin = value.substring(delimPos + 1);
    var cAng = value.substring(0, delimPos);
    value = cLin + " + " + cAng + "OL";
  }
  var plotPos = value.search(/\$/);
  if (plotPos > -1) {
    plot = value.substring(plotPos + 1);
    value = value.substring(0, plotPos);
  }
  var up              = value.search('u');
  var down            = value.search('d');
  var interp          = value.search('i');
  var cValidNomSlew   = value.search('t');
  var cValidNomDelay  = value.search('n');
  var cValidStepOver  = value.search('s');
  var cValidWindow    = value.search('w');
  var cValidDiscarded = value.search('x');
  var nonValueSize    = interp > -1 ? 1 : 0;
  nonValueSize += cValidNomSlew   > -1 ? 1 : 0;
  nonValueSize += cValidNomDelay  > -1 ? 1 : 0;
  nonValueSize += cValidStepOver  > -1 ? 1 : 0;
  nonValueSize += cValidWindow    > -1 ? 1 : 0;
  nonValueSize += cValidDiscarded > -1 ? 1 : 0;
  nonValueSize += (up > -1 || down > -1) ? 1 : 0;
  value = value.substring(0, value.length - nonValueSize);
  var mainClass = stOrder ? "stOrder" : (value < 0 || (lutId == 'qor' && value < 1))? "neg" : "num";
  var fixedValue = value;
  if (interp > -1)
    fixedValue = "<i>" + value + "</i>";
  if (cValidNomSlew > -1)
    fixedValue = fixedValue + "<sup> T</sup>";
  if (cValidNomDelay > -1)
    fixedValue = fixedValue + "<sup> N</sup>";
  if (cValidStepOver > -1)
    fixedValue = fixedValue + "<sup> S</sup>";
  if (cValidWindow > -1)
    fixedValue = fixedValue + "<sup> W</sup>";
  if (cValidDiscarded > -1)
    fixedValue = fixedValue + "<sup> D</sup>";
  if (up > -1 || down > -1) {
    fixedValue = "<span class=\"" + (up > -1 ? "erU" : "erD") + "\">" + fixedValue + "</span>";
  }

  var innerValue = fixedValue;
  if (plot) {
    var link = buildPlot(tbl, 'iwp', plot);
    innerValue = "<div cTt=\"\">" + fixedValue + " " + link + "</div>";
  }
  if (trace) {
    innerValue = "<div cTt=\"" + trace + "\">" + innerValue + "</div>";
  }
  var table = "<td "
    + "class=\"" + mainClass + "\" "
    + "onmouseover=\"highlight(this);\" onmouseout=\"highlight(this);\" onclick=\"highlight(this);\" "
    + "id=\"el_" + lutId + "_" + id + "\""
    + ">"
    + innerValue
    + (extras ? " " + extras : "")
    + "</td>";
  return table;
}

function createCtx(ctx, nCols, dimensions, addTimType) {
  var table = "<tr><td colspan=\"" + (nCols + dimensions + 1) + "\" class=\"comment\">" + buildCtxStr(ctx, false, addTimType) + "</td></tr>";
  return table;
}

function buildCtxStr(ctx, cutTrans, addTimType) {
  if (!ctx)
    return "";
  var ctxArray = ctx.split(';');
  var ctxStr = "";
  if (ctxArray[1])
    ctxStr += (ctxArray[1] == 'positive_unate' ? ' * Positive Unate' : (ctxArray[1] == 'negative_unate' ? ' * Negative Unate' : ' * Non-Unate'));
  if (ctxArray[2])
    ctxStr += ' * When="' + ctxArray[2] + '"';
  if (ctxArray[3] && !ctxArray[2])
    ctxStr += ' * Std Delay Format Condition="' + ctxArray[3] + '"';
  if (ctxArray[4] && addTimType)
    ctxStr += ' * Timing Type="' + ctxArray[4] + '"';
  if (ctxArray[5])
    ctxStr += ' * Related Bus Pins="' + ctxArray[5] + '"';
  if (ctxArray[6])
    ctxStr += ' * Related PgPin="' + ctxArray[6] + '"';
  if (ctxArray[7])
    ctxStr += ' * Related Output Pin="' + ctxArray[7] + '"';
  if (ctxArray[8])
    ctxStr += ' * Interdependence Id=' + ctxArray[8];
  if (ctxArray[9])
    ctxStr += ' * Pct Threshold=' + ctxArray[9];
  if (ctxArray[10] && !cutTrans)
    ctxStr += ' * Output Transition="' + ctxArray[10] + '"';
  if (ctxStr == '')
    ctxStr = ' * No Context';
  return ctxStr;
}

function toHtmlString(str) {
  if (!str)
    return "";
  var strObj = new String(str);
  var fixedStr = "";
  for (var i = 0; i < strObj.length; ++i) {
    switch (strObj.charAt(i)) {
    case '"':
      fixedStr += '%22';
      break;
    default:
      fixedStr += strObj.charAt(i);
      break;
    }
  }
  return fixedStr;
}

function createStats(t1, t2, nCols, dimensions, focus) {
  var table = "";
  if (t1.getAttribute('st')) {
    var cSpan = 1 + dimensions + nCols - (t2 ? 2 : 1);
    table = "<tr><td colspan=\"" + cSpan + "\"</td><td noHL=\"true\" align=\"center\"><b>" + t1.getAttribute('t') + "</b></td>";
    var t1Stats = t1.getAttribute('st').split(';');
    var t2Stats = t2 ? t2.getAttribute('st').split(';') : null;
    var statName = new Array(4);
    statName[0] = (focus == "correlation" ? "Abs " : "") + "Worst";
    statName[1] = "Average";
    statName[2] = "Abs Average";
    statName[3] = (focus == "correlation" ? "Abs " : "") + "Std Dev";
    statName[4] = "RMS";
    if (t2)
      table += "<td noHL=\"true\" align=\"center\"><b>" + t2.getAttribute('t') + "</b></td>";
    for (i = 0; i < 5; i++) {
      if (t1Stats[i] != '') {
        table += "<tr><td colspan=\"" + cSpan + "\"><b>" + statName[i] + "</b></td>";
        table += "<td noHL=\"true\" align=\"center\">" + t1Stats[i] + "</td>";
        if (t2)
          table += "<td noHL=\"true\" align=\"center\">" + t2Stats[i] + "</td>";
        table += "</tr>";
      }
    }
    table += "<tr/>";
  }
  return table;
}

function buildPlot(tbl, plotType, plot) {
  var father = tbl.parentNode;
  if (!father)
    return "";
  var granpa = father.parentNode;
  if (!plot)
    plot = tbl.getAttribute(plotType);
  if (!plot)
    return "";
  var wpCount = tbl.getAttribute('wpc');
  var wpRoot = tbl.getAttribute('wpr');
  var pageInfo = document.getElementById('PageInfo');
  var rootPath = pageInfo.getAttribute('RootPath');
  var cellName = pageInfo.getAttribute('CellName');
  if (!cellName)
    cellName = tbl.getAttribute('t');
  var secName = "";
  var funcName = "";
  var plotImage = rootPath + '/resource/image/';
  var attrCtx = father.getAttribute('ctx'); 
  var ctx = "";
  if (attrCtx)
    ctx = toHtmlString(buildCtxStr(attrCtx, true));
  else
    ctx = tbl.getAttribute('desc');
  if (!ctx)
    ctx = "";
  switch (plotType) {
  case 'p':
    secName = granpa.getAttribute('eName');
    plotImage += 'plot.gif';
    funcName = 'showPlot';
    break;
  case 'iwp':
    secName = granpa.getAttribute('eName');
    plotImage += 'plot.gif';
    funcName = 'showPlot';
    plot = wpRoot + plot;
    break;
  case 'wp':
    secName = 'Current Waveform';
    plotImage += '4waves_plot.gif';
    funcName = 'showPlotList';
    plot = wpRoot + plot;
    break;
  case 'vwp':
    secName = 'Voltage Waveform';
    plotImage += 'volt_plot.gif';
    funcName = 'showPlotList';
    plot = wpRoot + plot;
    break;
  case 'ewp':
    secName = 'Voltage Waveform';
    plotImage += '4waves_plot.gif';
    funcName = 'showPlotList';
    plot = wpRoot + plot;
    break;
  default:
    return "";
  }
  var arc = father.getAttribute('arc');
  if (!arc)
    arc = "";
  else {
    var capIndPos = arc.search(/\[/);
    if (capIndPos > -1)
    arc = arc.substring(0, capIndPos);
  }

  var table = "<a href=\"javascript:" + funcName + "(" 
    + "'" + rootPath + "', "
    + "'" + "../../" + plot + "', "
    + "'" + secName + "', "
    + "'" + cellName + "', "
    + "'" + arc + "', "
    + "'" + ctx + "', "
    + (plotType == 'iwp' ? "'700'" : "'600'") + ", "
    + "'550'"
    + ((plotType != 'p' && plotType != 'iwp') ? ", '" + wpCount + "'" : "")
    + ");\">"
    + "<img border=\"0\" onClick=\"disableHighlight()\" src=\""
    + plotImage + "\""
    + (plotType == 'iwp' ? "style=\"display:none\"" : "")
    + "></a>";
  return table;
}

function buildRefTrgLinks(tbl) {
  var table = "";
  var pageInfo = document.getElementById('PageInfo');
  if (!pageInfo)
    return "";
  var cellName = pageInfo.getAttribute('CellName');
  var refNode = pageInfo.getAttribute('RefNode');
  var trgNode = pageInfo.getAttribute('TrgNode');
  var fileExt = pageInfo.getAttribute('FileExt');
  if (tbl.getAttribute('rid')) {
    table += "<br/><a href=\"" + cellName + "_" + refNode + fileExt + "#" + TABLE_ID + tbl.getAttribute('rid') + "\">ref</a>  |  ";
    table += "<a href=\"" + cellName + "_" + trgNode + fileExt + "#" + TABLE_ID + tbl.getAttribute('tid') + "\">trg</a>";
  }
  return table;
}

function buildTablePopup(node) {
  var id = node.getAttribute('id');
  var pageInfo = document.getElementById('PageInfo');
  var rootPath = pageInfo.getAttribute('RootPath');
  var link = '<a href="javascript:tablePopUp('
    + "'" + rootPath + "', "
    + "'" + id + "'"
    + ');">'
    + '<img border="0" onClick="disableHighlight()" src="'
    + rootPath + '/resource/image/table.gif"></a>';
  return link;
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  End of file.                                                              //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
