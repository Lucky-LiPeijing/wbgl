package com.wbglxt.service.Imp;

import com.wbglxt.dao.MicroblogDao;
import com.wbglxt.domain.Microblog;
import com.wbglxt.domain.PageBean;
import com.wbglxt.domain.User;
import com.wbglxt.service.MicroblogService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
@Transactional
public class MicroblogServiceImp implements MicroblogService {

    private MicroblogDao microblogDao;

    public void setMicroblogDao(MicroblogDao microblogDao) {
        this.microblogDao = microblogDao;
    }

    @Override
    public Microblog findById(Integer mid) {
        System.out.println("FindById执行了！！！！！！！！！！！！！！" + mid);
        return microblogDao.findById(mid);
    }

    @Override
    public void delete(Microblog microblog) {
        System.out.println("Service delete执行了！！！！！！！！！！！！！！！！");
        microblogDao.delete(microblog);
    }

    @Override
    public PageBean<Microblog> findPage(Integer currPage) {
        PageBean<Microblog> pageBean = new PageBean<Microblog>();
        pageBean.setCurrPage(currPage);
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        //总记录数
        int totalCount = microblogDao.findCount();
        pageBean.setTotalCount(totalCount);
        //总页数
        double tc = totalCount;
        Double num = Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());

        //每页显示数据
        int begin = (currPage - 1) * pageSize;
        List<Microblog> list = microblogDao.findByPage(begin, pageSize);
        System.out.println("================findPage");
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public List<Microblog> findByUid(int uid) {
        return microblogDao.findByUid(uid);
    }

    @Override
    public void save(Microblog microblog) {
        microblogDao.save(microblog);
    }

    @Override
    public void copy(Microblog microblog) {
        microblogDao.copy(microblog);
    }


}
