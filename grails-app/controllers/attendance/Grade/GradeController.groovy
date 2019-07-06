package attendance.Grade

import SystemDomain.Grade

class GradeController {

    def index() {
        def grade = Grade.findAll()
        render(view: '/grade/grade', model: [
                grade:grade
        ])
    }
}
