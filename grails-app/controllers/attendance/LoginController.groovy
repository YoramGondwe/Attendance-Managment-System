package attendance

class LoginController {
    def springSecurityService
    def logout() {

        session.invalidate()
        redirect(action: 'auth')
    }
}
