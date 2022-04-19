package demo;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class ProfileData
 */

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10,

		maxFileSize = 1024 * 1024 * 20, maxRequestSize = 1024 * 1024 * 60)

@WebServlet("/profile")
public class ProfileData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileData() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static final String UPLOAD_DIR = "images";
	public String dbFileName = "";

	String id;
	String fname;
	String sname;
	String mobno;
	String ad1;
	String collage;
	String dob;
	String gender;
	String emailid;
	String city;
	String postalcode;
	String facebook;
	String instagram;
	String twitter;
	String linkedin;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		id = request.getParameter("id");

		fname = request.getParameter("fn");

		sname = request.getParameter("ln");

		mobno = request.getParameter("pn");

		ad1 = request.getParameter("ad1");

		collage = request.getParameter("unv");

		dob = request.getParameter("dob");

		gender = request.getParameter("gender");

		emailid = request.getParameter("email");

		city = request.getParameter("ct");

		postalcode = request.getParameter("psc");
		facebook = request.getParameter("fc");

		instagram = request.getParameter("in");

		twitter = request.getParameter("twt");

		linkedin = request.getParameter("li");

		HttpSession session = request.getSession();

		String enrollment = (String) session.getAttribute("enroll");

		System.out.println(id);

		if (id.equals("insert")) {

			Part part = request.getPart("file");
			String fileName = extractFileName(part);

			System.out.println(fileName);

			String applicationPath = "C:\\Users\\Natha\\Desktop\\eclipse\\FIlesOfEclipsDEProject\\WebContent";

			String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
			System.out.println("applicationPath:" + applicationPath);
			File fileUploadDirectory = new File(uploadPath);

			if (!fileUploadDirectory.exists()) {
				fileUploadDirectory.mkdirs();
			}
			String savePath = uploadPath + File.separator + enrollment+"_"+fileName;
			System.out.println("savePath: " + savePath);
			File fileSaveDir1 = new File(savePath);

			dbFileName = UPLOAD_DIR + File.separator + fileName;
			part.write(savePath + File.separator);

			try

			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost/deprojet", "root", "root");

				Statement stmt = con.createStatement();

				String query = "INSERT INTO PROFILE(`enrollment`,`name`,`surname`,`image`,`address`,`collage`,`dob`,`gender`,`email`,`city`,`postalcode`,`facebook`,`instagram`,`twitter`,`linkedin`)"+
				               ""+"VALUES("+enrollment+",'"+fname+"','"+sname+"',null,'"+ad1+"','"+collage+"',"+dob+",'"+gender+"','"+emailid+"','"+city+"','"+postalcode+"','"+facebook+"','"+instagram+"','"+twitter+"','"+linkedin+"');";

				stmt.executeUpdate(query);

				con.close();

				System.out.println("Inserted");
				stmt.close();

				response.sendRedirect("profile?id=retrive");
				
			}

			catch (Exception e) {

				e.printStackTrace();

			}

		}
	}

	private String extractFileName(Part part) {// This method will print the
												// file name.
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
}
