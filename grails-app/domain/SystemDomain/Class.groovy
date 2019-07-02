package SystemDomain

class Class {
    Long id
    String code
    String grade
    static constraints = {
        id generator: 'increment'
        code  nullable: false, blank: false
        grade nullable: false, blank: false

    }
}
