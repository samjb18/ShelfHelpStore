package org.example;

import java.sql.*;
public class SQLController {
    private Connection connection = null; //The connection object for connecting to our database

    public SQLController(){
        initialiseConnection();
    }
    public void initialiseConnection(){ //This method just sets up the connection, it is called upon the creation of the instance
        System.out.println( "Connecting to database..." );
        try {
            connection = DriverManager.getConnection("jdbc:mysql://34.22.185.70:3306/shelf_help_store","cohort5group2","thisisasecurepasswordforgroup2!");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    public int getQueryRowCount(String query) throws SQLException {
        //This method just returns the number of rows in the given statement
        //This is probably a bad idea because it involves us executing the same query twice
        try (Statement statement = connection.createStatement();
             ResultSet standardRS = statement.executeQuery(query)) {
            int size = 0;
            while (standardRS.next()) {
                size++;
            }
            return size;
        }
    }

    public String[] fetchBook(String isbn){
        //This just fetches a single book from the database based of the isbn
        try{
            //9780062662561
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM books WHERE isbn = " + isbn);
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
            String[] results = new String[resultSetMetaData.getColumnCount()];

            resultSet.next();
            for(int i = 1; i <= resultSetMetaData.getColumnCount(); i++){
                results[i - 1] = resultSet.getString(i);
            }

            return results;
        }
        catch(Exception e){
            System.out.println("Error when connecting to database: " + e);
        }
        return null;
    }

    public String[][] fetchBooks(){
        //Fetches all the books stored within the database
        int rowCount = 1;

        try{

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM books");
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
            String[][] results = new String[getQueryRowCount("SELECT * FROM books")][resultSetMetaData.getColumnCount()];

            while(resultSet.next()){
                for(int i = 1; i <= resultSetMetaData.getColumnCount(); i++){
                    results[rowCount - 1][i - 1] = resultSet.getString(i);
                }
                rowCount ++;
            }

            return results;
        }
        catch(Exception e){
            System.out.println("Error when connecting to database: " + e);
        }
        return null;
    }

    public String[][] fetchAuthors(){
        //Fetches all the authors stored within the database
        int rowCount = 1;

        try{

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM authors");
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
            String[][] results = new String[getQueryRowCount("SELECT * FROM authors")][resultSetMetaData.getColumnCount()];

            while(resultSet.next()){
                for(int i = 1; i <= resultSetMetaData.getColumnCount(); i++){
                    results[rowCount - 1][i - 1] = resultSet.getString(i);
                }
                rowCount ++;
            }

            return results;
        }
        catch(Exception e){
            System.out.println("Error when connecting to database: " + e);
        }
        return null;
    }

    public String[][] fetchGenres(){
        //Fetches all the genres stored within the database
        int rowCount = 1;

        try{

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM genres");
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
            String[][] results = new String[getQueryRowCount("SELECT * FROM genres")][resultSetMetaData.getColumnCount()];

            while(resultSet.next()){
                for(int i = 1; i <= resultSetMetaData.getColumnCount(); i++){
                    results[rowCount - 1][i - 1] = resultSet.getString(i);
                }
                rowCount ++;
            }

            return results;
        }
        catch(Exception e){
            System.out.println("Error when connecting to database: " + e);
        }
        return null;
    }

    public void addCustomer(String customer_forename, String customer_surname, String email, String password){
        try{
            Statement statement = connection.createStatement();
            int result = statement.executeUpdate("INSERT INTO customers (customer_forename,customer_surname,email,password) VALUES(\"" + customer_forename + "\",\"" + customer_surname + "\",\"" + email + "\",md5(\"" + password + "\"));");
        }
        catch(Exception e){
            System.out.println("Error when connecting to database: " + e);
        }
    }

    public boolean doesEmailAlreadyExist(String email) {
        try{
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("SELECT COUNT(*) FROM customers WHERE email = \""+ email + "\";");
            result.next();
            System.out.println(result.getInt(1));
            return (result.getInt(1) > 0);
        }
        catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
