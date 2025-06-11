# React App Deployment on AWS EC2 with Docker
# Prerequisites
1. Install Nodejs and npm on local machine
2. Docker installed

# steps to create react app
1. make directoery to your local machine and open in vs code
2. using vs code create react app using command
    npx create-react-app <app-name>
3. Navigate to the app directory
    cd <directory>
4. use the commands to start app on local machine
   npm install
   npm start
5. You can access your app by typing localhost:3000 to your browser. 3000 is default port of react application
   
# Dockerize your react app
   Create Dockerfile in the root directory of your project
# Create .dockerignore file 
   This .dockerignore file ensures that unnecessary and sensitive files are excluded from the Docker build context, leading to a more efficient and secure image.

# Create GitHub repository
1. Initialize git in your project
     git init
2. Add your remote repo
     git remote add origin <your-repo-url>
3. Add all files
     git add .
4. Commit changes
    git commit -m "Initial comment"
5. push to GitHub if  the code is from branch main
    git push -u origin main
6. If not then set the branch and then push
    git branch -M main

# Launch an EC2 instance(ubuntu)
1. Launch an EC2 instance(ubuntu)
2. Configure security group to allow inbound traffic on port 3000 and SSH
3. Connect your EC2 via SSH

# Install Docker on EC2 using commands
1. sudo apt update
2. sudo apt install -y docker.io
3. sudo usermod -aG docker $USER
4. newgrp docker

# Clone your github repo
1. git clone <your-repo-name>
2. Navigate to your project directory
   cd<directory>

# Build and run Docker image
1. docker build . -t <image_name>
2. docker run -d --name <container-name> -p 3000:3000 <image-ID>

# Access your app 
 Open your browser and go to http://<your_ec2_public_ip>:3000



   
   
 
