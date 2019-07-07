package attendance

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

//        "/"(view:"/index")
        "500"(view: '/error')
        "404"(view: '/notFound')
        '/'(controller: 'home', action: 'index')
        '/logout'(controller:'login',action:'logout')

        group '/settings', {
            '/classes'(controller: 'classes', action: 'index')
            '/addClass'(controller: 'addClass', action: 'addClass')
            '/editClass'(controller: 'updateClass', action: 'editPage')
            '/updateClass'(controller: 'updateClass', action: 'updateClass')
            '/deleteClass'(controller: 'deleteStudent', action: 'index')

            '/grade'(controller: 'grade', action: 'index')
            '/addgrade'(controller: 'addGrade', action: 'addGrade')
            '/editgrade'(controller: 'updateGrade', action: 'index')
            '/updategrade'(controller: 'updateGrade', action: 'update')
            '/deleteGrade'(controller: 'deleteClass', action: 'index')
        }
        group '/reports', {

        }
        group '/attendance', {
                '/students'(controller:'listStudents',action:'index')
                '/mark'(controller:'attendance',action:'index')
        }
        group '/student', {
            '/student'(controller: 'student', action: 'index')
            '/addStudent'(controller: 'addStudent', action: 'addStudent')
            '/editStudent'(controller: 'updateStudent', action: 'index')
            '/updateStudent'(controller: 'updateStudent', action: 'updateStudent')
            '/deleteStudent'(controller: 'deleteStudent', action: 'index')
        }
        group '/teacher', {
            '/teacher'(controller: 'teacher', action: 'index')
            '/addTeacher'(controller:'addTeacher',action:'index')
            '/editTeacher'(controller:'updateTeacher',action:'index')
            '/updateTeacher'(controller:'updateTeacher',action:'updateTeacher')
            '/deleteTeacher'(controller:'deleteTeacher',action:'index')
        }

    }
}
