package com.example.JobApp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
    private static Connection connection = null;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                // PostgreSQL database credentials
                String url = "jdbc:postgresql://localhost:5432/postgres"; // Update with your database name
                String user = "postgres";
                String password = "sg.postgres6";

                connection = DriverManager.getConnection(url, user, password);
            } catch (SQLException e) {
                System.out.println("Failed to create a database connection.");
                e.printStackTrace();
            }
        }
        return connection;
    }
}
