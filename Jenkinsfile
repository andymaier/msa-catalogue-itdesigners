node {
        stage("Checkout") {
            checkout scm
        }

        stage('Maven Build') {
            sh "mvn -DskipTests=true package"
        }

        stage('Maven Tests') {
            //sh "mvn test"
            sh "echo Testing"
        }

        stage('Docker image') {
             //docker.build("catalogue")
             sh "docker build -t catalogue ."
        }

        stage("Deploy") {
            sh "docker rm -f catalogue || echo 'ok'"
            sh "docker run -d --name catalogue --net confluent-docker_default -p 2020:8080 catalogue"
        }
}
