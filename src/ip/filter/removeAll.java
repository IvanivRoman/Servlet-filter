package ip.filter;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/removeAll")
public class removeAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public removeAll() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BlackList blackList = BlackList.getInstance();
		blackList.removeAllIp();
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/removeall.jsp");
        requestDispatcher.forward(request, response);
	}

}
