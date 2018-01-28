# Use the standard Microsoft ASP.NET Core container
FROM microsoft/aspnetcore
 
# Copy our code from the debug folder to the "/app" folder in our container
WORKDIR /app
COPY ./bin/Debug/netcoreapp2.0 .
 
# Expose port 80 for the Web API traffic
ENV ASPNETCORE_URLS http://+:8081
EXPOSE 8081
 
# Run the dotnet application against a DLL from within the container
# Don't forget to publish your application or this won't work
ENTRYPOINT ["dotnet", "inv-api.dll"]