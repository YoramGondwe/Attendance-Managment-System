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
        <p>Students</p>
    </div>
<!-- Basic layout-->
    <g:form url="[action:'addClass',controller:'addClass']" class="form-horizontal" style='margin-top: -27px;'>
        <div class="col-md-10">
            <div class="panel panel-flat" >
                <div class="panel-body">
                    <table class="table datatable-show-all" id="sampleTable">

                        <thead>
                        <tr>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>Student ID</th>
                        </tr>
                        </thead>
                        <tbody>

                        <g:if test="${students != null}">

                            <div id="students">
                                <g:each var="prov" in="${students}">
                                    <input type="hidden" name="id" id="id" value="${prov.id}"/>

                                    <tr>
                                        <input type="hidden"  id="student" value="${prov.studentId}"/>
                                        <td  >${prov.firstName}</td>
                                        <td  >${prov.lastName}</td>
                                        <td  >${prov.studentId}</td>
                                        <td class="text-center">
                                            <div class="form-group pt-15">
                                                <div id="one">
                                                    <label  class="radio-inline">
                                                        <input  id="present" value="1" type="radio" name="radio" class="checkbox" >
                                                        <p>Present</p>
                                                    </label>

                                                    <label class="radio-inline">
                                                        <input id="absent" type="radio" name="radio" class="styled">
                                                        Absent
                                                    </label>

                                                    <label class="radio-inline">
                                                        <input id="late" type="radio" name="radio" class="styled">
                                                        Late
                                                    </label>


                                                    <label class="radio-inline">
                                                        <input id="sick" type="radio" name="radio" class="styled">
                                                        Sick
                                                    </label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </g:each>

                            </div>
                        </g:if>

                        </tbody>
                    </table>
                    <div class="text-right">
                        <button class="btn btn-primary btn-xs" id="submit"  name="submit" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i>Process Attendance</button>
                </div>

            </div>
            </div>
            <!-- /basic layout -->
        </div>
    </g:form>
<!-- /static mode -->
</div>
<asset:javascript src="plugins/notifications/pnotify.min.js"/>
<asset:javascript  src="pages/components_notifications_pnotify.js"/>
%{--<asset:javascript src="/plugins/jquery.dataTables.min.js"/>--}%
%{--<asset:javascript  src="/plugins/dataTables.bootstrap.min.js"/>--}%
%{--<g:javascript >$('#sampleTable').DataTable();</g:javascript>--}%
<g:javascript>
    $(document).ready(function () {

        $("input[name='radio']").change(function () {
            if (this.checked){
                var isChecked = !!$('#present').val();
                // var isAbsent = !!$('#absent').val();
                // var isSick = !!$('#sick').val();
                // var isLate = !!$('#late').val();
                var id = $('#student').val()
                 if (isChecked) {
                     new PNotify({
                         title: 'Attendance Marked',
                         type: 'success',
                         text: id + " "+" Marked Present",
                         desktop: {
                             desktop: true,
                             icon: 'assets/images/pnotify/info.png'
                         }
                     });
                 }

            }
            $('#present').val(this.checked)
        })
        // $("#present").click(function () {
        //     var id = $('#id').val();
        //     console.log("the one:" + id)
        //     var isChecked = !!$('#present').val();
        //     if (isChecked) {
        //         console.log("we clicked present")
        //         $.ajax({
        //             method: 'post',
        //             url: '/attendance/mark',
        //             data: {
        //                 id: id,
        //                 present: 1
        //             }
        //
        //         })
        //     }
        //
        //
        // });


    });
    //</g:javascript>
</html>
