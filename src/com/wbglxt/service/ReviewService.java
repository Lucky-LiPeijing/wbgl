package com.wbglxt.service;

import com.wbglxt.domain.PageBean;
import com.wbglxt.domain.Review;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public interface ReviewService {
    
    Review findById(Integer cid);

    void delete(Review review);

    PageBean<Review> findPage(Integer currPage);

    void save(Review review);
}
