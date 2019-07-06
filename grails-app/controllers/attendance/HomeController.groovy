package attendance

import SystemDomain.Class
import grails.plugin.springsecurity.SpringSecurityUtils

class HomeController {
def springSecurityService
    def index() {
        def classes = ""
        SecUser user = springSecurityService.getCurrentUser()
        if (SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN,ROLE_HEAD')){
          classes = Class.findAll()
        }else if (SpringSecurityUtils.ifAllGranted('ROLE_TEACHER')){
            classes= Class.findAllByClassTeacher(user.username)
        }else{

        }
        render(view: '/index',model: [classes:classes])
    }
}
