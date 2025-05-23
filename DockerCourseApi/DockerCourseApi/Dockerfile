﻿FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["DockerCourseApi/DockerCourseApi.csproj", "DockerCourseApi/"]
RUN dotnet restore "DockerCourseApi/DockerCourseApi.csproj"
COPY . .
WORKDIR "/src"
RUN dotnet build "DockerCourseApi/DockerCourseApi.csproj" -c Release -o /app/build
RUN dotnet test "DockerCourseApi.Tests/DockerCourseApi.Tests.csproj"
RUN dotnet publish "DockerCourseApi/DockerCourseApi.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0
EXPOSE 80
EXPOSE 443
ENV ASPNETCORE_HTTP_PORTS=80
WORKDIR /app
COPY --from=build /app/publish .

# Change user to non-root (gecos means don't interactively prompt for various info about the user)
RUN adduser --disabled-password --gecos '' appuser
USER appuser

ENTRYPOINT ["dotnet", "DockerCourseApi.dll"]
