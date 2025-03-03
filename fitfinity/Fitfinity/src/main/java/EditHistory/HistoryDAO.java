package EditHistory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class HistoryDAO {

	public Boolean checkCompleted(String id)
	{
		Boolean flag = false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/fitfinity","root", "");
			Statement s = c.createStatement();
			ResultSet r = s.executeQuery("SELECT * FROM history WHERE dateOfVisit=CURDATE()");
			
			while(r.next())
			{
				String dbID = r.getString("patientID");
                if (id.equals(dbID)) {
                    flag = true;
                    break;
                }
			}
		}
		catch (Exception e) {
			e.getStackTrace();
		}
		
		
		return flag;
	}
}
