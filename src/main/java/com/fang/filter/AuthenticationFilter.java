package com.fang.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {
	private String hostName = "";
	private String loginPageUrlPart = "";
	private String loginEnter = "";

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// System.out.println(" AuthenticationFilter run");
		// System.out.println(((HttpServletRequest) request).getRequestURI()
		// .toLowerCase());
		if ((((HttpServletRequest) request).getRequestURI().toString()
				.equals(hostName + loginEnter))) {
			chain.doFilter(request, response);
			return;
		}
		if (!(((HttpServletRequest) request).getRequestURI().toString()
				.equals(hostName + loginPageUrlPart))) {

			HttpSession session = ((HttpServletRequest) request).getSession();
			// System.out.println(session);
			// System.out.println(session.getAttribute("userName") == null);
			if (session.getAttribute("userName") == null) {
				((HttpServletResponse) response).sendRedirect(hostName
						+ loginPageUrlPart);
				return;
			} else {
				System.out.println("doFilter--userName:"
						+ session.getAttribute("userName"));
			}
		}
		chain.doFilter(request, response);

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		hostName = arg0.getInitParameter("hostName");
		loginPageUrlPart = arg0.getInitParameter("loginPageUrlPart");
		loginEnter = arg0.getInitParameter("loginEnter");
	}

}
