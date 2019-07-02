package attendance.Class

import SystemDomain.Class

class UpdateClassController {
    def editPage(){
        def id = params?.id
        def classes = Class.findById(id as Long)
        render(view: '',model: [classes:classes])
    }


    def updateClass() {
        def id = params?.id
        def name = params?.name
        def grade = params?.grade
        try{
            def classId = Class.findById(id as Long)
            classId.setName(name)
            classId.setGrade(grade)
            classId.save(flush:true,failOnError:true)
            flash.message = "Successfully Updated class"
        }catch(Exception e){
            e.printStackTrace()
            flash.error = "Failed to Update Class due to error "
        }
        redirect(controller:'classes',action:'index')
    }
}
