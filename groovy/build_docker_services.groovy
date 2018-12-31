#!groovy

def build(String repo, String username, String password, String branch4tagging) {
  gitCommit = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
  shortCommit = gitCommit.take(7)
  echo "$password"
  tag = "$branch4tagging-$shortCommit"
  sh """
      set -v
      docker login -u '$username' -p '$password'
      docker build -t play:'$tag' .
      docker tag play:'$tag' slathia15/play:'$tag'
      docker push slathia15/play:'$tag'
      """
}
return this