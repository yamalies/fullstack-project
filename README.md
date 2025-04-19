# Full-Stack Dockerized Productivity Suite
A polished, elegant, and enterprise-ready microservice ecosystem.

## 🌐 Architecture Overview

A sleek full-stack application that offers:

- 🎯 A single Nginx gateway routing traffic to dedicated micro-frontends.

- 🧠 Two modular Flask-based Python microservices (for tasks and blogs).

- 🗃️ A shared MySQL database, seamlessly serving both apps.

- 📦 Fully containerized and orchestrated using Docker Compose.

- 🎨 Stylish, user-centric Bootstrap 5 UI with dark mode toggle and enhanced UX animations.

## 🧭 Routing

http://localhost/todo → Smart TODO List Manager

http://localhost/blog → Elegant Blog Publishing Platform

## 📁 Directory Structure
```
fullstack-docker-project/
├── docker-compose.yml
├── .env
├── nginx/
│   └── default.conf
├── db/
│   └── init.sql
├── todo_service/
│   ├── Dockerfile
│   ├── requirements.txt
│   ├── app.py
│   └── templates/
│       └── index.html
└── blog_service/
    ├── Dockerfile
    ├── requirements.txt
    ├── app.py
    └── templates/
        └── index.html
```

## 📦 Project Setup

1. Install MySQL Server
```bash
sudo apt update && sudo apt install mysql-server
sudo mysql_secure_installation
```

2. Docker Compose Setup
```bash
docker-compose up --build
```

3. Access the application
```bash
http://localhost/todo
http://localhost/blog
```
