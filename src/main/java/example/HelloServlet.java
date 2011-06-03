package example;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;

/**
 * Gets the Maven build version and dispatches the request to welcome.jsp
 */
public class HelloServlet extends HttpServlet {


  private static final String PROPERTY_FILE = "app.properties";

  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    Properties properties = new Properties();
    properties.load(this.getClass().getClassLoader().getResourceAsStream(PROPERTY_FILE));

    String version = (String)properties.get(Constants.VERSION_JSP_ATTRIBUTE);

    RequestDispatcher dispatcher = request.getRequestDispatcher(response.encodeURL(Constants.WELCOME_JSP_LOCATION));
    request.setAttribute(Constants.VERSION_JSP_ATTRIBUTE,version);
    dispatcher.forward(request, response);
  }
}
