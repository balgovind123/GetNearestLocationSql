---Fast nearest-location finder for SQL---
---latitude & longitude we will get it from Request(Geo location)--Google Geo location can be used to get the latitude and longitude

			" SELECT "  
			+ " distinct" 		
			+ " CL.clientCode,CL.latitude, CL.longitude, CL.surname, CL.phoneNumer1, " 
			+ " CL.phoneNumer2, CL.emailId, CL.addressField1, CL.addressField2, CL.addressField3, "
			+ " CL.addressField4, CL.addressField5, " +
			" 111.045* DEGREES( " 
			+  " ACOS(COS(RADIANS( " + this.escapeQuote(latitude) + " )) " 
			+  " * COS(RADIANS(latitude)) " 
			+  " * COS(RADIANS( " + this.escapeQuote(longitude) + " ) - RADIANS(longitude)) " 
			+  " + SIN(RADIANS( " + this.escapeQuote(latitude) + ")) " 
			+  " * SIN(RADIANS(latitude))) " 
			+  " ) AS distance " 
			+",CL.ZIPCODE"
			+",CL.terminatedate"
			+",CL.provnet"
			+  " FROM  Your_Table_Name CL "
			+  " order by distance";
		