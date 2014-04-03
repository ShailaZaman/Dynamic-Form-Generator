package net.therap.filter;

import net.therap.domain.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * User: shaila
 * Date: 4/3/14 9:38 AM
 */
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {

        HttpSession session = ((HttpServletRequest) servletRequest).getSession();
        String path = ((HttpServletRequest) servletRequest).getRequestURI();

        if (path.contains("Login") || path.contains("Register")) {

            if (path.contains("Register")) {
                session.removeAttribute("message");
            }
            filterChain.doFilter(servletRequest, servletResponse);

        } else {

            User user = (User) session.getAttribute("User");
            if (user == null) {
                session.setAttribute("message", "Sorry, you need to login to view this page");
                ((HttpServletResponse) servletResponse).sendRedirect("/dynamicForm/hello.html");
                return;

            }
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
    }
}
