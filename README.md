# rest-dotnet 

Kickstart for dotnet core in docker.


## Create Image

```sh
$ docker build -t dev/rest-api:0.1 .
```
## RUN CONTAINER

```sh
# Fix it to your own volume
$ docker run -it --rm -p 5000:5000 --volume ~/projects/dotnet/src:/app --name rest-dotnet dev/rest-api:0.1
```

* -p 5000:5000 - port to share from host:container
* --volume - local dir : container directory
* -it - interactive

### Inside the container 

```sh
# Create the app using the template (only first time)
$ dotnet new webapi
```

```sh
# Restores the dependencies and tools of a project.
$ dotnet restore

# Restores the dependencies and tools of a project.
$ dotnet run
```

Test
```sh
$ curl -i -X GET http://localhost:5000/api/values
```

## References

Docker dotnet: https://hub.docker.com/r/microsoft/dotnet/
webapi: https://docs.microsoft.com/en-us/aspnet/core/tutorials/web-api-vsc