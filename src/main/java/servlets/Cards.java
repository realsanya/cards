package servlets;

import com.github.javafaker.*;

import java.util.Locale;

public class Cards {
    public String authorName;
    public String title;

    public Cards(){
        Faker faker = new Faker(new Locale("ru"));
        authorName = faker.book().publisher();
        title = faker.book().title();
    }

}
