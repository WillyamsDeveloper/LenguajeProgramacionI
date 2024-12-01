package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOFactory;
import entidades.Estudiante;
import entidades.TipoDocumento;
import interfaces.EstudianteInterface;

/**
 * Servlet implementation class EstudianteServlet
 */
@WebServlet("/EstudianteServlet")
public class EstudianteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type=request.getParameter("type");
		
		System.out.println("este es la variable tipo : "+type);
		
		switch(type) {
			case "load":configuracionInicial(request,response);
			default:
				request.setAttribute("mensaje", "ocurrio un problema");
				request.getRequestDispatcher("listEstudiante.jsp").forward(request, response);
		}
	}

	private void configuracionInicial(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
		EstudianteInterface dao=daoFactory.getEstudiante();
		List<TipoDocumento> dataTipoDocumento=dao.listTipoDocumentos();
		System.out.println("antes data estudiante");
		List<Estudiante> dataEstudiante=dao.listEstudiante();
		
		System.out.println("despues data estudiante");
		
		request.setAttribute("dataEstudiantes", dataEstudiante);
		request.setAttribute("data", dataTipoDocumento);
		request.getRequestDispatcher("listEstudiante.jsp").forward(request, response);
	}

}
