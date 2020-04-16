package info.windigital.resume.model;

import javax.persistence.AttributeConverter;

public enum LanguageType {
    ALL, SPOKEN, WRITING;

    public String getDbValue() {
        return name().toLowerCase();
    }

    public LanguageType getReverseType() {
        if (this == SPOKEN) {
            return WRITING;
        } else if (this == WRITING) {
            return SPOKEN;
        } else {
            throw new IllegalArgumentException(this + " doesn't have reverse type");
        }
    }

    public static class PersistJPAConverter implements AttributeConverter<LanguageType, String> {

        @Override
        public String convertToDatabaseColumn(LanguageType attribute) {
            return attribute.getDbValue();
        }

        @Override
        public LanguageType convertToEntityAttribute(String s) {
            return LanguageType.valueOf(s.toUpperCase());
        }
    }

}
