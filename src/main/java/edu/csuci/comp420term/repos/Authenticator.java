package edu.csuci.comp420term.repos;

public interface Authenticator {

    String encode(String password);
    boolean matches(String inputPassword, String passwordHash);

}
