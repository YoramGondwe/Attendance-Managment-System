package attendance.Class

import SystemDomain.Class

class DeleteClassController {

    def index() {
        def id = params?.id
        def classes = Class.findById(id as Long)

        classes.delete(flush:true)
        redirect(controller:'classes',action:'index')
    }
}
