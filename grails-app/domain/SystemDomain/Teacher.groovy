package SystemDomain

class Teacher {
    Long id
    String staffId
    String firstName
    String lastName
    String email
    Integer phone
    static constraints = {
        id generator: 'increment'
        firstName nullable: true, blank: true
        lastName nullable: true, blank: true
        email nullable: true, blank: true
        phone nullable: true, blank: true
    }
}
