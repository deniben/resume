package info.windigital.resume.entity;

import info.windigital.resume.model.LanguageLevel;
import info.windigital.resume.model.LanguageType;

import javax.persistence.*;

@Entity
@Table(name = "languages")
public class Language implements ProfileEntity {
    @Id
    @Column
    private Long id;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_profile", nullable = false)
    private Profile profile;

    @Column(nullable = false, length = 30)
    private String name;

    @Column
    @Convert(converter = LanguageLevel.PersistJPAConverter.class)
    private LanguageLevel level;
    @Column
    @Convert(converter = LanguageType.PersistJPAConverter.class)
    private LanguageType type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Profile getProfile() {
        return profile;
    }

    @Override
    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LanguageLevel getLevel() {
        return level;
    }

    public void setLevel(LanguageLevel level) {
        this.level = level;
    }

    public LanguageType getType() {
        return type;
    }

    public void setType(LanguageType type) {
        this.type = type;
    }

    @Transient
    public boolean isHasLanguageType() {
        return type != LanguageType.ALL;
    }
}
