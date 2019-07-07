package attendance.AttendanceRecords

import SystemDomain.Student

class ListStudentsController {

    def index() {
        def classId = params?.class
        def gradeId = params?.grade

        def students = Student.findAllByClass_idAndGrade_id(classId,gradeId)

        render(view: '/attendance/listStudents',model: [students:students])
    }
}
