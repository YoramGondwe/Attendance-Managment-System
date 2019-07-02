package attendance.AttendanceRecords

import SystemDomain.Attendance
import SystemDomain.Student
import attendance.SecUser

import java.text.SimpleDateFormat

class AttendanceController {
def springSecurityService
    def index() {
        def id = params?.id
        def studentId = params?.studentId
        def classId = params?.classId
        def grade_id = params?.grade_id
        SecUser User = springSecurityService.getCurrentUserId()
        def student = Student.findById(id as Long)
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
        String today = sdf.format(new Date())
        new Attendance(
                student_id: student.studentId,
                firstName: student.firstName,
                lastName: student.lastName,
                date: today,
                teacher_id: User.username,
                grade: grade_id,
                class_id: classId

        ).save(flush:true,failOnError:true)
        return true
    }
}
