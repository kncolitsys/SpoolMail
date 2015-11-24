<cfinclude template="../Application.cfm">

<cfsetting showdebugoutput=false requestTimeout="180">

<cfapplication name="SpoolMail" applicationtimeout="#createTimeSpan(0,2,0,0)#" sessionmanagement="yes" 
			   loginstorage="Session" sessiontimeout="#createTimeSpan(0,2,0,0)#" clientmanagement="no">

<cfif not structKeyExists(application, "init") or structKeyExists(url, "reinit")>
	<cfset application.maildir = server.coldfusion.rootdir & "/Mail/Undelivr/">
	<cfset application.spooldir = server.coldfusion.rootdir & "/Mail/Spool/">
	<cfset application.fileCache = structNew()>
	<cfset application.perpage = 20>
	<cfset application.allowdownload = false>
	<cfset application.init = now()>
</cfif>

<cfinclude template="udf.cfm">