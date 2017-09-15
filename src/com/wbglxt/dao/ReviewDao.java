package com.wbglxt.dao;

import com.wbglxt.domain.Review;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/11.
 */
public interface ReviewDao {


    Review findById(Integer cid);

    void delete(Review review);

    int findCount();

    List<Review> findByPage(int begin, int pageSize);

    void save(Review review);
}
