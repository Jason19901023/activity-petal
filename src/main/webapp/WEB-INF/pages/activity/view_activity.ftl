<@framework.page_head title="后台管理系统" >
</@framework.page_head>

<@framework.page_body>
<div class="row">
	<div class="col-md-12 ">
        <!-- BEGIN SAMPLE FORM PORTLET-->
        <div class="portlet light ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-eye font-dark"></i>
                    <span class="caption-subject font-dark sbold uppercase">查看活动</span>
                </div>
                <div class="actions">
                </div>
            </div>
            <div class="portlet-body form">
                <form class="form-horizontal" role="form"> 
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">商场活动名称</label>
                            <div class="col-md-9">
                                <div class="form-control">${activity.name}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">活动时间</label>
                            <div class="col-md-9">
                            	<div class="form-control">${activity.startDate?string("yyyy-MM-dd HH:mm:ss")} 到 ${activity.endDate?string("yyyy-MM-dd HH:mm:ss")}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">商场卡包地址</label>
                            <div class="col-md-9">
                            	<div class="form-control">${activity.cardsUrl}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">营销平台抽奖ID</label>
                            <div class="col-md-9">
	                            <div class="form-control">${activity.platformActivityId}</div>
                            </div>
                        </div>
                        <#--
                        <div class="form-group">
                            <label class="col-md-3 control-label">营销平台抽奖接口</label>
                            <div class="col-md-9">
                            	<div class="form-control">${activity.platformLotteryUrl}</div>
                            </div>
                        </div>
                        -->
                        <div class="form-group">
					        <label class="col-md-3 control-label">活动启用</label>
					        <div class="col-md-9">
					        	<div class="form-control">
					        		<#if activity.status==0>
					        			是
					        			<#elseif activity.status==1>
					        			否
					        			<#else>
					        			未知
					        		</#if>
					        	</div>
					        </div>
					    </div>
                        
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="button" class="btn default" onclick="history.go(-1);">取消</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>
</@framework.page_body>