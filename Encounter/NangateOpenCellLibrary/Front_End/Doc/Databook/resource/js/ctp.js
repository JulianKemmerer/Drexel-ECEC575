//
//     Copyright (C) 2007, Nangate Inc.
//     All rights reserved.                           
//
//	Copyright Notice:
//	
//		This document contains confidential and proprietary information.		
//		Reproduction or usage of this document, in part or whole, by any means,
//		electrical, mechanical, optical, chemical or otherwise is prohibited,
//		without written permission from Nangate Inc.
//		
//		The information contained herein is protected by Danish and international  
//		copyright laws.                                                            /
//	
//	Author: 
//		Felipe Freitag Vargas
//
//  Version: 
//		1.0
// 

function openctpPage( path, graphnum, unateness, risefall, val1, val2, val3 ) {

  var myWin;
  switch (graphnum)
  {
  case '1':
    myWin= window.open(
        path+'/resource/js/CtpPage.html','','toolbar=no,height=320,width=550,top=100,left=100');
    break;
  case '2':
    myWin= window.open(
        path+'/resource/js/CtpPage.html','','toolbar=no,height=320,width=550,top=100,left=100');      
    break;
  case '3':
    myWin= window.open(
        path+'/resource/js/CtpPage.html','','toolbar=no,height=470,width=550,top=100,left=100');
    break;    
  }

  myWin.mnum = graphnum;
  myWin.mun = unateness;
  myWin.rf = risefall;

  myWin.defmark = '*';
  myWin.percent = '%';

  var def = '(*)';

  var aux;
  var flagdefault = 'false';

  if (val1.indexOf(myWin.defmark) == -1)
  {
    aux = val1;
    myWin.def1 = '';
  }
  else
  {
    aux = val1.replace("*","");
    myWin.def1 = def;
    flagdefault = 'true';
  }
  myWin.mv1 = aux;

  if (val2.indexOf(myWin.defmark) == -1)
  {
    aux = val2;
    myWin.def2 = '';
  }
  else
  {
    aux = val2.replace("*","");
    myWin.def2 = def;
    flagdefault = 'true';
  }
  myWin.mv2 = aux;

  if (val3.indexOf(myWin.defmark) == -1)
  {
    aux = val3;
    myWin.def3 = '';
  }
  else
  {
    aux = val3.replace("*","");
    myWin.def3 = def;
    flagdefault = 'true';
  }
  myWin.mv3 = aux;

  if (flagdefault == 'true') myWin.defmessage = def + " Default value";
  else myWin.defmessage = '';
}


function buildCTP() {
  myWin = window;
  switch (myWin.mnum)
  {
  case '1': ctpSingleGraph();
    break;
    
  case '2': ctpTwoGraph();
    break;
    
  case '3': ctpThreeGraph();
    break;   
    
  default:
    myWin.document.body.innerHTML = myWin.document.body.innerHTML + 'request error' ; 
    break;
  }
}

function ctpSingleGraph() {
  var myWin = window;
  var pct = myWin.percent;
  var tableHTML =
    '<table class="ctppage" id="_ctptable">';
  tableHTML +=        
    '  <tr>' +
    '    <th class="ctppage">'+
    'Output Transition' +
    '    </th>' +
    '  </tr>'+
    '  <tr>';

  tableHTML +=
    '    <td class="ctppage">';
  if (myWin.rf == "rise" )
  {
    tableHTML += '<img src="../image/rise8020.bmp">';      
  }
  else
  {
    tableHTML += '<img src="../image/fall8020.bmp">';
  }

  tableHTML +=
    '<p class="ctppage">' +
    '<span class="notea">(a)</span>' + 
    ' Upper trip point: ' +
    myWin.mv1 + pct + myWin.def1 +
    '<br/>' +
    '<span class="noteb">(b)</span>' + 
    ' Lower trip point: ' +
    myWin.mv2 + pct + myWin.def2 +
    '</p>';

  tableHTML +=
    '    </td>' +
    '  </tr>';

  tableHTML +=
    '<tr>' +
    '<td>' +
    myWin.defmessage +
    '</td>' +
    '</tr>' ;
    
  tableHTML += '</table>';
  myWin.document.body.innerHTML = myWin.document.body.innerHTML + tableHTML; 

}

function ctpTwoGraph() {
  var myWin = window;
  var pct = myWin.percent;
  var tableHTML =
    '<table class="ctppage" id="_ctptable">';

  tableHTML +=
    '  <tr>' +
    '    <th class="ctppage">' +
    'Input' +
    '    </th>' +
    '    <th class = "ctppage">' +
    'Output' +
    '    </th>' +
    '  </tr>' ;

  switch (myWin.mun)
  {
  case 'positive':
    var graph1type;
    var graph2type;
    if (myWin.rf == 'rise')
    {
      graph1type = 'Rise';
      graph2type = 'Rise';
    }
    else
    {
      graph1type = 'Fall';
      graph2type = 'Fall';
    }
      
    tableHTML +=
      '  <tr>' +
      '    <td class="ctppage">' +
      //rise or fall image
      '      <img src="../image/base' + graph1type + '50.bmp" />' +
      '      <p>' +
      'Trip point: ' +
      myWin.mv1 + pct + myWin.def1 +
      '      </p>' +
      '    </td>' +
      '    <td class="ctppage">' +
      //rise or fall image
      '<img src="../image/base' + graph2type + '50.bmp" />' +
      '      <p>' +
      'Trip point: ' +
      myWin.mv2 + pct + myWin.def2 +
      '      </p>' +

      '    </td>' +
      '  </tr>';     
      
    break;
      
  case 'negative':
    var graph1type;
    var graph2type;
    if (myWin.rf == 'rise')
    {
      graph1type = 'Fall';
      graph2type = 'Rise';
    }
    else
    {
      graph1type = 'Rise';
      graph2type = 'Fall';
    }

    tableHTML +=
      '  <tr>' +
      '    <td class="ctppage">' +
      //rise or fall image
      '      <img src="../image/base' + graph1type + '50.bmp" />' +
      '      <p>' +
      'Trip point: ' +
      myWin.mv1 + pct + myWin.def1 +
      '      </p>' +
      '    </td>' +
      '    <td class="ctppage">' +
      //rise or fall image
      '      <img src="../image/base' + graph2type + '50.bmp" />' +
      '      <p>' +
      'Trip point: ' +
      myWin.mv2 + pct + myWin.def2 +
      '      </p>' +
      '    </td>' +
      '  </tr>';     
      
    break;
  }

  tableHTML +=
    '<tr>' +
    '<td>' +
    myWin.defmessage +
    '</td>' +
    '</tr>' ;


  tableHTML += '</table>';
  myWin.document.body.innerHTML = myWin.document.body.innerHTML + tableHTML ;
}

function ctpThreeGraph() {
  var myWin = window;
  var pct = myWin.percent;
  var tableHTML =
    '<table class="ctppage" id="_ctptable">';

  tableHTML +=
    '  <tr>' +
    '    <th class="ctppage">' +
    'Input' +
    '    </th>' +
    '    <th class = "ctppage">' +
    'Output' +
    '    </th>' +
    '  </tr>' ;
  var graph1type;
  if (myWin.rf == 'rise')
  {
    graph1type = 'Rise';
  }
  else
  {
    graph1type = 'Fall';
  }

  tableHTML +=
    '  <tr>' +
    '    <td class="ctppage">' +
    '      <img src="../image/baseRise50.bmp">'+
    '      <p>' +
    'Trip point: ' +
    myWin.mv1 + pct + myWin.def1 +
    '      </p>' +

    '    </td>' +
    '    <td rowspan="2" class="ctppage">' +
    //rise or fall image
    '      <img src="../image/base' + graph1type + '50.bmp" />' +
    '      <p>' +
    'Trip point: ' +
    myWin.mv2 + pct + myWin.def2 +
    '      </p>' +
    '    </td>' +
    '  </tr>' +
    '  <tr>' +
    '    <td class="ctppage">' +
    '      <img src="../image/baseFall50.bmp">'+
    '      <p>' +
    'Trip point: ' +
    myWin.mv3 + pct + myWin.def3 +
    '      </p>' +
    '    </td>' + 
    '  </tr>' ;

  tableHTML +=
    '<tr>' +
    '<td>' +
    myWin.defmessage +
    '</td>' +
    '</tr>' ;

  tableHTML += '</table>';
  myWin.document.body.innerHTML = myWin.document.body.innerHTML + tableHTML ; 

}

function openCValidPage(path, graphType) {

  var myWin;
  switch (graphType) {
  case 'N':
    myWin= window.open(path+'/resource/js/CValidPage.html','','toolbar=no,height=650,width=800,top=100,left=100');
    break;
  case 'S':
    myWin= window.open(path+'/resource/js/CValidPage.html','','toolbar=no,height=550,width=800,top=100,left=100');
    break;
  case 'W':
    myWin= window.open(path+'/resource/js/CValidPage.html','','toolbar=no,height=550,width=880,top=100,left=100');
    break;
  }
  myWin.graphType = graphType;
}

function buildCValid() {
  var myWin = window;
  var graphType = myWin.graphType;

  var imgSrc="";
  var secTitle = "";
  switch (graphType) {
  case 'N':
    imgSrc   = "../image/nom_delay.png";
    secTitle = "Nominal Delay is too Small";
    break;
  case 'S':
    imgSrc   = "../image/stepover.png";
    secTitle = "Cell has reached its physical limit and cannot achieve a larger push-out / glitch-peak";
    break;
  case 'W':
    imgSrc   = "../image/window_height.png";
    secTitle = "Data signal minimum window height limits push-out value";
    break;
  }
  
  var tableHTML = '<table class="ctppage" id="_ctptable">';
  tableHTML += '<tr><th class="ctppage">'+ secTitle + '</th></tr>' +
               '<tr>';

  tableHTML += '<td class="ctppage">';
  tableHTML += '<img src="' + imgSrc + '">';

  tableHTML += '</td></tr>';

  tableHTML += '</table>';
  myWin.document.body.innerHTML = myWin.document.body.innerHTML + tableHTML; 

}
