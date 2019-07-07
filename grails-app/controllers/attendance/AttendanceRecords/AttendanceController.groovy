package attendance.AttendanceRecords

import SystemDomain.Attendance
import SystemDomain.Student
import SystemDomain.Teacher
import attendance.SecUser

import java.text.SimpleDateFormat

class AttendanceController {
def springSecurityService
    def index() {
        println "we are hit"
        def id = params?.id
        def present = params?.present
        SecUser User = springSecurityService.getCurrentUser()

        def student = Student.findById(id)
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd")
        String today = sdf.format(new Date())
        def teacher = Teacher.findByStaffId(User.username)
        println "student:$student.studentId"
        println "Teacher:$User.username"
        new Attendance(
                student_id: student.studentId,
                firstName: student.firstName,
                lastName: student.lastName,
                date: today,
                teacher_id: User.username,
                teacherFirstName: teacher.firstName,
                teacherLastName: teacher.lastName,
                grade: student.grade_id,
                class_id: student.class_id,
                present: present

        ).save(flush:true,failOnError:true)
        return true
    }
}
