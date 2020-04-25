package info.windigital.resume.form;

import info.windigital.resume.entity.Skill;

import javax.validation.Valid;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class SkillForm implements Serializable {
    @Valid
    private List<Skill> items = new ArrayList<>();

    public SkillForm() {
        super();
    }

    public SkillForm(List<Skill> items) {
        this.items = items;
    }


    public List<Skill> getItems() {
        return items;
    }

    public void setItems(List<Skill> items) {
        this.items = items;
    }
}
