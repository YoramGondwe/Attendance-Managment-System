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
            <h4><i class="fa fa-th-list"></i>BankLINK - Edit Province</h4>
        </div>

    </div>
    <div class="panel panel-flat" >
        <div class="panel-body">
        <!-- //start form area  -->


            <g:if test = "${ student != null}">
                <div id="banks">
                    <g:each var="pro" in="${student}">
%{--                        <div class="pull-left"><p><b>Last updated by: </b> <span>${pro.maker_id}</span> <b> | On: </b><span><g:formatDate format="dd-MMM-yyyy" date="${pro.maker_date}"/></span> </p>--}%
                        </div>
                        <br />
                        <hr/>
                        <br/>
                        <g:form url = "[action: 'updateStudent',controller:'updateStudent']"  method="post" class="form-horizontal" style='margin-top: -27px;'>

                            <input type="hidden" value="${pro.id}" name="id" id="id">

                            <div class="form-group">
                                <label class="col-lg-4 control-label" id="label-1">Province Code</label>
                                <div class="col-lg-6">
                                    <input type="text" value="${pro.code}" value="${pro.code}" name="code" class="form-control">
                                </div>
                            </div>
                            <br />
                            <div class="form-group">
                                <label class="col-lg-4 control-label" id="label-1">Description</label>
                                <div class="col-lg-6">
                                    <input type="text" field="${pro.description}" value="${pro.description}" name="description" class="form-control" id="" >
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
