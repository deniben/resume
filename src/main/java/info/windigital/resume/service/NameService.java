package info.windigital.resume.service;

import org.apache.commons.lang3.text.WordUtils;
import org.springframework.stereotype.Service;

@Service
public class NameService {
    public static NameService getInstance() {
        return new NameService();
    }

    public String convertName(String name) {
        if (name.contains("-")) {
            String[] parts = name.split("-");
            return WordUtils.capitalize(parts[0] + " " + parts[1]);
        }
        return name.toUpperCase();
    }
}
