<%--
  Created by IntelliJ IDEA.
  User: yoram
  Date: 6/26/19
  Time: 6:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="frame"/>
</head>

<body>
%{-- table start--}%
<div class="panel panel-flat"  style="overflow-x: auto;">
    <div class="panel-heading">
        <h5 class="panel-title"> Class List</h5>
        <div class="heading-elements">
        </div>

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

        <div class="row" >
            <div class="col-md-6" style="margin:auto;">
                <div class="tile">
                    <div class="tile-body">
                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                            <tr>
                                %{--                                <th>Name</th>--}%
                                <th>Name</th>
                                <th>Grade</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:if test="${classy != null}">
                                <div>
                                    <g:each var="blue" in="${classy}">
                                        <tr>

                                            <td >${blue.name}</td>
                                            <td >${blue.grade}</td>
                                            <td >
                                                <g:link controller="manageUsers" action="editUser" params="[id: blue.id]"  class="btn btn-default">Edit</g:link>
                                            </td>
                                        </tr>
                                    </g:each>

                                </div>
                            </g:if>
                            </tbody>
                        </table>

                    </div>

                    <div class="tile-footer">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-3">
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-6">

            </div>
        </div>

    </div>
</div>
%{--table end--}%

</body>
<asset:javascript src="pages/user_pages_list.js"/>

<asset:javascript src="plugins/jquery.dataTables.min.js"/>
<asset:javascript  src="plugins/dataTables.bootstrap.min.js"/>
<g:javascript >$('#sampleTable').DataTable();</g:javascript>

</html>
