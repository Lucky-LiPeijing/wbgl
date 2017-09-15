package com.wbglxt.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wbglxt.domain.PageBean;
import com.wbglxt.domain.Review;
import com.wbglxt.service.ReviewService;

/**
 * Created by LiPeijing on 2017/9/13.
 */
public class ReviewAction extends ActionSupport implements ModelDriven<Review> {

    private Review review = new Review();
    @Override
    public Review getModel() {
        return review;
    }

    private ReviewService reviewService;

    public void setReviewService(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    private Integer currPage = 1;

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public String findAll() {
        PageBean<Review> pageBean = reviewService.findPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "findAll";
    }

    public String saveUI() {
        return "saveUI";
    }

    public String delete() {
        System.out.println("Delete执行了！！！！！！！！！！！");
        review = reviewService.findById(review.getCid());
        reviewService.delete(review);
        return "deleteSuccess";
    }

    private int mid;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String save() {
        reviewService.save(review);
        return "saveSuccess";
    }

    public String mfindAll() {
        PageBean<Review> pageBean = reviewService.findPage(currPage);
        ActionContext.getContext().getValueStack().push(pageBean);
        return "mfindAll";
    }
}
