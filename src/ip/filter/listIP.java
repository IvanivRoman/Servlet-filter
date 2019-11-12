package ip.filter;

import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/list")
public class listIP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public listIP() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BlackList blackList = BlackList.getInstance();
		List<String> ipAddresses = blackList.allBlacklist();
		request.setAttribute("ipAddresses", ipAddresses);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/list.jsp");
        requestDispatcher.forward(request, response);
	}

}
