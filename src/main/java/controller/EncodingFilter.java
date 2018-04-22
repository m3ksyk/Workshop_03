package controller;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/")
public class EncodingFilter implements Filter {
    public void destroy() {

    }

    private String encoding = "utf-8";
    private String charset = "text/html";

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
        request.setCharacterEncoding(encoding);
        response.setContentType(charset);
        response.setCharacterEncoding(encoding);
        filterChain.doFilter(request, response);
    }


    public void init(FilterConfig fConfig) throws ServletException {
        // TODO Auto-generated method stub
    }
}
