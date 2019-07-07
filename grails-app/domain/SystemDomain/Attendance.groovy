package SystemDomain

class Attendance {
    String student_id
    String firstName
    String lastName
    String date
    Integer present
    Integer absent
    Integer late
    Integer sick
    String class_id
    String grade
    String teacher_id
    String teacherFirstName
    String teacherLastName
    static constraints = {

        student_id nullable: false, blank: false
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        date nullable: false, blank: false
        absent nullable: true, blank: true
        present nullable: true,blank:true
        late nullable: true,blank:true
        sick nullable: true,blank:true
        class_id nullable: false, blank: false
        grade nullable: false, blank: false
        teacher_id nullable: false, blank: false
        teacherFirstName nullable: false, blank: false
        teacherLastName nullable: false, blank: false
    }
}
