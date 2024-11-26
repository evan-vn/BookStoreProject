
package com.bookstorestaticwebsite.StaticBookStoreWebsite.security;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;

import java.io.IOException;
public class CustomAuthenticationSuccessHandler implements org.springframework.security.web.authentication.AuthenticationSuccessHandler  {
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        String redirectURL = request.getContextPath();

        if(authentication.getAuthorities().stream().anyMatch(a -> a.getAuthority().equals("ADMIN") || a.getAuthority().equals("SUPER_ADMIN"))){
            redirectURL = "/admin/";
        }
        response.sendRedirect(redirectURL);
    }
}