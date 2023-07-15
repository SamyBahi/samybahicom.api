This is the backend part of my portfolio website [samybahi.com](https://www.samybahi.com/). It is coupled with a nextjs frontend that you can find [here](https://github.com/SamyBahi/samybahicom.web).


## 🚀 Getting started

- Don't forget to add your environment variables in a .env file.
- You can either use this app with or without docker.

### Docker
- This repo contains a Dockerfile to create the docker image and a docker-compose.yml file that runs a container composed of two images :
  - the strapi app image
  - postgres:15-alpine
 
### Without Docker
- Make sure you have a postgresql server running with a database for strapi.
- run the following command to install packages : 
```bash
npm install
```
- start the development server :
```bash
npm run develop
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project. Find the one that suits you on the [deployment section of the documentation](https://docs.strapi.io/developer-docs/latest/setup-deployment-guides/deployment.html).

## 📚 Documentation

- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
