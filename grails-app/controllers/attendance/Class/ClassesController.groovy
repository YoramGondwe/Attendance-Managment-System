package attendance.Class

import SystemDomain.Class

class ClassesController {

    def index() {
        def classes = Class.findAll()
        render(view: '/classes/classes', model: [
                classy: classes
        ])
    }

}
