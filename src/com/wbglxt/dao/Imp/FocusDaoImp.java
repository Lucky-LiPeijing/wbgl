package com.wbglxt.dao.Imp;

import com.wbglxt.dao.FocusDao;
import com.wbglxt.domain.Focus;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
@Transactional
public class FocusDaoImp extends HibernateDaoSupport implements FocusDao {

    @Override
    public Focus findById(int fid) {
        return this.getHibernateTemplate().get(Focus.class, fid);
    }

    @Override
    public void delete(Focus focus) {
        System.out.println("Dao delete执行了！！！！！！！！！！");
        this.getHibernateTemplate().delete(focus);
        System.out.println("end_______________________________________");
    }

    @Override
    public int findCount() {
        String hql = "select count(*) from Focus ";
        List<Long> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return list.get(0).intValue();
        }
        return 0;
    }

    @Override
    public List<Focus> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Focus.class);
        List<Focus> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
        return list;
    }

    @Override
    public void save(Focus focus) {
        this.getHibernateTemplate().save(focus);
    }
}
