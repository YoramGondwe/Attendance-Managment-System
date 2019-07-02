package attendance.Grade

import SystemDomain.Grade

class UpdateGradeController {

    def index(){
        def id = params?.id
        def grade = Grade.findById(id as Long)
        render(view: '',model: [grade:grade])
    }
    def update() {
        def id = params?.id
        def code = params?.grade
        def grade = Grade.findById(id as Long)
        grade.setDescription(code)
        grade.save(flush:true,failOnError:true)
        flash.message = "Grade Successfully Updated"
       redirect(controller:'grade',action:'index')
    }
}
