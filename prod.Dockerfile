FROM microsoft/aspnetcore-build as publish
WORKDIR /publish
COPY ASPNETCoreDemos.csproj .
RUN dotnet restore
COPY . .
RUN dotnet publish --output ./output

FROM microsoft/aspnetcore
LABEL author="Danquah White"
WORKDIR /app
COPY --from=publish /publish/output .
ENV ASPNETCORE_URLS=http://*:5000
EXPOSE 5000
ENTRYPOINT ["dotnet", "ASPNETCoreDemos.dll"]
