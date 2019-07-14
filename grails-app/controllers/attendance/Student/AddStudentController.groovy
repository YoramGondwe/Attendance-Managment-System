package attendance.Student

import SystemDomain.School_Info
import SystemDomain.Student
import attendance.SecRole
import attendance.SecUser
import attendance.SecUserSecRole

class AddStudentController {

    def addStudent() {
        String firstName = params?.firstName
        String lastName = params?.lastName
        def yearRegistered = params?.yearRegistered
        String dateOfBirth = params?.dob
        String nationality = params?.nationality
        String otherNames = params?.otherNames
        String email = params?.email
        Integer phone = Integer.parseInt(params?.phone)
        String gender = params?.gender
        String grade_id = params?.grade
        String class_id = params?.classId

//        def acro = School_Info.last().acronym
        def acro = 'CHS'
        Random random = new Random();
        String id = String.format("%06d", random.nextInt(10000))
        def studentId = acro.toUpperCase() + id

        println "pass ${id} StId:${studentId}"

        new Student(
                studentId: studentId,
                firstName: firstName,
                lastName: lastName,
                yearRegistered: yearRegistered,
                dateOfBirth: dateOfBirth,
                nationality: nationality,
                otherNames: otherNames,
                email: email,
                phone: phone,
                gender: gender,
                grade_id: grade_id,
                class_id: class_id
        ).save(flush: true, failOnError: true)


        def roles = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)

        def school = SecUser.findByUsername(studentId) ?: new SecUser(
                username: studentId,
                password: id,

                enabled: true
        ).save(flush: true, failOnError: true, insert: true)

        if (!school.authorities.contains(roles)) {
            new SecUserSecRole(
                    secUser: school,
                    secRole: roles
            ).save(flush: true, failOnError: true)

        }
        flash.message = "Successfully registered $studentId"
        redirect(controller:'student',action:'index')
    }
}
