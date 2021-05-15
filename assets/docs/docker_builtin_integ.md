## Docker CLI Built-in Integration with ECS

There is a built-in integration when you use docker and aws cli together. Normally, we are using `docker-compose` cli to orchestrate multiple container to run in same network. 

Docker has been announced new feature with new `docker compose` cli. Yes, it is a bit tricky to realise difference. 
You can checkout official documentation in [here](https://docs.docker.com/cloud/ecs-integration/)

After the installation you can start using the cli
## Local Docker Context

- Local deploy: `docker compose up -d`
- Validate containers: `docker ps`
- Frontend test: `curl -v -u greg:turnquist localhost:8080/api/employees/3`
- Push Docker Hub: `docker compose push`
- Remove application: `docker compose down`

## ECS Docker Context

- Create an ECS Docker context: `docker context create ecs personal`
- Select the context: `docker context use personal`
- List existing context: `docker context ls`
- Remove context: `docker context rm personal`
- Run across ECS: `docker compose up`
- Convert ECS yml: `docker compose convert >> docker-compose-dev.yml`
- List running service: `docker compose ps`
- Test prod endpoint: `curl -v -u greg:turnquist my-app.region.elb.amazonaws.com:8080/api/employees/3`
- Show Cloudwatch logs: `docker compose logs`
- Terminate service: `docker compose down`

### Deployment guide
Firstly, you should test your image in a local setup to deploy application to your own AWS account. In this part you need a regular `docker-compose.yml`
```yml
image: docker-account/react-and-spring-data-rest
```
- Local deployment: `docker compose up` 
- Running background locally: `docker compose up -d`
- Change ECS context: `docker context use personal`
- Deploy to ECS: `docker compose up`
- Terminate Application: `docker compose down`

## References
- Blog post: https://www.docker.com/blog/docker-compose-from-local-to-amazon-ecs/



