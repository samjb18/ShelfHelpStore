package org.example;


import java.sql.*;


public class App {

    public static void main( String[] args ) {

        System.out.println( "Connecting to database..." );
        Connection connection = null;
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://192.168.1.110:3306/shelf_help_store","root","root");

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM books");

            while(resultSet.next()){
                System.out.println(resultSet.getString(2));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

}
