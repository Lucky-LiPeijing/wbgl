package com.wbglxt.service.Imp;

import com.wbglxt.dao.ReviewDao;
import com.wbglxt.domain.PageBean;
import com.wbglxt.domain.Review;
import com.wbglxt.service.ReviewService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
@Transactional
public class ReviewServiceImp implements ReviewService {

    private ReviewDao reviewDao;

    public void setReviewDao(ReviewDao reviewDao) {
        this.reviewDao = reviewDao;
    }

    @Override
    public Review findById(Integer cid) {
        System.out.println("FindById执行了！！！！！！！！！！！！！！" + cid);
        return reviewDao.findById(cid);
    }

    @Override
    public void delete(Review review) {
        System.out.println("Service delete执行了！！！！！！！！！！！！！！！！");
        reviewDao.delete(review);
    }

    @Override
    public PageBean<Review> findPage(Integer currPage) {
        PageBean<Review> pageBean = new PageBean<Review>();
        pageBean.setCurrPage(currPage);
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        //总记录数
        int totalCount = reviewDao.findCount();
        pageBean.setTotalCount(totalCount);
        //总页数
        double tc = totalCount;
        Double num = Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());

        //每页显示数据
        int begin = (currPage - 1) * pageSize;
        List<Review> list = reviewDao.findByPage(begin, pageSize);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void save(Review review) {
        reviewDao.save(review);
    }
}
