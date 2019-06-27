package SystemDomain

class Grade {

    Long id
    String description

    static constraints = {

        id generator: 'increment'
        description nullable: false,blank: false
    }
}
