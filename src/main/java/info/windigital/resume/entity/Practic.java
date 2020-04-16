package info.windigital.resume.entity;

import org.joda.time.DateTime;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
@Table
public class Practic extends AbstractFinishDateEntity implements ProfileEntity {
    @Id
    @Column
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_profile", nullable = false)
    private Profile profile;

    @Column(nullable = false, length = 100)
    private String position;

    @Column(nullable = false, length = 100)
    private String company;

    @Column(length = 255)
    private String demo;

    @Column(length = 255)
    private String src;

    @Column(nullable = false, length = 2147483647)
    private String responsibilities;

    @Column(name = "begin_date", nullable = false)
    private Date beginDate;
    @Transient
    private Integer beginDateMonth;
    @Transient
    private Integer beginDateYear;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getDemo() {
        return demo;
    }

    public void setDemo(String demo) {
        this.demo = demo;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getResponsibilities() {
        return responsibilities;
    }

    public void setResponsibilities(String responsibilities) {
        this.responsibilities = responsibilities;
    }

    public Integer getBeginDateMonth() {
        if (beginDate != null) {
            return new DateTime(beginDate).getMonthOfYear();
        } else {
            return null;
        }
    }

    public void setBeginDateMonth(Integer beginDateMonth) {
        this.beginDateMonth = beginDateMonth;
        setupBeginDate();
    }

    public Integer getBeginDateYear() {
        if (beginDate != null) {
            return new DateTime(beginDate).getYear();
        } else {
            return null;
        }
    }

    public void setBeginDateYear(Integer beginDateYear) {
        this.beginDateYear = beginDateYear;
        setupBeginDate();
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setupBeginDate() {
        if (beginDateYear != null && beginDateMonth != null) {
            setBeginDate(new Date(new DateTime(beginDateYear, beginDateMonth, 1, 0, 0).getMillis()));
        } else {
            setBeginDate(null);
        }
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Practic practic = (Practic) o;
        return Objects.equals(id, practic.id) &&
                Objects.equals(position, practic.position) &&
                Objects.equals(company, practic.company) &&
                Objects.equals(demo, practic.demo) &&
                Objects.equals(src, practic.src) &&
                Objects.equals(responsibilities, practic.responsibilities) &&
                Objects.equals(beginDate, practic.beginDate) &&
                Objects.equals(beginDateMonth, practic.beginDateMonth) &&
                Objects.equals(beginDateYear, practic.beginDateYear);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, position, company, demo, src, responsibilities, beginDate, beginDateMonth, beginDateYear);
    }
}
