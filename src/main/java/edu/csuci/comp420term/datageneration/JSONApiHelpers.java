package edu.csuci.comp420term.datageneration;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.json.JSONObject;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;

public class JSONApiHelpers {

    public static JSONObject fetchAPICall(String apiEndpoint) throws IOException {
        final HttpClient httpClient = HttpClients.createDefault();
        final HttpGet getRequest = new HttpGet(apiEndpoint);
        final HttpResponse httpResponse = httpClient.execute(getRequest);
        final HttpEntity httpResponseEntity = httpResponse.getEntity();
        String responseBody = "";
        if (httpResponseEntity != null) {
            try (InputStream inputStream = httpResponseEntity.getContent()) {
                StringWriter writer = new StringWriter();
                IOUtils.copy(inputStream, writer, StandardCharsets.UTF_8);
                responseBody = writer.toString();
            }
        }
        return new JSONObject(responseBody);
    }

}
