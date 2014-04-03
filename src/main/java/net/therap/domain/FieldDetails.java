package net.therap.domain;

import java.util.List;

/**
 * User: shaila
 * Date: 4/2/14 4:54 PM
 */
public class FieldDetails {
    private int id;
    private FieldType fieldType;
    private String label;
    private List<String> value;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public FieldType getFieldType() {
        return fieldType;
    }

    public void setFieldType(FieldType fieldType) {
        this.fieldType = fieldType;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public List<String> getValue() {
        return value;
    }

    public void setValue(List<String> value) {
        this.value = value;
    }
}
