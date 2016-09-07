<@framework.page_head title="后台管理系统" >
</@framework.page_head>

<@framework.page_body>
<div class="row">
	<div class="col-md-12 ">
        <!-- BEGIN SAMPLE FORM PORTLET-->
        <div class="portlet light ">
            <div class="portlet-body">
            	<div class="note note-danger">
                    <h4 class="block">错误提示</h4>
                    <p> ${errmsg!}</p>
                    <br/>
                    <p>
		                <a class="btn blue" href="javascript:history.go(-1);"> 返回 </a>
		            </p>
                </div>
            </div>
        </div>
</div>
</@framework.page_body>
<script>
$(document).ready(function() {
	
});
</script>