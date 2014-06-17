//
//     Copyright (C) 2006, Nangate Inc.
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
//		Joao Daniel Togni
//
//  Version: 
//		1.0
// 

//
// Cookies related functions
//

function createCookie(name,value,days)
{
	if (days) {
		var date = new Date();
		date.setTime(date.getTime()+(days*24*60*60*1000));
		var expires = "; expires="+date.toGMTString();
	}

	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name)
{
	var nameEQ = name + "=";
	var ca = document.cookie.split(';');
	for(var i=0;i < ca.length;i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
	}
	return null;
}

function eraseCookie(name)
{
	createCookie(name,"",-1);
}