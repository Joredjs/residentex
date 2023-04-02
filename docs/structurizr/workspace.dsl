!constant ORG_NAME "Residente-x"
!constant PLAT_ADMIN "Plataforma administración"
!constant PLAT_PUBLIC "Página pública"
!constant PLAT_BLOG "Blog"
!constant PLAT_USER "Plataforma residente"

workspace "${ORG_NAME}" {
    
    model {
        
        
        userAdmin = person "administrador@"
        userRes = person "residente"
        userCel = person "Vigilancia"
        userAny = person "Cualquier usuario"
        
        systemAdmin = softwareSystem "${PLAT_ADMIN}" {
            webAdmin = container "Web admin"
        }
        
        systemPublic = softwareSystem "${PLAT_PUBLIC}" {
            webPublic = container "web informativa"
            webBlog = container "blog"
        }
        
        systemRes = softwareSystem "${PLAT_USER}" {
            webUser = container "Web residente"
            appUser = container "Aplicacion residente"
        }
        
        systemApi = softwareSystem "Backend" {
            apiBack = container "API"
            mysqldb = container "Base de datos sql"
            fbdb = container "Base de datos NOsql"
            
            apiBack -> mysqldb "Lee y escribe"
            apiBack -> fbdb "Lee y escribe"
        }
    
        group "${PLAT_ADMIN}" {
            userAdmin -> webAdmin "trabaja en"
            webAdmin -> systemApi "interactua"
        }
        
        group "${PLAT_USER}" {
            userRes -> systemRes "usa"
            userCel -> systemRes "usa"
            userAdmin -> systemRes "usa"
            webUser -> systemApi "interactua"
            appUser -> systemApi "interactua"
        }
        
        group "${PLAT_PUBLIC}" {
            userAny -> systemPublic "puede usar"
        }
    }
    
    views {
    	theme default
    }

}
