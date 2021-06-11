package ca.ubc.cs304.delegates;

public interface LoginDelegate {
    public interface LoginWindowDelegate {
        void login(String username, String password);
    }
}
