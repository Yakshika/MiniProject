package demo;

import java.io.IOException;
import model.TeacherDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Admins;
import db.Students;
import model.StudentDAO;

@WebServlet("/student")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentDAO stud = new StudentDAO();
	TeacherDAO admin = new TeacherDAO();

	public StudentServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String name = request.getParameter("username");
		String operation=request.getParameter("opr");

		Students student = new Students();
		student.setUsername(userid);
		student.setPassword(password);
		student.setName(name);

		Admins adm = new Admins();
		adm.setUsername(userid);
		adm.setPassword(password);

		if (operation.equals("studentnew")) {
			stud.save(student);

		} else if (operation.equals("adminnew")) {
		
			admin.save(adm);
		}
		RequestDispatcher r = request.getRequestDispatcher("StudentDetails.jsp");
		r.forward(request, response);

	}

}
