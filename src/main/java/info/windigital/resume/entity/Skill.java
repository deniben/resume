package info.windigital.resume.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import info.windigital.resume.annotation.constraint.EnglishLanguage;

import javax.persistence.*;

@Entity
@Table
public class Skill implements ProfileEntity {
    @Id
    @Column
    private Long id;

    @Column(nullable = false, length = 50)
    @EnglishLanguage
    private String category;

    @Column
    @EnglishLanguage
    private String value;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_profile", nullable = false)
    @JsonIgnore
    private Profile profile;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Profile getProfile() {
        return profile;
    }

    @Override
    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!super.equals(o))
            return false;
        if (!(o instanceof Skill))
            return false;
        Skill other = (Skill) o;
        if (category == null) {
            if (other.category != null)
                return false;
        } else if (!category.equals(other.category))
            return false;

        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id)) {
            return false;
        }

        if (value == null) {
            if (other.value != null)
                return false;

        } else if (!value.equals(other.value)) {
            return false;
        }
        return true;

    }

    @Override
    public int hashCode() {
        final int price = 31;
        int result = super.hashCode();
        result = price * result + ((category == null) ? 0 : category.hashCode());
        result = price * result + ((id == null) ? 0 : id.hashCode());
        result = price * result + ((value == null) ? 0 : value.hashCode());
        return result;
    }
}
