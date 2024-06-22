# Use the official .NET SDK image as base
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

# Set the working directory inside the container
WORKDIR /app

# Expose the port the app runs on
EXPOSE 5000

# Check if there's a .NET project in the current directory, if not, create one
CMD if [ ! -f *.csproj ]; then \
    dotnet new web -o . ; \
    fi && \
    dotnet restore && \
    dotnet watch run
