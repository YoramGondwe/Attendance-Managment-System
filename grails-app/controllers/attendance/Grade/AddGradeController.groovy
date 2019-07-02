package attendance.Grade

import SystemDomain.Grade

class AddGradeController {

    def addGrade() {
        def grade = params?.grade
        new Grade(
                description: grade
        ).save(flush:true)
        redirect(controller:'grade',action:'index')
    }
}
