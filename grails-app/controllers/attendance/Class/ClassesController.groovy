package attendance.Class

import SystemDomain.Class
import SystemDomain.Grade
import SystemDomain.Teacher

class ClassesController {

    def index() {
        def classes = Class.findAll()
        def grades = Grade.findAll()
        def teacher = Teacher.findAll()
        render(view: '/classes/classes', model: [
                classy: classes,
                grades:grades,
                teacher:teacher
        ])
    }

}
