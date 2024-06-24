# dotnet-docker


Dotnet 6.0/7.0 needs to remove https redirect between var builder and bar app in Program.cs:

builder.WebHost.ConfigureKestrel(options =>
{
    options.ListenAnyIP(5000);
});


Dotnet 5.0 needs to remove https redirect after "webBuilder.UseStartup<Startup>();" app build in Program.cs:

webBuilder.ConfigureKestrel(options =>
{
    options.ListenAnyIP(5000);
});