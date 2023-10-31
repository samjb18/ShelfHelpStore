pipeline {
        agent any

        tools {
            // Install the Maven version configured as "M3" and add it to the path.
            maven "M3"
        }

        stages {
          stage('Checkout') {
              steps {
                 // Run Maven on a Unix agent.
                 git branch:'main', url:'https://github.com/samjb18/ShelfHelpStore'
              }
           }
          stage('Compile') {
              steps {
                 // Run Maven on a Unix agent.
                 sh "mvn clean compile"
              }
           }
           
        stage('Package') {
                steps {
                    // Run Maven on a Unix agent.
                    sh "mvn package"
                }
            }
        }
}
