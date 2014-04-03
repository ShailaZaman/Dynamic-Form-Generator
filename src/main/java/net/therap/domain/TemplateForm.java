package net.therap.domain;

/**
 * User: shaila
 * Date: 4/2/14 3:56 PM
 */
public class TemplateForm {

    private int id;
    private String title;
    private FieldDetails fieldDetails; //one to one

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
}
