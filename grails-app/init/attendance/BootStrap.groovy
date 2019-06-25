package attendance

class BootStrap {

    def init = { servletContext ->
//        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
//        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
//        def customerRole = SecRole.findByAuthority('ROLE_CUSTOMER') ?: new SecRole(authority: 'ROLE_CUSTOMER').save(failOnError: true)
//        def customerOrg = SecRole.findByAuthority('ROLE_ORGANIZATION') ?: new SecRole(authority: 'ROLE_ORGANIZATION').save(failOnError: true)
//        def clerkRole = SecRole.findByAuthority('ROLE_CLERK') ?: new SecRole(authority: 'ROLE_CLERK').save(failOnError: true)
//
//        def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
//                firstName: 'Yoram',
//                lastName: 'Gondwe',
//                gender: 'M',
//                username: 'blue',
//                password: 'password',
////                organization_id: 0,
//                enabled: true
//        ).save(failOnError: true)
//
//        if (!adminUser.authorities.contains(adminRole)) {
//            SecUserSecRole.create adminUser, adminRole
//        }
    }
    def destroy = {
    }
}
