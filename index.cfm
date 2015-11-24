<cfif not directoryExists(application.maildir)>
	<cfoutput>
	<h2>Sorry!</h2>
	
	<p>
	Something has gone wrong. I cann't seem to find your undelivered folder at:<br />
	#maildir#
	</p>
	</cfoutput>
	
	<cfabort>
</cfif>

<cfoutput>
<html>

<head>
<frameset rows="320,*" resizeable="true" >
<frame src="top.cfm" marginheight="0" marginwidth="0">
<frame src="bottom.cfm" marginheight="0" marginwidth="0" name="bottom" id="bottom">
</frameset>
</head>

<body></body>
</html>
</cfoutput>
