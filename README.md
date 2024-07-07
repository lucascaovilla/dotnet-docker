<h1 align="center"> Dotnet bacic dev environment - Dotnet versions 5, 6 and 7</h1>
<h3>A Dotnet dev environment ready to run on existing applications or to create a new application.</h3>

# ✔️ Techs:
- `Dotnet`
- `Docker`

# :hammer: How to run

<h4>Run ´docker compose -f dev.docker-compose.yml up´ to start the application</h4>

<h4>Dotnet 6 and 7 - Add to Program.cs to prevent https redirect:</h4>
<p>
    builder.WebHost.ConfigureKestrel(options =>
    {
        options.ListenAnyIP(5000);
    });
</p>

<h4>Dotnet 5 - Add to Program.cs to prevent https redirect:</h4>
<p>
    webBuilder.ConfigureKestrel(options =>
    {    
        options.ListenAnyIP(5000);
    });
</p>

<h4>Run ´docker compose -f dev.docker-compose.yml down --rmi all --remove-orphans´ to stop the application and destroy all docker artifacts</h4>
