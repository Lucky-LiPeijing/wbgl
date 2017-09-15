package com.wbglxt.service.Imp;

import com.wbglxt.dao.FocusDao;
import com.wbglxt.domain.Focus;
import com.wbglxt.domain.PageBean;
import com.wbglxt.service.FocusService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by LiPeijing on 2017/9/13.
 */
@Transactional
public class FocusServiceImp implements FocusService {
    private FocusDao focusDao;

    public void setFocusDao(FocusDao focusDao) {
        this.focusDao = focusDao;
    }

    @Override
    public Focus findById(int fid) {
        System.out.println("FindById执行了！！！！！！！！！！！！！！" + fid);
        return focusDao.findById(fid);
    }

    @Override
    public void delete(Focus focus) {
        System.out.println("Service delete执行了！！！！！！！！！！！！！！！！");
        focusDao.delete(focus);
    }

    @Override
    public void save(Focus focus) {
        focusDao.save(focus);
    }

    @Override
    public PageBean<Focus> findPage(Integer currPage) {
        PageBean<Focus> pageBean = new PageBean<Focus>();
        pageBean.setCurrPage(currPage);
        int pageSize = 3;
        pageBean.setPageSize(pageSize);
        //总记录数
        int totalCount = focusDao.findCount();
        pageBean.setTotalCount(totalCount);
        //总页数
        double tc = totalCount;
        Double num = Math.ceil(tc/pageSize);
        pageBean.setTotalPage(num.intValue());

        //每页显示数据
        int begin = (currPage - 1) * pageSize;
        List<Focus> list = focusDao.findByPage(begin, pageSize);
        pageBean.setList(list);
        return pageBean;
    }

}
