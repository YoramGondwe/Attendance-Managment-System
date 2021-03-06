<!DOCTYPE html>
<html lang="en"  >

<head>
    <meta name="layout" content="frame">
</head>
<g:if test="${flash.message}">
    <div class="alert alert-success no-border text-center">
        <button type="button" class="close" data-dismiss="alert"><span>&times;</span><span class="sr-only">Close</span></button>
        <span class="text-semibold">${flash.message}</span>
    </div>
</g:if>
<g:if test="${flash.error}">
    <div class="alert alert-danger no-border text-center">
        <button type="button" class="close" data-dismiss="alert"><span>&times;</span><span class="sr-only">Close</span></button>
        <span class="text-semibold">${flash.error}</span>
    </div>
</g:if>
<!-- Horizontal form options -->
<div class="row col-lg-12 round" style="padding:-10px;">
    <div class="panel-heading" style="margin-bottom:10px;margin-top:-10px;">
        <p>List Classes</p>
    </div>
<!-- Basic layout-->
    <g:form url="[action:'addClass',controller:'addClass']" class="form-horizontal" style='margin-top: -27px;'>
        <div class="col-md-6">
            <div class="panel panel-flat" >
                <div class="panel-body">
                    <table class="table datatable-show-all">

                        <thead>
                        <tr>
                            <th>Grade</th>
                            <th>Code</th>
                            <th>Class Teacher</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>

                        <g:if test="${classy != null}">
                            <input type="hidden" name="id"  value="${classy.id}"/>
                            <div id="towns">
                                <g:each var="prov" in="${classy}">
                                    <tr >
                                        <td  >${prov.grade}</td>
                                        <td  >${prov.code}</td>
                                        <td  >${prov.classTeacher}</td>
                                        <td class="text-center">
                                            <ul class="icons-list">
                                                <li class="dropdown">
                                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                        <i class="icon-menu9"></i>
                                                    </a>
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><g:link action="index" controller="deleteClass"  params="[id:prov.id]" class="text-center">Delete</g:link></li>
                                                        <li><g:link action="editPage" controller="updateClass" params="[id:prov.id]" class="text-center" >Edit</g:link></li>

                                                    </ul>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                </g:each>

                            </div>
                        </g:if>

                        </tbody>
                    </table>
                </div>
            </div>
            <!-- /basic layout -->
        </div>

        <div class="col-md-6">
            <div class="panel panel-flat">
                <div class="panel-body">
                    <h5>New Class</h5><hr /><br />
                    <div class="form-group">
                        <label class="col-lg-4 control-label" id="label-1">Code:</label>
                        <div class="col-lg-6">
                            <input type="text" name="code" class="form-control" required >
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Grade:</label>
                        <div class="col-lg-6">
                            <select name="grade" class="form-control form-control-sm">
                                <option selected>--Select Grade--</option>
                                <g:each var="gad" in="${grades}">
                                    <option value="${gad.description}">${gad.description}</option>
                                </g:each>

                            </select>
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
                        <!--<button type="submit" class="btn btn-defoult btn-xs">Add New <i class="icon-new-tab position-left"></i></button>-->
                        <!--<button type="submit" class="btn btn-info btn-xs">Edit <i class="icon-pencil4 position-left"></i></button>-->
                        <button type="submit" class="btn btn-primary btn-xs">Save <i class="icon-file-upload position-right"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </g:form>
<!-- /static mode -->
</div>
</html>
