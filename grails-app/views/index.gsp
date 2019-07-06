<!doctype html>
<html>
<head>
    <meta name="layout" content="frame"/>
</head>
<g:each var="clas" in="${classes}">
    <div class="col-md-6">
        <div class="panel invoice-grid">
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-6">
                        <h6 class="text-semibold no-margin-top">Grade:${clas.grade}-${clas.code}</h6>
                        <ul class="list list-unstyled">
                            <li>Invoice #: &nbsp;0028</li>
                            <li>Issued on: <span class="text-semibold">2015/01/25</span></li>
                        </ul>
                    </div>

                    <div class="col-sm-6">
                        <h6 class="text-semibold text-right no-margin-top">$8,750</h6>
                        <ul class="list list-unstyled text-right">
                            <li>Method: <span class="text-semibold">SWIFT</span></li>
                            <li class="dropdown">
                                Status: &nbsp;
                                <a href="#" class="label bg-danger-400 dropdown-toggle" data-toggle="dropdown">Overdue <span class="caret"></span></a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li class="active"><a href="#"><i class="icon-alert"></i> Overdue</a></li>
                                    <li><a href="#"><i class="icon-alarm"></i> Pending</a></li>
                                    <li><a href="#"><i class="icon-checkmark3"></i> Paid</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"><i class="icon-spinner2 spinner"></i> On hold</a></li>
                                    <li><a href="#"><i class="icon-cross2"></i> Canceled</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel-footer panel-footer-condensed">
                <div class="heading-elements">
                    <span class="heading-text">
                        <span class="status-mark border-danger position-left"></span> Due: <span class="text-semibold">2015/02/25</span>
                    </span>

                    <ul class="list-inline list-inline-condensed heading-text pull-right">
                        <li><a href="#" class="text-default" data-toggle="modal" data-target="#invoice"><i class="icon-eye8"></i></a></li>
                        <li class="dropdown">
                            <a href="#" class="text-default dropdown-toggle" data-toggle="dropdown"><i class="icon-menu7"></i> <span class="caret"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="#"><i class="icon-printer"></i> Print invoice</a></li>
                                <li><a href="#"><i class="icon-file-download"></i> Download invoice</a></li>
                                <li class="divider"></li>
                                <li><a href="#"><i class="icon-file-plus"></i> Edit invoice</a></li>
                                <li><a href="#"><i class="icon-cross2"></i> Remove invoice</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</g:each>

</html>
