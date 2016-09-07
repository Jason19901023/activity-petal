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
                    <span class="caption-subject font-dark sbold uppercase">北人集团花开盛宴配置</span>
                </div>
                <div class="actions">
                </div>
            </div>
            <div class="portlet-body form">
                <form class="form-horizontal" role="form"> 
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">活动名称</label>
                            <div class="col-md-9">
                                <div class="form-control">${activity.name}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">一号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                            	<div class="form-control">${brConf.platformActivityId01}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">二号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                            	<div class="form-control">${brConf.platformActivityId02}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">三号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                            	<div class="form-control">${brConf.platformActivityId03}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">四号花瓣营销平台的活动ID</label>
                            <div class="col-md-9">
                            	<div class="form-control">${brConf.platformActivityId04}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">二号花瓣提示框对白</label>
                            <div class="col-md-9">
                            	<div class="form-control">${brConf.tipText02}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">三号花瓣提示框对白</label>
                            <div class="col-md-9">
                            	<div class="form-control">${brConf.tipText03}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">四号花瓣出现概率</label>
                            <div class="col-md-9">
	                            <div class="form-control">${brConf.probability04}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">摇四号花瓣时间间隔（单位：秒）</label>
                            <div class="col-md-9">
	                            <div class="form-control">${brConf.timeInterval}</div>
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