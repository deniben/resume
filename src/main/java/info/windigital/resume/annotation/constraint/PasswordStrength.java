package info.windigital.resume.annotation.constraint;

import info.windigital.resume.validator.EnglishLanguageConstraintValidator;

import javax.validation.Constraint;
import javax.validation.Payload;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.lang.annotation.*;

@Target({ElementType.METHOD, ElementType.FIELD, ElementType.ANNOTATION_TYPE, ElementType.CONSTRUCTOR, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Size(min = 8)
@NotNull
@Constraint(validatedBy = {})
public @interface PasswordStrength {
    String message() default "PasswordStrength";

    Class<? extends Payload>[] payload() default {};

    Class<?>[] groups() default {};

}
