tomcat.mgr.username = "overlord"
tomcat.mgr.password = "Kr@kat04"

grails.project.dependency.resolution = {
    inherits "global"
    log "warn"
    
    repositories {
        grailsHome()
        grailsPlugins()
        grailsCentral()
        mavenCentral()
    }
    dependencies {
        runtime "postgresql:postgresql:8.3-603.jdbc3", "org.apache.activemq:activemq-all:5.4.1"
    }
    
     plugins {
        runtime ":hibernate:$grailsVersion"
     
        compile ':spring-security-core:1.2.7.3'

        // Uncomment these (or add new ones) to enable additional resources capabilities
        //runtime ":zipped-resources:1.0"
        //runtime ":cached-resources:1.0"
        //runtime ":yui-minify-resources:0.1.4"

    }
}