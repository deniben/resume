package info.windigital.resume.entity;

import info.windigital.resume.util.Constants;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collections;

public class CurrentProfile extends User {
    private final Long id;
    private final String fullName;

    public CurrentProfile(Profile profile) {
        super(profile.getUid(), profile.getPassword(), true, true, true, true,
                Collections.singleton(new SimpleGrantedAuthority(Constants.USER)));
        this.id = profile.getId();
        this.fullName = profile.getFirstName() + "-" + profile.getLastName();
    }

    public Long getId() {
        return id;
    }

    public String getFullName() {
        return fullName;
    }
}
