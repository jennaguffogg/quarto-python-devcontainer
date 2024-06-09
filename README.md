# Quarto setup with Docker and Python

This repository serves as a demo setup for using Quarto with jupyter notebooks in a development container. It includes a Dockerfile, a devcontainer configuration, and a demo Quarto IPython Notebook file. 

Using Quarto within a devcontainer helps you keep Quarto and project-specific packages separate, making setup faster and your development environment more organized. By using devcontainers, you can ensure that your Quarto projects are self-contained and easily reproducible on different machines. This approach improves collaboration and simplifies sharing and deploying your Quarto-based documents, reports, websites, and dashboards.

[Quarto](https://quarto.org/) is an open-source tool for creating reproducible documents, reports, websites and dashboard, built on top of [Pandoc](https://pandoc.org/).

[Jupyter Notebooks](https://jupyter.org/) are interactive documents that let you write and run code, visualize data, and document your analysis. Quarto supports Jupyter Notebooks, so you can easily incorporate your code and analysis into your Quarto documents.

get started using Quarto, follow these steps:

1. Clone this repository to your local machine.
2. Install [Docker](https://www.docker.com/) (Mac/Linux) or [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Windows) if you haven't already.
3. Open the repository in your preferred development environment. VS Code is recommended as This project uses dev containers.
4. Build the Docker image using the provided Dockerfile.
5. Start the development container.
6. Access the demo Quarto IPython Notebook file and start working with Quarto and Python.