package attendance.Student

import SystemDomain.Student

class DeleteStudentController {

    def index() {
        def studentId = params?.id

        def student = Student.findByStudentId(studentId)

        student.delete(flush:true)

        flash.message = 'Student deleted'
        redirect(controller:'student',action:'index')
    }
}
