package attendance

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
        '/'(controller:'home',action:'index')
        
        group '/settings',{
            '/classes'(controller:'classes',action:'index')
            '/addClass'(controller:'addClass',action:'addClass')
            '/updateClass'(controller:'',action:'')
            '/deleteClass'(controller:'',action:'')
        }
        group '/reports',{

        }
        group '/student',{

        }
        group '/teacher',{

        }
        
    }
}
