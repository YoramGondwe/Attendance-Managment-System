package SystemDomain

class Student {
    String firstName
    String lastName
    String studentId
    Integer yearRegistered
    String dateOfBirth
    String nationality
    String otherNames
    String email
    Integer phone
    String gender
    String grade_id
    String class_id

    static constraints = {
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        gender nullable: true, blank: true
        grade_id nullable: true, blank: true
        class_id nullable: false, blank: false
    }
}
