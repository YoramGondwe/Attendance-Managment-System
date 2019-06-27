package SystemDomain

class Class {
    Long id
    String name
    String grade
    static constraints = {
        id generator: 'increment'
        name nullable: false, blank: false
        grade nullable: false, blank: false

    }
}
