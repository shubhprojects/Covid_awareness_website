<%@page import= "java.sql.*"%>

<%
        String Firstname = request.getParameter("Firstname");
        String Lastname = request.getParameter("Lastname");
        String Aadhar_number = request.getParameter("Aadhar_number");
        String fathers_name = request.getParameter("fathers_name");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String dob = request.getParameter("dob");
        String Gender = request.getParameter("Gender");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        String address = request.getParameter("address");
        String dose = request.getParameter("dose");
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","Amroha@123");
            Statement st = con.createStatement();           
            st.executeUpdate("insert into form_table (Firstname,Lastname,Aadhar_number,fathers_name,email,contact,dob,Gender,state,city,pincode,address,dose) values ('"+Firstname+"','"+Lastname+"','"+Aadhar_number+"','"+fathers_name+"','"+email+"','"+contact+"','"+dob+"','"+Gender+"','"+state+"','"+city+"','"+pincode+"','"+address+"','"+dose+"')");                                              
            response.sendRedirect("success.html");        
            }
        catch(Exception e) 
           {
	response.sendRedirect("error.html");
           }
%>