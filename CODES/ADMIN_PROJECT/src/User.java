/*User.java is a class where the user can set and get project ID inorder to create or update projects
 */

import java.util.Date;

public class User {

    private int projectid;
    private String projectname;
    private String projectstatus;
    private String courseid;
    private String url_description;
    public int getProjectid() {
        return projectid;
    }
    public void setProjectid(int projectid) {
        this.projectid = projectid;
    }
    public String getprojectname() {
        return projectname;
    }
    public void setprojectname(String projectname) {
        this.projectname = projectname;
    }
    public String getprojectstatus() {
        return projectstatus;
    }
    public void setprojectstatus(String projectstatus) {
        this.projectstatus = projectstatus;
    }

    public String getcourseid() {
        return courseid;
    }
    public void setcourseid(String courseid) {
        this.courseid = courseid;
    }
    public String geturl_description() {
        return url_description;
    }
    public void seturl_description(String url_description) {
        this.url_description = url_description;
    }
    @Override
    public String toString() {
        return "User [projectid=" + projectid + ", projectname=" + projectname
                + ", projectstatus=" + projectstatus + ", courseid="
                + courseid + ", url_description="
                        + url_description + "]";
    }    
}
