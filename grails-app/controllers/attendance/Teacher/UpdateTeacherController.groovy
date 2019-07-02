package attendance.Teacher

import SystemDomain.Teacher

class UpdateTeacherController {

    def index() {
        def firstName = params?.firstName
        def lastName = params?.lastname
        def phone = params?.phone
        def email = params?.email
        def role = params?.role

        def id = params?.id
        def teacher = Teacher.findById(id as Long)
        teacher.setFirstName(firstName)
        teacher.setLastName(lastName)
        teacher.setPhone(phone)
        teacher.setEmail(email)

        teacher.save(flush:true)
        flash.message='Successfully Updated Teacher'
        redirect(controller:'teacher',action:'index')

    }
}
