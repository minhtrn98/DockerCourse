using System.Data.SqlClient;
using Dapper;
using DockerCourseApi;
using Microsoft.Extensions.Options;

WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

builder.Services.AddCors();
builder.Services.Configure<Settings>(builder.Configuration);

WebApplication app = builder.Build();

app.UseCors(x => x.AllowAnyOrigin());

app.MapGet("/podcasts", async (IOptions<Settings> settings) =>
{
    SqlConnection db = new (settings.Value.ConnectionString);

    return (await db.QueryAsync<Podcast>("SELECT * FROM Podcasts")).Select(x => x.Title);
});

app.Run();

record Podcast(Guid Id, string Title);

public partial class Program { }