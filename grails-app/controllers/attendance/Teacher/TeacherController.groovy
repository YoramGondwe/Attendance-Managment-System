package attendance.Teacher

import SystemDomain.Teacher

class TeacherController {

    def index() {
        def teacher = Teacher.findAll()
        render(view: '/teacher/teacher',model: [teacher:teacher])
    }
}
