package com.wbglxt.dao.Imp;

import com.wbglxt.dao.ReviewDao;
import com.wbglxt.domain.Review;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
@Transactional
public class ReviewDaoImp extends HibernateDaoSupport implements ReviewDao {

    @Override
    public Review findById(Integer cid) {
        return this.getHibernateTemplate().get(Review.class, cid);
    }

    @Override
    public void delete(Review review) {
        System.out.println("Dao delete执行了！！！！！！！！！！");
        this.getHibernateTemplate().delete(review);
        System.out.println("end_______________________________________");
    }

    @Override
    public int findCount() {
        String hql = "select count(*) from Review ";
        List<Long> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return list.get(0).intValue();
        }
        return 0;
    }

    @Override
    public List<Review> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Review.class);
        List<Review> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
        return list;
    }

    @Override
    public void save(Review review) {
        review.setCtime(new Date());
        this.getHibernateTemplate().save(review);
    }
}
