
<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Create database](#create-database)
- [👥 Author](#author)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Vet Clinic Database <a name="about-project"></a>

A relational database has been used to create the data structure for a vet clinic. The database is complete with data about:
 - animals
 - animals' owners
 - clinic employees
 - visits

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[GitFlow]**
- **[Relational Database]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

 - To get a local copy up and running, follow these steps.
 
### Prerequisites

In order to run this project you need:

- [PostgreSQL server](https://www.postgresql.org/download/) installed and running
- [psql](https://www.postgresql.org/docs/current/app-psql.html) installed

### Install

 - Install the relational database [PostgreSQL](https://www.postgresql.org/).
 - After installing PostgreSQL read the [Getting started](https://www.postgresql.org/docs/current/tutorial-start.html) chapter from PostgreSQL's manual to understand the basics and how to check if it's working.

### Setup

Clone this repository to your desired folder.

1. Connect to your PostgreSQL server with `psql`
```
> psql
postgres=#
```

2. Create the database `vet_clinic`
```
postgres=# CREATE DATABASE vet_clinic;
CREATE DATABASE
```

3. Connect to your database vet_clinic. Inside your current session do:
```
postgres=# \c vet_clinic
You are now connected to database "vet_clinic" as user "postgres".
vet_clinic=#
```

That's it! Congratulations, you have created your database and connected to it. Next, we will add a table.

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Ashmal Zahra**

- GitHub: [@ashmalzahra](https://github.com/ashmalzahra)
- Twitter: [@AshmalZahraa](https://twitter.com/AshmalZahraa)
- LinkedIn: [ashmal-zahra](https://www.linkedin.com/in/ashmal-zahra)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ashmalzahra/vet_clinic-database/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

- [curriculum-databases-projects-template](https://github.com/microverseinc/curriculum-template-databases) from Microverse

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
