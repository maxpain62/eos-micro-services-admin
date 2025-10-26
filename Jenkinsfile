def label = "eosagent"
def mvn_version = 'M2'
podTemplate(label: label, yaml: """
apiVersion: v1
kind: Pod
metadata:
  labels:
    app: build
  annotations:
    sidecar.istio.io/inject: "false"
spec:
  containers:
  - name: build
    image: dpthub/eos-jenkins-agent-base:latest
    command:
    - cat
    tty: true
    volumeMounts:
    - name: dockersock
      mountPath: /var/run/docker.sock
  volumes:
  - name: dockersock
    hostPath:
      path: /var/run/docker.sock
"""
) {
    node (label) {
        stage ('Checkout SCM'){
	git url: 'https://bitbucket.org/dptrealtime/eos-micro-services-admin.git', branch: 'master'
          container('build') {
                stage('Build a Maven project') {
                  //withEnv( ["PATH+MAVEN=${tool mvn_version}/bin"] ) {dd
                   //sh "mvn clean package"
                  //  }
                  sh './mvnw clean package' 
                   //sh 'mvn clean package'
                }
            }
        }



    }
}
