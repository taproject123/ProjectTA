/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project.ta.elearning.model;

/**
 *
 * @author Sou
 */
public class Tb_quizModel {
    private Integer id;
    private Integer course;
    private String name;
    private Integer timeopen;
    private Integer timeclose;
    private Integer timelimit;
    private Integer timecreated;
    private Integer timemodified;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCourse() {
        return course;
    }

    public void setCourse(Integer course) {
        this.course = course;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getTimeopen() {
        return timeopen;
    }

    public void setTimeopen(Integer timeopen) {
        this.timeopen = timeopen;
    }

    public Integer getTimeclose() {
        return timeclose;
    }

    public void setTimeclose(Integer timeclose) {
        this.timeclose = timeclose;
    }

    public Integer getTimelimit() {
        return timelimit;
    }

    public void setTimelimit(Integer timelimit) {
        this.timelimit = timelimit;
    }

    public Integer getTimecreated() {
        return timecreated;
    }

    public void setTimecreated(Integer timecreated) {
        this.timecreated = timecreated;
    }

    public Integer getTimemodified() {
        return timemodified;
    }

    public void setTimemodified(Integer timemodified) {
        this.timemodified = timemodified;
    }
    
    
}
