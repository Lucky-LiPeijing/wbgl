package com.wbglxt.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wbglxt.domain.Focus;
import com.wbglxt.domain.PageBean;
import com.wbglxt.service.FocusService;

/**
 * Created by LiPeijing on 2017/9/13.
 */
public class FocusAction extends ActionSupport implements ModelDriven<Focus> {

    private Focus focus = new Focus();
    @Override
    public Focus getModel() {
        return focus;
    }

    private FocusService focusService;

    public void setFocusService(FocusService focusService) {
        this.focusService = focusService;
    }

    private Integer currPage = 1;

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public String findAll() {
        PageBean<Focus> pageBean = focusService.findPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAll";
    }

    public String saveUI() {
        return "saveUI";
    }

    public String delete() {
        System.out.println("Delete执行了！！！！！！！！！！！");
        focus = focusService.findById(focus.getFid());
        focusService.delete(focus);
        return "deleteSuccess";
    }

    public String save() {
        focusService.save(focus);
        return "saveSuccess";
    }

    public String userFindAll() {
        PageBean<Focus> pageBean = focusService.findPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "userFindAll";
    }
}
