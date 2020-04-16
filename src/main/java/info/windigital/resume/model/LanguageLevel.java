package info.windigital.resume.model;

import javax.persistence.AttributeConverter;

public enum LanguageLevel {
    BEGINNER, ELEMENTARY, PRE_INTERMEDIATE, INTERMEDIATE, UPPER_INTERMEDIATE, ADVANCED, PROFICIENCY;

    public String getDbValue() {
        return name().toLowerCase();
    }

    public int getSliderIntValue() {
        return ordinal();
    }

    public static class PersistJPAConverter implements AttributeConverter<LanguageLevel, String> {

        @Override
        public String convertToDatabaseColumn(LanguageLevel attribute) {
            return attribute.getDbValue();
        }

        @Override
        public LanguageLevel convertToEntityAttribute(String s) {
            return LanguageLevel.valueOf(s.toUpperCase());
        }
    }
}
