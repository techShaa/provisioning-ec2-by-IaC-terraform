### Step 1: Install Terraform

Download Terraform from official website and verify installation:

terraform -v

---

### Step 2: Configure AWS CLI

Run:

aws configure

Enter:

* AWS Access Key
* AWS Secret Key
* Region (example: ap-south-1)

---

### Step 3: Create Terraform Configuration File

Create a file named main.tf and add:

provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "web" {
ami           = "ami-0f5ee92e2d63afc18"
instance_type = "t2.micro"

tags = {
Name = "Terraform-Server"
}
}

---

### Step 4: Initialize Terraform

terraform init

This will download required provider plugins.

---

### Step 5: Validate Configuration

terraform validate

Ensures your configuration is correct.

---

### Step 6: Preview Infrastructure

terraform plan

Shows what resources will be created.

---

### Step 7: Create EC2 Instance

terraform apply

Type "yes" when prompted.

---

### Step 8: Verify in AWS Console

Go to AWS → EC2 → Instances

You should see your instance running.

(Add screenshot: ec2-instance-running.png)

---

### Step 9: Destroy Resources (Important)

terraform destroy

This will delete all resources to avoid charges.

---

## 8. Screenshots

### EC2 Instance Created

(Add screenshot here)

### Terraform Apply Output

(Add screenshot here)

---

## 9. Key Learnings

* Automated infrastructure using Terraform
* Understood Terraform lifecycle
* Avoided manual AWS setup
* Hands-on with EC2 provisioning

---

## 10. Future Improvements

* Add variables.tf for dynamic configuration
* Use Terraform modules

---

## 11. Author

Mr. Rizwan
