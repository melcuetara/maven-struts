package struts.example;



public class LoginActivity extends ExampleSupport{

    private String message;
    private String username;
    private String password;
    private Account profile[] = new Account[3];
    private Account activeAccount;


    public String execute() {
  
        createProfile();
        Boolean isUserExist = false;
        if (!isInvalid(username) && !isInvalid(password)) {
            for (int i = 0; i < profile.length; i++) {
                if (username.equals(profile[i].getUsername())) {
                    if (password.equals(profile[i].getPassword())) {
                        message = "user found";
                        setActiveAccount(profile[i]);
                        isUserExist = true;
                        break;
                    } else {
                        message = "password not match";
                        break;
                    }
                } else {
                    message = "user not found";
                }
            }
        }
        if (isUserExist) {
            return "profile";
        } else {
        return SUCCESS;
        }
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

    private boolean isInvalid(String value) {
        return (value == null || value.length() < 6);
    }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    public void createProfile() {
        profile[0] =  new Account("melallen", "123123", "mel", 
        "cuetara", "april 16, 2000", "admin", "\"A journey of a thousand miles begins with a single step\"");
        profile[1] =  new Account("jakechriz", "321321", "jake", 
        "managase", "march 23, 1999", "admin", "\"Early to bed and early to rise, makes a man healthy, wealthy and wise\"");
        profile[2] =  new Account("mercadofrancis", "231231", "francis", 
        "mercado", "match 22, 1999", "regular", "\"Genius is one percent inspiration, ninety-nine percent perspiration\"");  
    }

    public Account getActiveAccount() {
        return activeAccount;
    }

    public void setActiveAccount(Account activeAccount) {
        this.activeAccount = activeAccount;
    }

}
