**📌 Project Overview**
This project implements a Serverless CRUD API using AWS API Gateway, AWS Lambda, and DynamoDB with the Serverless Framework. The API supports Create, Read, Update, and Delete (CRUD) operations
without using a direct service proxy integration to DynamoDB.

**🌟 Features:**
✅ Serverless Architecture: AWS Lambda + API Gateway + DynamoDB
✅ CI/CD Pipeline: Automated deployments using GitHub Actions
✅ Multi-Stage Deployments: Automatically deploys to Dev in AWS, and if successful, triggers deployment to Prod.  
✅ Infrastructure as Code (IaC): Fully automated using Serverless Framework
✅ Optimized Deployment: Excludes unnecessary files for smaller package sizes
✅ Additional Enhancements:
  YAML file organization for better maintainability
  Bash scripts for manual deployment and removal
  AWS Lambda packaging optimizations to improve deployment efficiency


**🏗️ Tech Stack**

| Component       | Technology Used        |
|----------------|------------------------|
| 🖥️ Backend    | **Node.js (18.x)**      |
| ⚡ Serverless  | **AWS Lambda**          |
| 🌍 API Gateway | **AWS API Gateway**     |
| 📦 Database   | **AWS DynamoDB**        |
| 🚀 CI/CD      | **GitHub Actions**       |
| 🛠️ IAC        | **Serverless Framework** |


**📜 API Endpoints**

| Method | Endpoint              | Description               |
|--------|----------------------|---------------------------|
| GET    | `/post/{postId}`      | Get a post by ID         |
| POST   | `/post`               | Create a new post        |
| PUT    | `/post/{postId}`      | Update an existing post  |
| DELETE | `/post/{postId}`      | Delete a post            |
| GET    | `/posts`              | Get all posts            |


**⚙️ Project Structure**

📂 AWS_CRUD_API
│── 📂 config/           # Configuration files
│── 📂 functions/        # Lambda function handlers
│── 📂 scripts/          # Manual deployment & removal scripts
│── 📂 .github/          # CI/CD pipeline (GitHub Actions)
│── serverless.yml       # Main Serverless Framework configuration
│── package.json         # Dependencies & scripts
│── README.md            # Project Documentation


**🚀 Deployment Process**

✅ Automated Deployment (CI/CD)
    1. Push to main branch → Deploys to dev
    2. If dev is successful, automatically deploys to prod
    3. Multi-stage support: Dev & Prod are deployed separately
    
🔧 Manual Deployment (Optional)
    Run these scripts if you need manual control:

  # Deploy manually
  ./scripts/deploy.sh dev  # Deploy to Dev
  ./scripts/deploy.sh prod # Deploy to Prod

  # Remove manually
  ./scripts/remove.sh dev  # Remove Dev deployment
  ./scripts/remove.sh prod # Remove Prod deployment


**🎯 Enhancements & Additional Features**

✅ AWS Lambda Packaging Optimization
  Excludes unnecessary files like node_modules for faster deployment.
  Reduces package size to improve performance.

✅ Organized YAML Files
  serverless.yml → Main entry file
  config/ → Environment variables and custom settings
  functions/ → Separate YAML files for each function
  resources/ → Infrastructure definitions (DynamoDB, IAM roles)

✅ Bash Scripts for Manual Deployment
  Added scripts (deploy.sh & remove.sh) for manual deployments.
  Useful for debugging or emergency rollbacks.


**📌 CI/CD Pipeline Screenshot**
<img width="1449" alt="image" src="https://github.com/user-attachments/assets/d2e98a94-da12-491e-b9b2-167b9a090ff0" />


**📌 AWS Console Screenshot:**
    AWS Lambda:
    <img width="1464" alt="image" src="https://github.com/user-attachments/assets/f974e514-232f-44f6-bf91-308b67030482" />

    AWS API Gateway:
    <img width="1465" alt="image" src="https://github.com/user-attachments/assets/52bcb148-8a68-49fe-a128-a66ceb892846" />

    AWS DynamoDB:
    <img width="1466" alt="image" src="https://github.com/user-attachments/assets/802d8d3e-9cba-46b6-8f8c-c768baa3ded6" />


**🛠️ Setup & Local Testing**

1️⃣ Clone the repository
  git clone https://github.com/yourusername/aws-crud-api.git
  cd aws-crud-api

2️⃣ Install dependencies
  npm install

3️⃣ Deploy locally for testing
  serverless invoke local --function getPost


**🤝 Contribution & Feedback**
Feel free to contribute, open issues, or suggest improvements. 🚀

👨‍💻 Author: Surendra Reddy Medapati
📧 Contact: surendrareddy444044@gmail.com






