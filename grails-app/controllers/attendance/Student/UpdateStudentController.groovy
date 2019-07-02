package attendance.Student

import SystemDomain.Student

class UpdateStudentController {
    def index(){
        def studentId = params?.id
        def student = Student.findByStudentId(studentId)

        render(view: '',model: [student:student])
    }

    def updateStudent() {
        def studendId = params?.id
        String firstName = params?.firstName
        String lastName = params?.lastName
        String dateOfBirth = params?.dob
        String nationality = params?.nationality
        String otherNames = params?.otherNames
        String email = params?.email
        Integer phone = params?.phone
        String gender = params?.gender
        String grade_id = params?.grade
        String class_id = params?.classId

      try{
          def student = Student.findByStudentId(studendId)
          student.setFirstName(firstName)
          student.setLastName(lastName)
          student.setDateOfBirth(dateOfBirth)
          student.setNationality(nationality)
          student.setOtherNames(otherNames)
          student.setEmail(email)
          student.setPhone(phone)
          student.setGender(gender)
          student.setGrade_id(grade_id)
          student.setClass_id(class_id)
          student.save(flush:true,failOnError:true)
          flash.message= "successfully Updated Student details "
      }catch(Exception e){
          e.printStackTrace()
          flash.error= "failed to Updated Student details"
      }
        redirect(controller:'student',action:'index')
    }

}
