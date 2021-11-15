<h1 align="center">
  Touristaki
</h1>
<p align="center">A new way to explore, tourisaki is platform project that aims to connect customers and partners through scheduled lives of the most diverse categories.</p>

## Main technologies / Gems

- [Ruby version - 2.7.1](https://www.ruby-lang.org/en/documentation/installation/)
- [Framework - Rails 6.1.1](https://rubygems.org/gems/rails/versions/4.2.6?locale=pt-BR)

## In this project you can use the docker to upload a postgresql database!

- **🛠 Development mode with postgresql database  **
    - 🐳 [Docker](https://docs.docker.com/engine/installation/)
    - 🐳 [Docker Compose](https://docs.docker.com/compose/) 
    - **💡 Tip:** [Docker- doc](https://docs.docker.com/)

## Clonando o projeto

The first step is to clone the project and go to the project folder:

```sh
git clone https://github.com/touristaki/touristaki-web.git
cd touristaki-web
```

## Installation

### 🐳 Development Mode with Docker ( **only Postgresql** )


After installing the docker and docker-compose, being in the project's root folder, execute this commands and magically the project will run:

```sh
docker-compose up -d
```

To make sure that your containers have gone up correctly, all containers must be in the `UP` status, execute:

```sh
docker-compose ps -a
```

## Execute project

Once you have your bank set up we can start the project:

```sh
rails db:create db:migrate
```

```sh
rails s
```

🚀 To view the system, just access the browser at the address: [localhost:3000](localhost:3000)
