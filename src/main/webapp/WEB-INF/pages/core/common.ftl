<#--获取运行环境的根路径-->
<#macro basePath><#if springMacroRequestContext.getContextPath()=="/"><#else>${springMacroRequestContext.getContextPath()}</#if></#macro>
<#global contextPath><@basePath/></#global>


<#--substr:用于输出指定指定长度的字符串，如果超出，则按照指定字符进行截取。如果字符串为null或空，，则默认用&nbsp;输出-->
<#macro substr paramStr="" length=25 omit="..." filter=true>
	<#compress>
		<#if paramStr?exists>
			<#if paramStr=="">
				&nbsp;
			<#else>
				<#if filter==true>
					<#if (paramStr?length>length)>
						${paramStr?substring(0,length)?html}${omit}
					<#else>
						${paramStr?html}
					</#if>
				<#else>
					<#if (paramStr?length>length)>
						${paramStr?substring(0,length)}${omit}
					<#else>
						${paramStr}
					</#if>
				</#if>
			</#if>
		<#else>
			&nbsp;
		</#if>
	</#compress>
</#macro>

<#--substr:用于输出指定指定长度的字符串，如果超出，则按照指定字符进行截取。如果字符串为null或空，，则默认用&nbsp;输出-->
<#macro substring paramStr="" startIndex=0 endIndex=10>
	<#compress>
		<#if (paramStr?exists)&&(paramStr!="")&&(startIndex<endIndex)>
			<#if (paramStr?length>endIndex)>
				${paramStr?substring(startIndex,endIndex)}
			<#else>
				${paramStr?substring(startIndex,paramStr?length)}
			</#if>
		</#if>
	</#compress>
</#macro>

<#--format:用于输出字符串，如果字符串为null或空，则默认用&nbsp;输出-->
<#macro format paramStr="" default="&nbsp;" filter=true>
	<#compress>
		<#if paramStr?exists>
			<#if paramStr=="">
				${default}
			<#else>
				<#if filter==true>
					${paramStr?html}
				<#else>
					${paramStr}
				</#if>
			</#if>
		<#else>
			${default}
		</#if>
	</#compress>
</#macro>

<#--html:用于输出html字符串，如果字符串为null或空，则默认用&nbsp;输出-->
<#macro html paramStr="" default="&nbsp;" fix=false length=25 omit="...">
	<#compress>
		<#if paramStr?exists>
			<#assign content=paramStr?html>
			<#assign content=content?replace("\n", "<br>")>
			<#assign content=content?replace(" ", "&nbsp;")>
			<#assign content=content?replace("\t", "&nbsp;&nbsp;&nbsp;&nbsp;")>
			<#if fix && (content?length>length)>
				${content?substring(0,length)}${omit}
			<#else>
				${content}
			</#if>
		<#else>
			${default}
		</#if>
	</#compress>
</#macro>

<#--
 * errorMsg
 *
 * Print form validator result.
 -->
<#macro errorMsg>
    <#if spring.status.errorMessages?exists&&(spring.status.errorMessages?size>0)><font color="#FF0000"><#list spring.status.errorMessages?if_exists as error>${error}<br></#list></font></#if>
</#macro>