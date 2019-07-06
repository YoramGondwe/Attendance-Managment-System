package attendance.Class

import SystemDomain.Class
import SystemDomain.Teacher

class UpdateClassController {
    def editPage(){
        def id = params?.id
        def teacher = Teacher.findAll()
        def classes = Class.findById(id as Long)
        render(view: '/classes/editClass',model: [
                classes:classes,
                 teacher:teacher
        ])
    }


    def updateClass() {
        def id = params?.id
        def code = params?.name
        def grade = params?.grade
        def teacher = params?.teacher
        try{
            def classId = Class.findById(id as Long)
            classId.setCode(code)
            classId.setGrade(grade)
            classId.setClassTeacher(teacher)
            classId.save(flush:true,failOnError:true)
            flash.message = "Successfully Updated class"
        }catch(Exception e){
            e.printStackTrace()
            flash.error = "Failed to Update Class due to error "
        }
        redirect(controller:'classes',action:'index')
    }
}
