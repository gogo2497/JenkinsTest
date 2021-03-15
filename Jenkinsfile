@Library('PipelineWorks')
import com.kostal.pipelineworks.*

pipeline {
    agent {
        label 'docker'
    }

    stages {
        stage('Entry') {
            steps {
                echo 'hello'
            }
        }
        stage('Checkout') {
            steps {
                script {
                    deleteDir()
                    Checkout checkout = new Checkout()
                    checkout.fromGitRecursive(env, 'https://github.com/gogo2497/JenkinsTest.git', 'test', 'main', false)
                }
            }
        }
        stage('Run') {
            steps {
                script {
//                     sh 'python test/Test.py'
                    sh 'docker build -t first .'
                    sh 'docker run first'
                }
            }
        }
    }
}
