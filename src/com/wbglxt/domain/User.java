package com.wbglxt.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by LiPeijing on 2017/9/10.
 */
public class User {

    private int uid;
    private String username;
    private String password;
    private String upname;
    private String uname;
    private String usex;
    private int uage;
    private String uemail;
    private String utel;
    private int uauth;
    private int ustate;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUpname() {
        return upname;
    }

    public void setUpname(String upname) {
        this.upname = upname;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public int getUage() {
        return uage;
    }

    public void setUage(int uage) {
        this.uage = uage;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUtel() {
        return utel;
    }

    public void setUtel(String utel) {
        this.utel = utel;
    }

    public int getUauth() {
        return uauth;
    }

    public void setUauth(int uauth) {
        this.uauth = uauth;
    }

    public int getUstate() {
        return ustate;
    }

    public void setUstate(int ustate) {
        this.ustate = ustate;
    }

    private Set<Microblog> microblogs = new HashSet<Microblog>();

    public Set<Microblog> getMicroblogs() {
        return microblogs;
    }

    public void setMicroblogs(Set<Microblog> microblogs) {
        this.microblogs = microblogs;
    }

    private Set<Review> reviews = new HashSet<Review>();

    public Set<Review> getReviews() {
        return reviews;
    }

    public void setReviews(Set<Review> reviews) {
        this.reviews = reviews;
    }

    private Set<Focus> focusSet = new HashSet<Focus>();

    public Set<Focus> getFocusSet() {
        return focusSet;
    }

    public void setFocusSet(Set<Focus> focusSet) {
        this.focusSet = focusSet;
    }

    private Set<Focus> foci = new HashSet<Focus>();

    public Set<Focus> getFoci() {
        return foci;
    }

    public void setFoci(Set<Focus> foci) {
        this.foci = foci;
    }
}
