pipeline 
{ 
  agent any 
    
  stages 
  { 
    stage('Build') 
    { 
      steps 
      { 
        echo 'Hello World' 
      } 
    } 
    stage('Test') 
    { 
      steps 
      { 
        echo "Second stage" 
      } 
    } 
    stage('Deploy') 
    { 
      steps 
      { 
        echo 'Deploy Stage' 
      } 
    } 
  } 
  post
  { 
    always 
    { 
      bat 'start chrome https://www.google.co.in/' 
    } 
  } 
}
