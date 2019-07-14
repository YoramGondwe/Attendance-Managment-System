<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>

<body class="login-container login-cover">
<!-- Page container -->
<div class="page-container pb-20">
    <!-- Page content -->
    <div class="page-content">
        <!-- Main content -->
        <div class="content-wrapper">
            <!-- Form with validation -->
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
            <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="form-validate">
                <div class="panel panel-body login-form">

                    <div class="text-center">
                        <div class="icon-object border-slate-300 text-slate-300"><i class="icon-reading"></i></div>
                        <h5 class="content-group">Login to your account <small class="display-block">Your credentials</small></h5>

                        <g:if test='${flash.message}'>
                            <div class="login_message text-danger-800">${flash.message}</div>
                        </g:if>


                    </div>

                    <div class="form-group has-feedback has-feedback-left">
                        <input type="text" class="form-control" placeholder="Username" name="username" required="required">
                        <div class="form-control-feedback">
                            <i class="icon-user text-muted"></i>
                        </div>
                    </div>

                    <div class="form-group has-feedback has-feedback-left">
                        <input type="password" class="form-control" placeholder="Password" name="password" required="required">
                        <div class="form-control-feedback">
                            <i class="icon-lock2 text-muted"></i>
                        </div>
                    </div>

                    <div class="form-group login-options">
                        <div class="row">
                            <div class="col-sm-6">
                                <label class="checkbox-inline">
                                    %{--<input type="checkbox" class="styled" checked="checked">--}%
                                    %{--Remember--}%
                                </label>
                            </div>

%{--                            <div class="col-sm-6 text-right">--}%
%{--                                <a href="/">Forgot password?</a>--}%
%{--                            </div>--}%
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="submit" name="login" class="btn bg-blue btn-block">Login <i class="icon-arrow-right14 position-right"></i></button>
                    </div>

%{--                    <div class="content-divider text-muted form-group"><span>Don't have an account?</span></div>--}%
%{--                    <a href="login_registration.html" class="btn btn-default btn-block content-group">Sign up</a>--}%
%{--                    <span class="help-block text-center no-margin">By continuing, you're confirming that you've read our <a href="#">Terms &amp; Conditions</a> and <a href="#">Cookie Policy</a></span>--}%

                </div>
            </form>
            <!-- /form with validation -->
        </div>
        <!-- /main content -->
    </div>
    <!-- /page content -->

</div>
<!-- /page container -->

</body>
</html>
