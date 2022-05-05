package struts.example;

public class Home extends ExampleSupport{
    
    public String exectue() {
        return SUCCESS;
    }

    private String title = "Home";

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
