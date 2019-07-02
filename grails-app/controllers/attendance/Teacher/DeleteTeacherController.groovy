package attendance.Teacher

import SystemDomain.Teacher

class DeleteTeacherController {

    def index() { 
        def id = params?.id
        def teacher = Teacher.findById(id as Long)
        teacher.delete(flush:true)

        flash.message= 'Teacher Deleted Successfully'

        redirect(controller: 'teacher', action:'index')
    }
}
