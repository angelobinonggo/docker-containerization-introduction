# 🐳 Lab Manual 1: Introduction to Docker Containerization

> **Module 6 – Cloud Integration | Topic 6.3: Containerization with Docker**

An introductory lab project demonstrating Docker containerization — covering the creation of a `Dockerfile`, building a Docker image, and running a simple Python application inside a container.

---

## 📋 Objectives

By completing this lab, students will be able to:

- Understand the basics of Docker containerization
- Create a `Dockerfile` with standard instructions
- Build a Docker image from source
- Run and verify a Docker container

---

## ⚙️ Requirements

| Requirement | Details |
|---|---|
| Operating System | Windows / macOS / Linux |
| Docker | Docker Desktop installed |
| Python | Basic knowledge required |
| CLI | Familiarity with terminal/command prompt |

---

## 📁 Project Structure

```
docker-containerization-introduction/
├── app.py              # Simple Python application
├── requirements.txt    # Python dependencies (empty for basic lab)
├── Dockerfile          # Docker build instructions
└── README.md           # Project documentation
```

---

## 🚀 Step-by-Step Guide

### Step 1: Verify Docker Installation

Open a terminal and run:

```bash
docker --version
```

You should see output similar to:
```
Docker version 24.x.x, build xxxxxxx
```

---

### Step 2: Clone / Navigate to the Project Directory

```bash
cd docker-containerization-introduction
```

---

### Step 3: Review the Application (`app.py`)

```python
print("Hello from Docker Container!")
```

This is a minimal Python script that prints a message when executed inside a container.

---

### Step 4: Review `requirements.txt`

For this basic lab, the file contains no active dependencies. If your instructor assigns Flask, uncomment the `flask` line inside `requirements.txt`.

---

### Step 5: Review the Dockerfile

```dockerfile
FROM python:3.10          # Use official Python 3.10 as base image
WORKDIR /app              # Set working directory inside container
COPY . .                  # Copy all project files into the container
RUN pip install -r requirements.txt  # Install dependencies
CMD ["python", "app.py"]  # Run the app on container start
```

---

### Step 6: Build the Docker Image

```bash
docker build -t docker-lab1-app .
```

Verify the image was created:

```bash
docker images
```

---

### Step 7: Run the Docker Container

```bash
docker run docker-lab1-app
```

**Expected Output:**
```
Hello from Docker Container!
```

---

### Step 8: Cleanup (Optional)

List running containers and stop them:

```bash
docker ps
docker stop <container_id>
```

Remove the container and image:

```bash
docker rm <container_id>
docker rmi docker-lab1-app
```

---

## ✅ Expected Output

```
Hello from Docker Container!
```

---

## 🧠 Guide Questions

1. **What role does the Dockerfile play in containerization?**
   > The Dockerfile serves as a blueprint/recipe that defines the environment, dependencies, and commands needed to build and run an application inside a container. It ensures reproducibility across any machine that has Docker installed.

2. **Why are Docker containers lighter than virtual machines?**
   > Docker containers share the host operating system's kernel, so they do not need to bundle a full OS. Virtual Machines (VMs), by contrast, include a complete guest OS, making them significantly larger (GBs vs MBs) and slower to start (minutes vs seconds).

3. **What happens when the container finishes execution?**
   > Once the main process defined by `CMD` completes (i.e., `app.py` finishes printing), the container exits and transitions to a "stopped" state. It is no longer running but still exists on disk until explicitly removed with `docker rm`.

---

## 📊 Docker vs Virtual Machine

| Feature | Docker Container | Virtual Machine |
|---|---|---|
| Startup Time | **Seconds** | Minutes |
| Size | **Small (MBs)** | Large (GBs) |
| OS | **Shares host OS kernel** | Has its own OS |
| Performance | **Near-native** | Slower |
| Isolation | Process-level | Full OS-level |

---

## 📚 Background: Module 6 – Cloud Integration

This lab is part of **Module 6: Cloud Integration**, which covers:

- **6.1** Cloud Services (IaaS, PaaS, SaaS)
- **6.2** Microservices Architecture
- **6.3** Containerization with Docker ← *This Lab*
- **6.4** Cloud Deployment Patterns

Docker plays a critical role in **microservices architecture** — each service runs in its own isolated container, enabling independent deployment, scaling, and fault tolerance.

---

## 🏷️ License

This project is for educational purposes under the course curriculum.
