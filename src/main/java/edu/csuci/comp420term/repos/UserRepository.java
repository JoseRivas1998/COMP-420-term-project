package edu.csuci.comp420term.repos;

public interface UserRepository {

    void login(String username, String password);
    void createAccount(String username, String password);
    String currentUser();

}
