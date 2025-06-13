## Setting up your Google Cloud VM

This guide will walk you through creating a virtual machine (VM) on Google Cloud Platform (GCP), configuring it securely, and preparing it for Planet development.

---

### 0. Create Google Cloud Account and Billing Setup

Before we can build a Planet server in the cloud, we’ll need to create a Google Cloud account and configure your virtual machine (VM) environment.

1. Go to [https://console.cloud.google.com/](https://console.cloud.google.com/)
2. Sign in with your Google account
3. If prompted, create a new Google Cloud project
4. Click the **Billing** tab in the left sidebar
5. Link a valid payment method (credit/debit card)
6. Google may offer a free trial with credits — accept if offered
7. Once your account is active, return to the main console

### 1. Enable Required APIs

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. In the top search bar, search for **Compute Engine API**
3. Click into it, and click **Enable**
4. Wait for it to activate (this may take a few moments)

---

### 2. Add Your SSH Public Key

1. Search for **"Metadata"**
2. Click **"Metadata"** under **Compute Engine**
3. Navigate to the **"SSH KEYS"** tab
4. Click **"Edit"**, then **"Add Item"**
5. Paste your full public SSH key, formatted like:

   ```
   ssh-ed25519 AAAAC3... yourusername
   ```

   > You must append a space and your **username** at the end of the key to satisfy Google Cloud’s required format.
   > 🔐 Your SSH key should be **password protected** when generated. If you're not sure, re-generate it using:

   ```bash
   ssh-keygen -t ed25519 -C "yourusername"
   ```

   and be sure to enter a secure passphrase when prompted.


6. Share your key with the team via Discord
---

### 3. Create the VM Instance

1. In the console, go to **Compute Engine > VM Instances**
2. Click **"Create Instance"**
3. Use the following settings:

   - **Name**: `ole-vm`
   - **Region**: Select one near you (e.g., `us-east1`)
   - **Machine Type**: `e2-medium` (2 vCPU, 4 GB RAM)
   - **Boot Disk**:
     - Image: `Debian 12 (Bookworm)`
   - **Firewall**:
     - ✅ Check **Allow HTTP**
     - ✅ Check **Allow HTTPS**

4. Leave all other settings as defaults
5. Click **"Create"**

> The VM will typically cost $25–$35/month depending on location and usage.

---

### 4. Create Firewall Rule

1. In the console, search for **"Firewall"** and go to **VPC Network > Firewall**
2. Click **"CREATE FIREWALL RULE"**
3. Set the following:

   - **Name**: `planetdev-rules`
   - **Targets**: All instances in the network
   - **Source IPv4 Ranges**: `0.0.0.0/0`
   - **Protocols and ports**:
     - ✅ Check TCP
     - Ports: `2200,3000,5000`

4. Click **"Create"**

---

### 5. SSH Into the VM

You can SSH into your VM in **three different ways**:

#### Option A: Google Cloud Console

- Go to **Compute Engine**
- Click the **SSH** button next to your VM

#### Option B: Local Terminal (with SSH key)

```bash
ssh -i ~/.ssh/id_ed25519 yourusername@<EXTERNAL_IP>
```

#### Option C: VS Code with Remote SSH

1. Install **Remote - SSH** extension in VS Code
2. In the Command Palette:  
   `Remote-SSH: Connect to Host...`
3. Enter your VM's external IP and SSH key when prompted

---

### 6. Install Required Tools on Your VM

Connect to the VM and run:

```bash
sudo apt-get update && sudo apt-get install git unzip
```

Then follow Docker’s Debian installation guide here:  
https://docs.docker.com/engine/install/debian/#install-using-the-repository

> You can also reference:  
> https://open-learning-exchange.github.io/#!pages/vi/vi-docker-development-tutorial.md

---

### ✅ 7. Node.js and Angular Setup

> ⚠️ Important: **Do not install Node.js as root.** Use your regular user account.

Install Node.js v14 and Angular CLI v10:

```bash
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install -g @angular/cli@10
```

Then follow the official tutorial to install and configure the Planet development environment:

[Planet Docker Development Tutorial](https://open-learning-exchange.github.io/#!pages/vi/vi-docker-development-tutorial.md)

This includes:

- Downloading the Planet dev Docker config
- Running CouchDB and ChatAPI services
- Setting up CouchDB with CORS
- Cloning and configuring the `planet` repo

Make sure to complete that guide before moving to the next step.

---

### 8. Running Planet in the Background

Start a `screen` session to keep the frontend running after you disconnect:

```bash
screen
ng serve
```

Once the frontend is running, press `Ctrl + A`, then `D` to detach.

---

### 9. Planet Configuration

- When configuring your Planet instance in the browser, choose **Nation** (not Community)
- Avoid common passwords like `12345`, `admin`, etc.

---

### ✅ 10. Share Access

- Send your VM **external IP address** and CouchDB **username/password** to your team
- Your VM is now part of the development network!

---