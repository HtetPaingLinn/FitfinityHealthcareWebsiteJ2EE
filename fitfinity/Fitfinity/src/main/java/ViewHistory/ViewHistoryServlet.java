package ViewHistory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewHistoryServlet")
public class ViewHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ViewHistoryServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String pID = request.getParameter("id");
		
		request.setAttribute("pid", pID);
		request.setAttribute("userId", userid);
		request.getRequestDispatcher("./doctorDashboard.jsp").forward(request, response);
	}
	
	

}
