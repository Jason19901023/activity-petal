<@framework.page_head title="后台管理系统" >
</@framework.page_head>

<@framework.page_body>
<div class="row">
	<div class="col-md-12 ">
        <!-- BEGIN SAMPLE FORM PORTLET-->
        <div class="portlet light ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-plus font-dark"></i>
                    <span class="caption-subject font-dark sbold uppercase">修改配置</span>
                </div>
                <div class="actions">
                </div>
            </div>
            <div class="portlet-body form">
                <form class="form-horizontal" role="form" action="${contextPath}/br_conf/update_br_conf.do" method="post">
                	<input type="hidden" name="autoid" value="${brConf.autoid}" />  
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">商场活动</label>
                            <div class="col-md-9">
                            	<select class="form-control" name="activityAutoid">
                            		<#list activityList as activity>
	                            		<option value="${activity.autoid}" <#if activity.autoid==brConf.activityAutoid> selected </#if>>${activity.name}</option>
                            		</#list>
                            	</select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">一号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="platformActivityId01" value="${brConf.platformActivityId01!}" placeholder="请输入一号花瓣营销平台的活动ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">二号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="platformActivityId02" value="${brConf.platformActivityId02!}" placeholder="请输入二号花瓣营销平台的活动ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">三号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="platformActivityId03" value="${brConf.platformActivityId03!}" placeholder="请输入三号花瓣营销平台的活动ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">四号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="platformActivityId04" value="${brConf.platformActivityId04!}" placeholder="请输入四号花瓣营销平台的活动ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">二号花瓣提示框对白</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="tipText02" value="${brConf.tipText02!}" placeholder="请输入二号花瓣提示框对白">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">三号花瓣提示框对白</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="tipText03" value="${brConf.tipText03!}" placeholder="请输入三号花瓣提示框对白">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">四号花瓣出现概率</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="probability04" value="${brConf.probability04!}" placeholder="请输入四号花瓣出现概率">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">摇四号花瓣时间间隔（单位：秒）</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="timeInterval" value="${brConf.timeInterval!}" placeholder="请输入摇四号花瓣时间间隔">
                            </div>
                        </div>
                        
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn green">提交</button>
                                <button type="button" class="btn default" onclick="history.go(-1);">取消</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>
</@framework.page_body>
<script>
$(document).ready(function() {
	
});
</script>