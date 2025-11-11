package dev.langchain4j.quarkus.workshop;

import org.eclipse.microprofile.config.inject.ConfigProperty;
import org.eclipse.microprofile.health.HealthCheck;
import org.eclipse.microprofile.health.HealthCheckResponse;
import org.eclipse.microprofile.health.Readiness;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

@Readiness
public class ReadinessProbe implements HealthCheck {

    @ConfigProperty(name="quarkus.langchain4j.openai.api-key")
    String OpenAI_API_KEY;

    private static final String OPENAI_URL = "https://api.openai.com/v1/models";

    @Override
    public HealthCheckResponse call() {
        HttpResponse<String> response;
        try (HttpClient client = HttpClient.newHttpClient()) {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(OPENAI_URL))
                    .header("Authorization", "Bearer " + OpenAI_API_KEY)
                    .GET()
                    .build();

            response = client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                return HealthCheckResponse.up("OpenAI connectivity ok");
            } else {
                return HealthCheckResponse.down("OpenAI connectivity failed");
            }
        } catch (IOException | InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
