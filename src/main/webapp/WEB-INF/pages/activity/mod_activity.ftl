<@framework.page_head title="后台管理系统" >
<link href="${contextPath}/resource/metronic_v4.5.3/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
</@framework.page_head>

<@framework.page_body>
<div class="row">
	<div class="col-md-12 ">
        <!-- BEGIN SAMPLE FORM PORTLET-->
        <div class="portlet light ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-plus font-dark"></i>
                    <span class="caption-subject font-dark sbold uppercase">编辑活动</span>
                </div>
                <div class="actions">
                </div>
            </div>
            <div class="portlet-body form">
                <form class="form-horizontal" role="form" action="${contextPath}/activity/update_activity.do" method="post">
                	<input type="hidden" name="autoid" value="${activity.autoid}" /> 
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">商场活动名称</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="name" value="${activity.name!}" placeholder="请输入商场活动名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">活动时间</label>
                            <div class="col-md-9">
                            	<div class="input-group" id="defaultrange">
                                    <input type="text" class="form-control" name="dateRange" value="${activity.dateRange!}" readonly  placeholder="请选择活动时间">
                                    <span class="input-group-btn">
                                        <button class="btn default date-range-toggle" type="button">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">商场卡包地址</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="cardsUrl" value="${activity.cardsUrl!}" placeholder="请输入商场卡包地址">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">营销平台抽奖ID</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="platformActivityId" value="${activity.platformActivityId!}" placeholder="请输入营销平台抽奖ID">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">营销平台抽奖接口</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="platformLotteryUrl" value="${activity.platformLotteryUrl!}" placeholder="请输入营销平台抽奖接口">
                            </div>
                        </div>
                        <div class="form-group">
					        <label class="col-md-3 control-label">活动启用</label>
					        <div class="col-md-9">
					            <select class="form-control" name="status">
					                <option value="0" <#if activity.status==0>selected</#if>>是</option>
					                <option value="1" <#if activity.status==1>selected</#if>>否</option>
					            </select>
					        </div>
					    </div>
                        
                    </div>
                    <div class="form-actions">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn green">提交</button>
                                <button type="button" class="btn default">取消</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>
</@framework.page_body>
<script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/moment.min.js" type="text/javascript"></script>
<script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {
	$('#defaultrange').daterangepicker({
	        timePicker: true,
	        locale: {
		      format: 'YYYY-MM-DD hh:mm:ss'
		    },
		    startDate: '${activity.startDate?string("yyyy-MM-dd HH:mm:ss")}',
            endDate: '${activity.endDate?string("yyyy-MM-dd HH:mm:ss")}',
	        separator: ' to '
	    },
	    function (start, end) {
	        $('#defaultrange input').val(start.format('YYYY-MM-DD hh:mm:ss') + ' - ' + end.format('YYYY-MM-DD hh:mm:ss'));
	    }
	);  
});
</script>