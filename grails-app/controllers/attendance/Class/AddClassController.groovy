package attendance.Class

import SystemDomain.Class

class AddClassController {

    def addClass() {

        String name = params.get('name')
        String grade = params?.name

        new Class(
                name: name,
                grade: grade
        ).save(flush:true,failOnError:true)

        redirect(controller:'classes',action:'index')
    }
}
