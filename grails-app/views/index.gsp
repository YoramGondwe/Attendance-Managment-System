<!doctype html>
<html>
<head>
    <meta name="layout" content="frame"/>
</head>
<g:each var="clas" in="${classes}">
    <div class="col-md-4">
        <div class="panel invoice-grid">
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-6">
                        <h6 class="text-semibold no-margin-top">Grade:${clas.grade}-${clas.code}</h6>
                        <ul class="list list-unstyled">
%{--                            <li>Number of Students #: &nbsp;0028</li>--}%
%{--                            <li>Issued on: <span class="text-semibold">2015/01/25</span></li>--}%
                        </ul>
                    </div>

                    <div class="col-sm-6">

                    </div>
                </div>
            </div>

            <div class="panel-footer panel-footer-condensed">
                <div class="heading-elements">
                    <span class="heading-text">
                        <span class="status-mark border-danger position-left"></span> Teacher ID: <span class="text-semibold">${clas.classTeacher}</span>
                    </span>

                    <ul class="list-inline list-inline-condensed heading-text pull-right">
                        <li><a href="#" class="text-default" data-toggle="modal" data-target="#invoice"><i class="icon-eye8"></i></a></li>
                        <li class="dropdown">
                            <a href="#" class="text-default dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i> <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><g:link action="index" controller="listStudents" params="[class:clas.code,grade:clas.grade]" class="icon-file-plus" > Mark Attendanc</g:link></li>
%{--                                <li><a href="${createLink(url: '/')}"><i class="icon-file-plus"></i>Mark Attendances</a></li>--}%

                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</g:each>

</html>
