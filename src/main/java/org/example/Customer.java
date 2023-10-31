package org.example;

import java.sql.Date;

public class Customer {

    private int customer_id;
    private String customer_forename;
    private String customer_surname;
    private String email;
    private String password;

    public Customer(int customer_id, String customer_forename, String customer_surname, String email, String password){
        this.customer_id = customer_id;
        this.customer_forename = customer_forename;
        this.customer_surname = customer_surname;
        this.email = email;
        this.password = password;
    }

}
