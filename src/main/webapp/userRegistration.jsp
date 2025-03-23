<%@ page import="java.sql.*" %>

<%
    // Retrieve form data
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");

    Connection con = null;
    PreparedStatement pst = null;

    try {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Connect to MySQL
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tarak?serverTimezone=UTC", "root", "Tarak@2024");

        // Check if username or email already exists
        String checkQuery = "SELECT COUNT(*) FROM user WHERE email = ? OR username = ?";
        pst = con.prepareStatement(checkQuery);
        pst.setString(1, email);
        pst.setString(2, userName);
        ResultSet rs = pst.executeQuery();
        
        rs.next();
        if (rs.getInt(1) > 0) {
            out.println("<p style='color:red;'>Error: Email or Username already exists! <a href='register.jsp'>Try Again</a></p>");
        } else {
            // Insert new user
            String insertQuery = "INSERT INTO user (firstName, lastName, email, username, password) VALUES (?, ?, ?, ?, ?)";
            pst = con.prepareStatement(insertQuery);
            pst.setString(1, firstName);
            pst.setString(2, lastName);
            pst.setString(3, email);
            pst.setString(4, userName);
            pst.setString(5, password);

            int i = pst.executeUpdate();
            
            if (i > 0) {
                out.println("<p style='color:green;'>Registration Successful! <a href='index.jsp'>Login Here</a></p>");
            } else {
                out.println("<p style='color:red;'>Registration Failed! <a href='register.jsp'>Try Again</a></p>");
            }
        }
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
    } finally {
        // Close resources
        if (pst != null) pst.close();
        if (con != null) con.close();
    }
%>
