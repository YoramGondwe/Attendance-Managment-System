package SystemDomain

class Attendance {
    Long student_id
    String firstName
    String lastName
    String date
    Integer attendance
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
        attendance nullable: false, blank: false
        class_id nullable: false, blank: false
        grade nullable: false, blank: false
        teacher_id nullable: false, blank: false
        teacherFirstName nullable: false, blank: false
        teacherLastName nullable: false, blank: false
    }
}
