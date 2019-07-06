package attendance.Class

import SystemDomain.Class

class AddClassController {

    def addClass() {

        String name = params?.code
        String grade = params?.grade
        String teacher = params?.teacher
        new Class(
                code: name,
                grade: grade,
                classTeacher: teacher
        ).save(flush: true, failOnError: true)

        redirect(controller: 'classes', action: 'index')
    }
}
