package info.windigital.resume.util;

import info.windigital.resume.form.SignUpForm;
import org.apache.commons.lang3.text.WordUtils;

import java.util.Random;

public class DataUtil {
    private static final String UID_DELIMITER = "-";

    public static String normalizeName(String name) {
        return name.trim().toLowerCase();
    }

    public static String capitalizeName(String name) {
        return WordUtils.capitalize(normalizeName(name));
    }

    public static String regenerateUidWithRandomSuffix(String baseUid, String alphabet, int letterCount) {
        return baseUid + UID_DELIMITER + generateRandomSuffix(alphabet, letterCount);
    }

    public static String generateRandomSuffix(String alphabet, int letterCount) {
        Random r = new Random();
        StringBuilder uid = new StringBuilder();
        for (int i = 0; i < letterCount; i++) {
            uid.append(alphabet.charAt(r.nextInt(alphabet.length())));
        }
        return uid.toString();
    }

    public static String generateProfileUid(SignUpForm signUpForm) {
        return normalizeName(signUpForm.getFirstName()) + UID_DELIMITER + normalizeName(signUpForm.getLastName());
    }
}
