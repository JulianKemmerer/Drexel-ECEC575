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
// Nangate config related functions
//

// NOT IN USE
function readNanConfig() {
	var cfg;
	var str = readCookie('nanConfig');
	if (str) {
		var parms = str.split('&');
		for (var i = 0; i<parms.length; i++) {
			var pos = parms[i].indexOf('=');
			if (pos > 0) {
		    	var key = parms[i].substring(0,pos);
		    	var val = parms[i].substring(pos+1);
		    	if (key == "nanStyle") {
		    		cfg.nanStyle = val;
		    	}
		    }
		}
	} else {
		createCookie('nanConfig', 'nanStyle=PDF', 1);
		cfg.nanStyle = "HTML";
	}
	
	return cfg;
}
