package attendance.AttendanceRecords

import attendance.SecUser

class AttendanceController {
def springSecurityService
    def index() {
        def id = params?.id
        def studentId = params?.studentId
        def classId = params?.classId
        def grade_id = params?.grade_id
        SecUser User = springSecurityService.getCurrentUserId()

    }
}
