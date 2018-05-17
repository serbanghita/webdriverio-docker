node {
   def seleniumPID
   stage('Install') {
      git 'https://github.com/serbanghita/my-wdio.git'
   }
   stage('Build') {
      if (isUnix()) {
         sh "cd my-wdio"
         sh "npm install"
      } else {
         bat "cd my-wdio"
         bat "npm install"
      }
   }
   stage('Setup') {
     if (isUnix()) {
        seleniumPID = sh returnStdout: true, script: 'npm run selenium'
     } else {
        seleniumPID = bat returnStdout: true, script: 'npm run selenium'
     }
   }
   stage('Results') {
        echo seleniumPID
   }
}
