package attendance.Class

import SystemDomain.Class

class AddClassController {

    def addClass() {

        String name = params?.code
        String grade = params?.grade

        new Class(
              code: name,
                grade: grade
        ).save(flush:true,failOnError:true)

        redirect(controller:'classes',action:'index')
    }
}
