package attendance.Student

import SystemDomain.Class
import SystemDomain.Grade
import SystemDomain.Student

class StudentController {

    def index() {
        def student = Student.findAll()
        def grades = Grade.findAll()
        def Classes = Class.findAll()

        render(view: '/student/student',model: [
                students:student,
                grade:grades,
                classes:Classes
        ])
    }
}
