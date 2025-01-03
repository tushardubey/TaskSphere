# Dockerized Django Web Application

This repository contains a fully Dockerized Django-based web application. The project leverages Docker for containerization, MySQL for the database, NGINX as a reverse proxy server, and Jenkins for CI/CD pipeline automation.

---

## Project Structure

```plaintext
├── nginx/             # Configuration files for NGINX
├── backend/           # Django application code
│   ├── manage.py      # Django management script
│   ├── notesapp/      # Project settings and configurations
│   ├── api/           # App containing the notes logic
├── .env               # Environment variables file
├── docker-compose.yml # Docker Compose configuration
├── Dockerfile         # Docker configuration for Django app
├── Jenkinsfile        # Jenkins pipeline configuration
└── README.md          # Documentation
```

---

## Features

- **Django Application:** Backend built with Django to manage.
- **MySQL Integration:** MySQL database for persistent data storage.
- **NGINX Reverse Proxy:** Configured to handle incoming requests efficiently.
- **Multi-Container Setup:** Orchestrated with Docker Compose for seamless integration of services.
- **Environment Variables:** Securely managed sensitive configurations using `.env` file.
- **Jenkins CI/CD Pipeline:** Automated build, test, and deployment process.

---

## Prerequisites

- Docker
- Docker Compose
- Jenkins

---

## Setup Instructions

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. **Add environment variables:**

   Create a `.env` file with the following content:

   ```plaintext
   MYSQL_ROOT_PASSWORD=<your-root-password>
   MYSQL_DATABASE=<your-database-name>
   MYSQL_USER=<your-mysql-user>
   MYSQL_PASSWORD=<your-mysql-password>
   ```

3. **Set up Jenkins:**

   - Install Jenkins on your system.
   - Add the necessary plugins, such as Docker Pipeline and Git.
   - Create a Jenkins job and point it to this repository.
   - Configure the pipeline to automate the following steps:
     - Clone the code.
     - Build Docker images.
     - Deploy the application using Docker Compose.

4. **Build and run the application locally:**

   ```bash
   docker-compose up --build
   ```

5. **Access the application:**

   - **Frontend:** `http://localhost`
   - **Admin Panel:** `http://localhost/admin`

---

## Technologies Used

- **Django**: Python web framework for backend development.
- **MySQL**: Relational database for storing application data.
- **NGINX**: Reverse proxy for managing requests and improving scalability.
- **Docker**: Containerization platform for deploying the application.
- **Docker Compose**: Tool for multi-container orchestration.
- **Jenkins**: Continuous integration and deployment automation.

---

## Troubleshooting

- **Database Connection Issues:** Ensure that `.env` file values are correct and the MySQL container is running.
- **404 Errors:** Check your Django URL patterns and the NGINX configuration.
- **Port Conflicts:** Ensure no other services are using the defined ports (e.g., 80, 8000, 3306).
- **Pipeline Failures:** Check the Jenkins logs for errors during the build or deployment stages.

---

## Future Enhancements

- Add unit tests for API endpoints.
- Implement frontend for better user experience.
- Extend Jenkins pipeline with automated testing and notifications.

---

## License

This project is licensed under the MIT License. Feel free to use and modify as per your needs.
