package com.wbglxt.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wbglxt.domain.Microblog;
import com.wbglxt.domain.PageBean;
import com.wbglxt.service.MicroblogService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
public class MicroblogAction extends ActionSupport implements ModelDriven<Microblog> {

    private Microblog microblog = new Microblog();
    @Override
    public Microblog getModel() {
        return microblog;
    }

    private MicroblogService microblogService;

    public void setMicroblogService(MicroblogService microblogService) {
        this.microblogService = microblogService;
    }

    private Integer currPage = 1;

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public String findAll() {
        PageBean<Microblog> pageBean = microblogService.findPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAll";
    }

    public String findHome() {
        PageBean<Microblog> pageBean = microblogService.findPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findHome";
    }

    public String saveUI() {
        return "saveUI";
    }

    public String delete() {
        System.out.println("Delete执行了！！！！！！！！！！！");
        microblog = microblogService.findById(microblog.getMid());
        microblogService.delete(microblog);
        return "deleteSuccess";
    }

    private int uid = 2;

    public void setUid(int uid) {
        this.uid = uid;
    }

    private List<Microblog> list = new ArrayList<Microblog>();

    public void setList(List<Microblog> list) {
        this.list = list;
    }

    public List<Microblog> getList() {
        return list;
    }

    public String findByUid() {
        System.out.println("FindByUid--------------------------------------------------------" + uid);
        list = microblogService.findByUid(uid);
        if (list == null) {
            System.out.println("NULL!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + "bbbb" + uid + "vvvvv");
        }
        ActionContext.getContext().getValueStack().push(list);
        System.out.println(list.get(0).getMcontent());
        return "findSuccess";
    }

    public String deleteByUid() {
        System.out.println("Delete执行了！！！！！！！！！！！");
        microblog = microblogService.findById(microblog.getMid());
        microblogService.delete(microblog);
        return "deleteByUidSuccess";
    }

    public String save() {
        microblogService.save(microblog);
        return "saveSuccess";
    }

    private String mcontent;

    public String getMcontent() {
        return mcontent;
    }

    public void setMcontent(String mcontent) {
        this.mcontent = mcontent;
    }

    private int mid;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String copy() {
        System.out.println(mid + "-----------------------------------------------------------------------------------");
        microblog.setMcontent("123123");
        microblogService.copy(microblog);
        return "copySuccess";
    }
}
