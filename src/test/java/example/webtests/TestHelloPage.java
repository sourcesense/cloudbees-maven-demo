package example.webtests;

import com.thoughtworks.selenium.SeleneseTestCase;

public class TestHelloPage extends SeleneseTestCase {

  public void setUp() throws Exception {
    setUp("http://localhost:8085", "*firefox");
  }

  public void testUserShouldLogInByEnteringUsername() throws Exception {
    selenium.open("/");
    super.verifyEquals(selenium.getTitle(), "Cloudbees Test");
    assertTrue(selenium.isTextPresent("Maven-built CloudBees Hello World!"));
  }
}
