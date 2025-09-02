# 🌐 Terraform Static Website Deployment

This project demonstrates how to deploy a static website using [Terraform](https://www.terraform.io/) as Infrastructure as Code (IaC). The website is built around a simple `index.html` file and provisioned using a `main.tf` configuration.

---

## 📁 Project Structure

- `index.html` – The static webpage to be hosted  
- `main.tf` – Terraform configuration file defining infrastructure resources  
- `.gitignore` – Ensures unnecessary files (e.g., binaries, `.terraform/`) are excluded from version control

---

## 🚀 Steps to Deploy

### 1. **Install Prerequisites**
- Install Terraform CLI (Windows/MacOS/Linux)
- Set up a cloud provider account (AWS, Azure, GCP)

### 2. **Initialize the Project**
- Create a working directory
- Add `index.html` and `main.tf` files
- Configure provider and resources in `main.tf`

### 3. **Terraform Initialization**
- Run Terraform initialization to download required plugins and set up the backend
- Run: Terraform init

### 4. **Infrastructure Planning**
- Execute a Terraform plan to preview the infrastructure changes
- Run: Terraform plan

### 5. **Apply Configuration**
- Apply the Terraform configuration to provision resources and deploy the static site
- Run: Terraform apply
- Run: Terraform destroy (to delete what all is created)

### 6. **Verify Deployment**
- Access the deployed website via the output URL or endpoint provided by your cloud provider

### 7. **Version Control**
- Track project files using Git
- Exclude large binaries and auto-generated folders using `.gitignore`

### 8. **Push to GitHub**
- Commit and push project files to your GitHub repository
  
---

## ✅ Status

- ✅ Website deployed locally and verified  
- ✅ Terraform configuration tested  
- ✅ Project versioned and uploaded to GitHub

---

## 📬 Contact

For questions or collaboration, feel free to reach out via [GitHub Issues](https://github.com/AdityaAggarwal11/Terraform-static-website-IAC/issues).
