<@framework.page_head title="后台管理系统" ></@framework.page_head>

<@framework.page_body>
<div class="row">
	<div class="col-md-12">
	    <!-- BEGIN EXAMPLE TABLE PORTLET-->
	    <div class="portlet light ">
	        <div class="portlet-title">
	            <div class="caption font-dark">
	                <i class="icon-flag font-dark"></i>
	                <span class="caption-subject bold uppercase"> 活动列表</span>
	            </div>
	            <div class="actions">
	            </div>
	        </div>
	        <div class="portlet-body">
	            <div class="table-toolbar">
	                <div class="row">
	                    <div class="col-md-12">
	                        <div class="btn-group">
	                            <a href="${contextPath}/activity/add_activity.do" class="btn sbold green"> 创建新活动
	                                <i class="fa fa-plus"></i>
	                            </a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <table class="table table-striped table-bordered table-hover table-checkable order-column" id="sample_1">
	                <thead>
	                    <tr>
	                        <th> 序号 </th>
	                        <th> 商场活动名称 </th>
	                        <th> 活动开始时间 </th>
	                        <th> 活动结束时间 </th>
	                        <th> 游戏活动ID </th>
	                        <th> 营销平台活动ID </th>
	                        <th> 活动状态 </th>
	                        <th> 操作 </th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<#list activityList as activity>
	                		<tr>
	                			<td>${activity_index+1}</td>
	                			<td>${activity.name}</td>
	                			<td>${activity.startDate?string("yyyy-MM-dd HH:mm:ss")}</td>
	                			<td>${activity.endDate?string("yyyy-MM-dd HH:mm:ss")}</td>
	                			<td>${activity.autoid}</td>
	                			<td>${activity.platformActivityId}</td>
	                			<td>
	                				<#if activity.status==0>
	                					启用
	                					<#elseif activity.status==1>
	                					禁用
	                					<#else>
	                					未知
	                				</#if>
	                			</td>
	                			<td>
	                				<a class="btn blue btn-outline" href="${contextPath}/activity/view_activity.do?autoid=${activity.autoid}">查看</a>
	                				<a class="btn green btn-outline" href="${contextPath}/activity/mod_activity.do?autoid=${activity.autoid}">编辑</a>
	                				<#--<a class="btn yellow btn-outline" href="javascript:void(0);">启用</a>-->
	                				<a class="btn red btn-outline" href="${contextPath}/activity/del_activity.do?autoid=${activity.autoid}">删除</a>
	                			</td>
	                		</tr>
	                	</#list>
	                </tbody>
	            </table>
	        </div>
	    </div>
	    <!-- END EXAMPLE TABLE PORTLET-->
	</div>
</div>
</@framework.page_body>