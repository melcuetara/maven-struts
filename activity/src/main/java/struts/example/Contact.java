package struts.example;

import java.util.Random;

public class Contact extends ExampleSupport{
    public String execute() {
        return SUCCESS;
    }

    private final int max = 9;
    private final int min = 0;
    private String randomPhoneNumber;
    private String name[] = {"Mel Allen", "Christian Jake", "Francis Andrie", "Jamaica Reina"};
    private String place[] = {"Cebu City", "Lapu-Lapu City", "Mandaue City"};

    public String getRandomPhoneNumber() {
        Random random = new Random();
        String a = "";
        for(int i = 0; i < 9; i++) {
            int y = random.nextInt(max - min + 1) + min;
            a += y;  
        }
        return "+639 " + a;
    }

    public void setRandomPhoneNumber(String randomPhoneNumber) {
        this.randomPhoneNumber = randomPhoneNumber;
    }

    public String getName() {
        Random random = new Random();
        int y = random.nextInt(name.length);
        return name[y];
    }

    public void setName(String[] name) {
        this.name = name;
    }


}
