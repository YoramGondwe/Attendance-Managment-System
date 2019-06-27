package SystemDomain

class Student {
    String firstName
    String lastName
    String gender
    String grade_id
    String class_id
    Long id
    static constraints = {
        id generator: 'increment'
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        gender nullable: true, blank: true
        grade_id nullable: true, blank: true
        class_id nullable: false, blank: false
    }
}
