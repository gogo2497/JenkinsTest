@Library('PipelineWorks')
import com.kostal.pipelineworks.*

pipeline {
    agent {
        label 'docker'
    }

    stages {
        stage('Stage 1') {
            steps {
                echo 'hello'
            }
        }
        stage('Stage 2') {
            steps {
                script {
                    deleteDir()
                    Checkout checkout = new Checkout()
                    checkout.fromGitRecursive(env, 'https://github.com/gogo2497/JenkinsTest.git', 'test', 'main', false)
                }
            }
        }
        stage('Stage 3') {
            steps {
                script {
                    /bin/sh
                    python Test.py
                }
            }
        }
    }
}
