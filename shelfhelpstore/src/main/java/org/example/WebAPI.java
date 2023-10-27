package org.example;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import static org.apache.logging.log4j.message.MapMessage.MapFormat.JSON;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
@RestController
public class WebAPI {

    SQLController sql = new SQLController(); //This allows us to execute the required SQL statements

    public static void main(String[] args){
        SpringApplication.run(WebAPI.class, args);
    }

    @GetMapping("/")
    public String index(){
        return "Index";
    }
    @GetMapping("/getBook") //Returns a single book
    public String returnBook() {

        String[] srs = sql.fetchBook("9780062662561");
        Book book = new Book(srs[0], srs[1],
                Integer.parseInt(srs[2]),
                Integer.parseInt(srs[3]),
                Integer.parseInt(srs[4]),
                Integer.parseInt(srs[5]),
                srs[6], srs[7],
                Float.parseFloat(srs[8]),
                Float.parseFloat(srs[9]),
                Integer.parseInt(srs[10]));

        Gson gson = new Gson();
        return gson.toJson(book);
    }

    @GetMapping("/getBooks") //Returns all books in the database
    public String returnBooks(){

        ArrayList<Book> books = new ArrayList<Book>();
        Book tempBook = null;

        //Store the results of the sql statement in a 2D array. Each row is one book
        String[][] srs = sql.fetchBooks();

        for(int i = 0; i < srs.length; i++){
            for(int j = 0; j < srs[i].length; j++){
                //Create a new book for each row and add it to the arraylist
                tempBook = new Book(srs[i][0], srs[i][1],
                        Integer.parseInt(srs[i][2]),
                        Integer.parseInt(srs[i][3]),
                        Integer.parseInt(srs[i][4]),
                        Integer.parseInt(srs[i][5]),
                        srs[i][6], srs[i][7],
                        Float.parseFloat(srs[i][8]),
                        Float.parseFloat(srs[i][9]),
                        Integer.parseInt(srs[i][10]));
            }
            books.add(tempBook);
        }

        Gson gson = new Gson();
        //Convert the arraylist to string in JSON format and return it
        return (gson.toJsonTree(books).getAsJsonArray()).toString();
    }

    @GetMapping("/getAuthors") //Returns all books in the database
    public String returnAuthors(){

        ArrayList<Author> authors = new ArrayList<Author>();
        Author tempAuthor = null;

        //Store the results of the sql statement in a 2D array. Each row is one book
        String[][] srs = sql.fetchAuthors();

        for(int i = 0; i < srs.length; i++){
            for(int j = 0; j < srs[i].length; j++){
                //Create a new book for each row and add it to the arraylist
                tempAuthor = new Author(Integer.parseInt(srs[i][0]), srs[i][1],
                        srs[i][2]);
            }
            authors.add(tempAuthor);
        }

        Gson gson = new Gson();
        //Convert the arraylist to string in JSON format and return it
        return (gson.toJsonTree(authors).getAsJsonArray()).toString();
    }

    @GetMapping("/getGenres") //Returns all books in the database
    public String returnGenres(){

        ArrayList<Genre> genres = new ArrayList<Genre>();
        Genre tempGenre = null;

        //Store the results of the sql statement in a 2D array. Each row is one genre
        String[][] srs = sql.fetchGenres();

        for(int i = 0; i < srs.length; i++){
            for(int j = 0; j < srs[i].length; j++){
                //Create a new genre for each row and add it to the arraylist
                tempGenre = new Genre(Integer.parseInt(srs[i][0]), srs[i][1]);
            }
            genres.add(tempGenre);
        }

        Gson gson = new Gson();
        //Convert the arraylist to string in JSON format and return it
        return (gson.toJsonTree(genres).getAsJsonArray()).toString();
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String signUp(
        @RequestParam("customer_forename") String customer_forename,
        @RequestParam("customer_surname") String customer_surname,
        @RequestParam("email") String email,
        @RequestParam("password") String password,
        Model model
    ){
        if (sql.doesEmailAlreadyExist(email)) {
            model.addAttribute("error", "Email already exists");
            return "signup_Fail";
        }
        sql.addCustomer(customer_forename,customer_surname,email,password);
        return "signup_Success";
    }
}
