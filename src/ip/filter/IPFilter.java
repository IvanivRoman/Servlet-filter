package ip.filter;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;


public class IPFilter implements Filter{
	
	private BlackList blackList;
	
	private FilterConfig filterConfig;
	
	@Override
	public void destroy() {
		
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterchain) throws IOException, ServletException {
	
		InetAddress inetAddress = InetAddress.getLocalHost();
		String userIp = inetAddress.getHostAddress();
		HttpServletResponse httpResponse = null;
		
		if (response instanceof HttpServletResponse){
			httpResponse = (HttpServletResponse) response;
		}
		
		blackList = BlackList.getInstance();
		ArrayList<String> listIP = blackList.allBlacklist();
		if (listIP.contains(userIp)) {
		  httpResponse.sendError(HttpServletResponse.SC_FORBIDDEN,"Access disallowed");  
		  } 
		else {
		  boolean whiteIp = true; 
		  request.setAttribute("ip_address", whiteIp);
		  filterchain.doFilter(request, response);
		 }
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

}
