<!DOCTYPE html>
<html lang="en" >
<head>
    <meta name="layout" content="frame">
</head>
<!-- Main content -->
<!-- Page length options -->
<div class="col-md-6">
    <div class="app-title">

    </div>
    <div class="panel panel-flat" >
        <div class="panel-body">
        <!-- //start form area  -->


            <g:if test = "${ classes != null}">
                <div id="banks">
                    <g:each var="pro" in="${classes}">
                        <div>
                            <h4><i class="fa fa-th-list"></i>Edit Class</h4>
                        </div>
                        <hr/>
                        <br/>
                        <g:form url = "[action: 'updateClass',controller:'updateClass']"  method="post" class="form-horizontal" style='margin-top: -27px;'>

                            <input type="hidden" value="${pro.id}" name="id" id="id">

                            <div class="form-group">
                                <label class="col-lg-4 control-label" id="label-1">Class Code</label>
                                <div class="col-lg-6">
                                    <input type="text" value="${pro.code}" value="${pro.code}" name="name" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-4 control-label" id="label-1">Grade</label>
                                <div class="col-lg-6">
                                    <input type="text" field="${pro.grade}" value="${pro.grade}" name="grade" class="form-control" id="" >
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-4 control-label">Class Teacher:</label>
                                <div class="col-lg-6">
                                    <select name="teacher" class="form-control form-control-sm">
                                        <option selected>--Select Teacher--</option>
                                        <g:each var="teach" in="${teacher}">
                                            <option value="${teach.staffId}">${teach.firstName} - ${teach.lastName}</option>
                                        </g:each>

                                    </select>
                                </div>
                            </div>

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
