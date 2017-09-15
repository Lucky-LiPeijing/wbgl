package com.wbglxt.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wbglxt.domain.PageBean;
import com.wbglxt.domain.User;
import com.wbglxt.service.UserService;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public class UserAction extends ActionSupport implements ModelDriven<User> {

    private User user = new User();

    @Override
    public User getModel() {
        return user;
    }

    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    private Integer currPage = 1;

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public String login() {
        System.out.println("Login执行了！");

        System.out.println(user.getUsername());

        User existUser = userService.login(user);

        if (existUser == null) {
//            this.addActionError("用户名或密码错误！");
            return INPUT;
        } else {
            if (existUser.getUsername().equals("admin")) {
                return "admin";
            }
            ActionContext.getContext().getSession().put("existUser", existUser);
            return SUCCESS;
        }
    }

    public String findAll() {
        PageBean<User> pageBean = userService.findPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAll";
    }

    public String saveUI() {
        return "saveUI";
    }

    public String save() {
        System.out.println("Save执行了！！！！！！！");

        System.out.println(user.getUid() + "------------------------");

        userService.save(user);

        return "saveSuccess";
    }

    public String adminSave() {
        System.out.println("Save执行了！！！！！！！");

        System.out.println(user.getUsername());

        userService.save(user);

        return "adminSave";
    }

    public String edit() {
        System.out.println("Edit执行了！！！！！！！！！！！！！");
        user = userService.findById(user.getUid());
        return "editSuccess";
    }

    public String update() {
        System.out.println("Update执行了！！！！！！！！！！！！！！！");

        userService.update(user);
        return "updateSuccess";
    }

    public String delete() {
        System.out.println("Delete执行了！！！！！！！！！！！！！！！！！！");
        user = userService.findById(user.getUid());
        userService.delete(user);
        return "deleteSuccess";
    }
}
