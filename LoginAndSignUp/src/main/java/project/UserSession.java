/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package project;

/**
 *
 * @author Elan
 */
public class UserSession {
    private static int currentUserId = -1;  // Initialize to a value that indicates no user is logged in

    public static void login(int userId) {
        currentUserId = userId;
    }

    public static void logout() {
        currentUserId = -1;
    }

    public static int getCurrentUserId() {
        return currentUserId;
    }
}
