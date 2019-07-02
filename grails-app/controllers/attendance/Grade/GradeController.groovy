package attendance.Grade

import SystemDomain.Grade

class GradeController {

    def index() {
        def grade = Grade.findAll()
        render(view: '', model: [
                grade:grade
        ])
    }
}
