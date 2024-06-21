# Use the official .NET SDK image as base
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

# Set the working directory inside the container
WORKDIR /app

# Expose the port the app runs on
EXPOSE 5000

CMD if [ ! -f *.csproj ]; then \
    dotnet new console -o . --force ; \
    fi && \
    dotnet restore && \
    dotnet watch run