package SystemDomain

class Class {
    String code
    String grade
    static constraints = {
        code  nullable: false, blank: false
        grade nullable: false, blank: false

    }
}
