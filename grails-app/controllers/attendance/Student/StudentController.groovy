package attendance.Student

import SystemDomain.Student

class StudentController {

    def index() {
        def student = Student.findAll()
        render(view: '',model: [students:student])
    }
}
