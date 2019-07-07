package attendance

class BootStrap {

    def init = { servletContext ->
        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
        def headMaster = SecRole.findByAuthority('ROLE_HEAD') ?: new SecRole(authority: 'ROLE_HEAD').save(failOnError: true)
        def Teacher = SecRole.findByAuthority('ROLE_TEACHER') ?: new SecRole(authority: 'ROLE_TEACHER').save(failOnError: true)

            def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                firstName: 'Joshua',
                lastName: 'Amatende',
                gender: 'M',
                username: 'admin',
                password: 'password',
                enabled: true
        ).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }
    }
    def destroy = {
    }
}
