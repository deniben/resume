package info.windigital.resume.form;

import info.windigital.resume.annotation.constraint.EnglishLanguage;
import info.windigital.resume.annotation.constraint.FieldMatch;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@FieldMatch(first = "password", second = "confirmPassword", message = "The password fields must match")
public class SignUpForm {
    @NotNull
    @Size(max = 50)
    @EnglishLanguage(withNumbers = false, withSpecSymbols = false)
    private String firstName;
    @NotNull
    @Size(max = 50)
    @EnglishLanguage(withNumbers = false, withSpecSymbols = false)
    private String lastName;
    @NotNull
    @Size(min = 8)
    private String password;
    @NotNull
    @Size(min = 8)
    private String confirmPassword;


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
