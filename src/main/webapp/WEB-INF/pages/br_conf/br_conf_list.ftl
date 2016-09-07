<@framework.page_head title="后台管理系统" ></@framework.page_head>
<style type="text/css">
	th, td {
		text-align:center;
	}
</style>
<@framework.page_body>
<div class="row">
	<div class="col-md-12">
	    <!-- BEGIN EXAMPLE TABLE PORTLET-->
	    <div class="portlet light ">
	        <div class="portlet-title">
	            <div class="caption font-dark">
	                <i class="icon-flag font-dark"></i>
	                <span class="caption-subject bold uppercase"> 北人集团花开盛宴配置列表</span>
	            </div>
	            <div class="actions">
	            </div>
	        </div>
	        <div class="portlet-body">
	            <div class="table-toolbar">
	                <div class="row">
	                    <div class="col-md-12">
	                        <div class="btn-group">
	                            <a href="${contextPath}/br_conf/add_br_conf.do" class="btn sbold green"> 创建新配置
	                                <i class="fa fa-plus"></i>
	                            </a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="table-scrollable">
	            <table class="table table-striped table-bordered table-hover table-checkable order-column" id="sample_1">
	                <thead>
	                    <tr>
	                        <th rowspan="2"> 序号 </th>
	                        <th rowspan="2"> 活动ID </th>
	                        <th rowspan="2"> 商场活动名称 </th>
	                        <th colspan="4">营销平台活动ID</th>
	                        <th colspan="2">花瓣提示框对白</th>
	                        <th colspan="2">四号花瓣</th>
	                        <th rowspan="2"> 活动地址 </th>
	                        <th rowspan="2"> 操作 </th>
	                    </tr>
	                    <tr>
	                    	<th>一</th>
	                    	<th>二</th>
	                    	<th>三</th>
	                    	<th>四</th>
	                    	<th> 二 </th>
	                        <th> 三</th>
	                        <th rowspan="2"> 出现概率 </th>
	                        <th rowspan="2"> 摇时间间隔<br/>（单位：秒） </th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<#list brConfList as brConf>
	                		<tr>
	                			<td>${brConf_index+1}</td>
	                			<td>${brConf.activityAutoid}</td>
	                			<td>${brConf.activityName}</td>
	                			<td>${brConf.platformActivityId01}</td>
	                			<td>${brConf.platformActivityId02}</td>
	                			<td>${brConf.platformActivityId03}</td>
	                			<td>${brConf.platformActivityId04}</td>
	                			<td>
									<a class=" popovers" data-container="body" data-trigger="hover" data-placement="bottom" data-content="${brConf.tipText02}" data-original-title="二号花瓣提示框对白">查看</a>
	                			</td>
	                			<td>
									<a class=" popovers" data-container="body" data-trigger="hover" data-placement="bottom" data-content="${brConf.tipText03}" data-original-title="三号花瓣提示框对白">查看</a>
								</td>
	                			<td>${brConf.probability04}</td>
	                			<td>${brConf.timeInterval}</td>
	                			<td>
	                				<a href="#myModal${brConf.activityAutoid}" role="button" class="btn red" data-toggle="modal"> 查看 </a>
	                				<div id="myModal${brConf.activityAutoid}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                    <h4 class="modal-title">活动地址</h4>
                                                </div>
                                                <div class="modal-body" style="text-align:left;">
                                                    <p> http://br.zqs1023.wang/activity-petal/petal_br/index.do?activityId=${brConf.activityAutoid} </p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button data-dismiss="modal" class="btn green">OK</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
	                			</td>
	                			<td>
	                				<a class="btn blue btn-outline" href="${contextPath}/br_conf/view_br_conf.do?autoid=${brConf.autoid}">查看</a>
	                				<a class="btn green btn-outline" href="${contextPath}/br_conf/mod_br_conf.do?autoid=${brConf.autoid}">编辑</a>
	                				<a class="btn red btn-outline" href="${contextPath}/br_conf/del_br_conf.do?autoid=${brConf.autoid}">删除</a>
	                			</td>
	                		</tr>
	                	</#list>
	                </tbody>
	            </table>
	            </div>
	        </div>
	    </div>
	    <!-- END EXAMPLE TABLE PORTLET-->
	</div>
</div>
</@framework.page_body>