package app;

public class UserProfile {
    private int id;
    private String fullname;
    private String username;
    private String password;
    private String level;
    private String path_gambar;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getPath_gambar() {
        return path_gambar;
    }

    public void setPath_gambar(String path_gambar) {
        this.path_gambar = path_gambar;
    }

}
