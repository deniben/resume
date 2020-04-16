package info.windigital.resume.entity;

import javax.persistence.*;

@Entity
@Table
public class Hobby implements ProfileEntity, Comparable<Hobby> {
    @Id
    @Column
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_profile", nullable = false)
    private Profile profile;

    @Column(nullable = false, length = 30)
    private String name;

    @Transient
    private boolean selected;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Profile getProfile() {
        return profile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    @Override
    public int compareTo(Hobby o) {
        if (o == null || getName() == null) {
            return 1;
        } else {
            return getName().compareTo(o.getName());
        }
    }
}
