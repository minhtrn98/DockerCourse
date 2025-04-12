using System.Net;
using FluentAssertions;

namespace DockerCourseApi.Tests;

public class ApiTests
{
    [Fact]
    public async Task GivenGetRequestToPodcastsEndpoint_ShouldReturnOkay()
    {
        HttpClient httpClient = new CustomWebApplicationFactory().CreateClient();
        using HttpResponseMessage response = await httpClient.GetAsync("/podcasts");
        response.StatusCode.Should().Be(HttpStatusCode.OK);
    }
}