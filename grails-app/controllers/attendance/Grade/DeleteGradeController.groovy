package attendance.Grade

import SystemDomain.Grade

class DeleteGradeController {

    def delete() {
        def id = params?.id
        def grade = Grade.findById(id as Long)
        grade.delete(flush:true)
        redirect(controller:'grade',action:'index')
    }
}
