package com.bookstorestaticwebsite.StaticBookStoreWebsite.security;

import com.bookstorestaticwebsite.StaticBookStoreWebsite.admin.UserRepository;
import com.bookstorestaticwebsite.StaticBookStoreWebsite.admin.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CustomUserDetailsService implements UserDetailsService{
    @Autowired
    private UserRepository repository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = repository.findByEmail(email).orElseThrow(() -> new UsernameNotFoundException(email +" not found"));
        ArrayList<SimpleGrantedAuthority> authList = new ArrayList<>();
        if(user.getEmail().equalsIgnoreCase("superadmin@gmail.com")){
            authList.add(new SimpleGrantedAuthority("SUPER_ADMIN"));
        }else{
            authList.add(new SimpleGrantedAuthority("ADMIN"));
        }

        //String encodedPassword = new BCryptPasswordEncoder().encode("password");
        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), authList);

    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
