package SystemDomain

class Class {
    String code
    String grade
    String classTeacher
    static constraints = {
        classTeacher nullable: false,blank: false
        code  nullable: false, blank: false
        grade nullable: false, blank: false

    }
}
