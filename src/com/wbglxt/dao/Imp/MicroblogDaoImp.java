package com.wbglxt.dao.Imp;

import com.wbglxt.dao.MicroblogDao;
import com.wbglxt.domain.Microblog;
import com.wbglxt.domain.User;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
@Transactional
public class MicroblogDaoImp extends HibernateDaoSupport implements MicroblogDao {

    @Override
    public Microblog findById(Integer mid) {
        return this.getHibernateTemplate().get(Microblog.class, mid);
    }

    @Override
    public void delete(Microblog microblog) {
        System.out.println("Dao delete执行了！！！！！！！！！！");
        this.getHibernateTemplate().delete(microblog);
        System.out.println("end_______________________________________");
    }

    @Override
    public int findCount() {
        String hql = "select count(*) from Microblog ";
        List<Long> list = this.getHibernateTemplate().find(hql);
        if (list.size() > 0) {
            return list.get(0).intValue();
        }
        return 0;
    }

    @Override
    public List<Microblog> findByPage(int begin, int pageSize) {
        DetachedCriteria criteria = DetachedCriteria.forClass(Microblog.class);
        List<Microblog> list = this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
        System.out.println("-----------findByPage");
        return list;
    }

    @Override
    public List<Microblog> findByUid(int uid) {
        String hql = "from Microblog where uid = ? ";
        List<Microblog> list = this.getHibernateTemplate().find(hql, uid);
        if (list.size() > 0) {
            return list;
        }
        return null;
    }

    @Override
    public void save(Microblog microblog) {
        microblog.setUid(2);
        microblog.setMtime(new Date());
        this.getHibernateTemplate().save(microblog);
    }

    int count = 100;
    @Override
    public void copy(Microblog microblog) {
        microblog.setMcontent("转发：" + microblog.getMcontent().toString());
        microblog.setMtime(new Date());
        microblog.setUid(2);
        microblog.setMid(count++);
        this.getHibernateTemplate().save(microblog);
    }


}
