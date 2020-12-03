package edu.csuci.comp420term.data;


import at.favre.lib.crypto.bcrypt.BCrypt;
import edu.csuci.comp420term.repos.Authenticator;

public class BCryptAuthenticator implements Authenticator {


    private static final int COST = 12;

    @Override
    public String encode(String password) {
        return BCrypt.withDefaults().hashToString(COST, password.toCharArray());
    }

    @Override
    public boolean matches(String inputPassword, String passwordHash) {
        return BCrypt.verifyer().verify(inputPassword.toCharArray(), passwordHash).verified;
    }
}
