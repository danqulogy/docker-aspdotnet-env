FROM microsoft/aspnetcore-build
LABEL author="Danquah White"

ENV DOT_USE_POLLING_FILE_WATCHER=1
ENV ASPNETCORE_URLS=http://*:5000

WORKDIR /app 

CMD [ "/bin/bash", "-c", "dotnet restore && dotnet watch run" ] 
#docker run -p 8080:5000 -v /c/projects/docker-aspcore-env:/app -w "/app" danquahwhite/aspnetcore