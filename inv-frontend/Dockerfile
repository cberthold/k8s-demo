# Use the standard Microsoft ASP.NET Core container
FROM microsoft/aspnetcore-build AS build-env
ARG source

# add nodejs
RUN apt-get -qq update && apt-get -qqy --no-install-recommends install wget gnupg \
    git \
    unzip

# BEGIN MODIFICATION - Node is needed for development (but not production)
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install --assume-yes nodejs \
	&& rm -rf /var/lib/apt/lists/*
# END MODIFICATION

#RUN curl -sL https://deb.nodesource.com/setup_8.x |  bash -

#RUN apt-get update && apt-get install -y \
#  build-essential \
#  nodejs \
#  && rm -rf /var/lib/apt/lists/*
 
# Copy our code from the debug folder to the "/app" folder in our container
WORKDIR /app

#COPY package*.json ./

#RUN npm install
# If you are building your code for production
# RUN npm install --only=production

RUN npm install -g webpack

COPY *.csproj ./
RUN dotnet restore

# bundle app source
COPY . ./
RUN dotnet publish -c Release -o out

# build runtime image
FROM microsoft/aspnetcore:2.0
WORKDIR /app

# add nodejs
RUN apt-get -qq update && apt-get -qqy --no-install-recommends install wget gnupg \
    git \
    unzip

# BEGIN MODIFICATION - Node is needed for development (but not production)
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install --assume-yes nodejs \
	&& rm -rf /var/lib/apt/lists/*
# END MODIFICATION

COPY --from=build-env /app/out .
 
# Expose port 7081 for the Web API traffic
ENV ASPNETCORE_URLS http://*:7081
EXPOSE 7081
 
# Run the dotnet application against a DLL from within the container
# Don't forget to publish your application or this won't work
ENTRYPOINT ["dotnet", "frontend.dll"]