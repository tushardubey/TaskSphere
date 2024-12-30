# Dockerized Django Notes Application

This repository contains a fully Dockerized Django-based notes application. The project leverages Docker for containerization, MySQL for the database, and NGINX as a reverse proxy server.

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
└── README.md          # Documentation
```

---

## Features

- **Django Application:** Backend built with Django to manage notes.
- **MySQL Integration:** MySQL database for persistent data storage.
- **NGINX Reverse Proxy:** Configured to handle incoming requests efficiently.
- **Multi-Container Setup:** Orchestrated with Docker Compose for seamless integration of services.
- **Environment Variables:** Securely managed sensitive configurations using `.env` file.

---

## Prerequisites

- Docker
- Docker Compose

---

## Setup Instructions

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Add environment variables:

   Create a `.env` file with the following content:

   ```plaintext
   MYSQL_ROOT_PASSWORD=<your-root-password>
   MYSQL_DATABASE=<your-database-name>
   MYSQL_USER=<your-mysql-user>
   MYSQL_PASSWORD=<your-mysql-password>
   ```

3. Build and run the application:

   ```bash
   docker-compose up --build
   ```

4. Access the application:

   - **Frontend:** `http://localhost`
   - **Admin Panel:** `http://localhost/admin`

---

## Technologies Used

- **Django**: Python web framework for backend development.
- **MySQL**: Relational database for storing application data.
- **NGINX**: Reverse proxy for managing requests and improving scalability.
- **Docker**: Containerization platform for deploying the application.
- **Docker Compose**: Tool for multi-container orchestration.

---

## Troubleshooting

- **Database Connection Issues:** Ensure that `.env` file values are correct and the MySQL container is running.
- **404 Errors:** Check your Django URL patterns and the NGINX configuration.
- **Port Conflicts:** Ensure no other services are using the defined ports (e.g., 80, 8000, 3306).

---

## Future Enhancements

- Add unit tests for API endpoints.
- Implement frontend for better user experience.
- Integrate CI/CD pipeline for automated testing and deployment.

---

## License

This project is licensed under the MIT License. Feel free to use and modify as per your needs.
