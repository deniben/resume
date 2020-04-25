package info.windigital.resume.filter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class ResumeFilter extends AbstractFilter {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());

    @Value("${application.production}")
    private boolean production;

    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain) throws IOException, ServletException {
        String requestURL = req.getRequestURI();
        req.setAttribute("REQUEST_URL", requestURL);
        try {
            chain.doFilter(req, resp);
        } catch (Throwable th) {
            LOGGER.error("Process request was failed: " + requestURL, th);
            handleException(th, requestURL, resp);
        }
    }

    private void handleException(Throwable th, String requestURL, HttpServletResponse resp) throws IOException, ServletException {
        if (production) {
            if (requestURL.startsWith("/fragment") || "/error".equals(requestURL)) {
                sendErrorStatus(resp);
            } else {
                resp.sendRedirect("/error?url=" + requestURL);
            }
        } else {
            throw new ServletException(th);
        }
    }

    private void sendErrorStatus(HttpServletResponse resp) throws IOException {
        resp.reset();
        resp.getWriter().write("");
        resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
}
