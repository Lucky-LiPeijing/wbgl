package com.wbglxt.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by LiPeijing on 2017/9/13.
 */
public class Microblog {

    private int mid;
    private int uid;
    private Date mtime;
    private String mcontent;
    private int mstate;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Date getMtime() {
        return mtime;
    }

    public void setMtime(Date mtime) {
        this.mtime = mtime;
    }

    public String getMcontent() {
        return mcontent;
    }

    public void setMcontent(String mcontent) {
        this.mcontent = mcontent;
    }

    public int getMstate() {
        return mstate;
    }

    public void setMstate(int mstate) {
        this.mstate = mstate;
    }
}
