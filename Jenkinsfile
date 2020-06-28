pipeline {
     agent any
     stages {
         stage('Lint HTML') {
             steps {
                  sh 'tidy -q -e *.html'
             }
        }
         stage('Upload to AWS') {
              steps {
                  withAWS(region:'us-east-1',credentials:'aws-static') {
                  sh 'echo "Uploading content to S3 Bucket with AWS Credentials"'
                      s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'udaproject3')
                  }
              }
         }
        stage('Check WebSite is Up') {
             steps {
                  sh 'bash /home/ubuntu/project3/scripts/CheckWebSiteStatus.sh'
             }
        }
     }
}
