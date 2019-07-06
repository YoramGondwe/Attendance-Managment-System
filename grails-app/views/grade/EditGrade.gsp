<!DOCTYPE html>
<html lang="en" >
<head>
    <meta name="layout" content="frame">
</head>
<!-- Main content -->
<!-- Page length options -->
<div class="col-md-6">
    <div class="app-title">
        <div>
            <h4><i class="fa fa-th-list"></i> Province</h4>
        </div>

    </div>
    <div class="panel panel-flat" >
        <div class="panel-body">
        <!-- //start form area  -->


            <g:if test = "${ grade != null}">
                <div id="banks">
                    <g:each var="pro" in="${grade}">

                        <br />
                        <hr/>
                        <br/>
                        <g:form url = "[action: 'update',controller:'updateGrade']"  method="post" class="form-horizontal" style='margin-top: -27px;'>

                            <input type="hidden" value="${pro.id}" name="id" id="id">

                            <div class="form-group">
                                <label class="col-lg-4 control-label" id="label-1">Grade:</label>
                                <div class="col-lg-6">
                                    <input type="text" value="${pro.description}" value="${pro.description}" name="grade" class="form-control">
                                </div>
                            </div>
                            <br />
                            <div class="text-right" style="margin-top:5px;margin-bottom:5px;margin-right:20px;">
                                <button type="submit" class="btn btn-primary btn-xs">Save <i class="icon-file-upload position-right"></i></button>
                            </div>
                        </g:form>
                    </g:each>

                </div>
            </g:if>

        <!--end form area   -->
        </div>
    </div>
</div>


</html>
