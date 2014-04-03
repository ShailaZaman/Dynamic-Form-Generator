package net.therap.domain;

import java.util.List;

/**
 * User: shaila
 * Date: 4/2/14 3:52 PM
 */
public class Form {

    private int id;
    private String title;
    private List<? extends FieldType> fieldTypes;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<? extends FieldType> getFieldTypes() {
        return fieldTypes;
    }

    public void setFieldTypes(List<? extends FieldType> fieldTypes) {
        this.fieldTypes = fieldTypes;
    }
}
