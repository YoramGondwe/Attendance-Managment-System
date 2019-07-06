package attendance.Teacher

import SystemDomain.Teacher
import attendance.SecRole
import attendance.SecUser
import attendance.SecUserSecRole

class AddTeacherController {

    def index() {
        def firstName = params?.firstName
        def lastname = params?.lastname
        def phone = params?.phone
        def email = params?.email
        def role = params?.role

        def acro = 'tch'
        Random random = new Random();
        String id = String.format("%06d", random.nextInt(10000))
        def staffId = acro.toUpperCase() + id

        new Teacher(
                staffId: staffId,
                firstName: firstName,
                lastName: lastname,
                phone: phone,
                email: email,
        ).save(flush: true)

        def roles = SecRole.findByAuthority(role) ?: new SecRole(authority: role).save(failOnError: true)

        def school = SecUser.findByUsername(staffId) ?: new SecUser(
                username: staffId,
                password: id,
                enabled: true
        ).save(flush: true, failOnError: true, insert: true)

        if (!school.authorities.contains(roles)) {
            new SecUserSecRole(
                    secUser: school,
                    secRole: roles
            ).save(flush: true, failOnError: true)

            flash.message = "Successfully registered $firstName"

            redirect(controller: 'teacher',action: 'index')
        }
    }
}
