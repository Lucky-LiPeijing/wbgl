<%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/9/13
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>Face Time</title>
  <meta charset="utf-8">
  <meta name="renderer" content="webkit|ie-comp|ie-stand">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <LINK rel="Bookmark" href="favicon.ico">
  <LINK rel="Shortcut Icon" href="favicon.ico"/>
  <!--[if lt IE 9]>
  <script type="text/javascript" src="${ pageContext.request.contextPath }/staticRes/js/html5shiv.js"></script>
  <script type="text/javascript" src="${ pageContext.request.contextPath }/staticRes/js/respond.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" type="text/css" href="plugin/h-ui/css/H-ui.min.css"/>
  <link rel="stylesheet" type="text/css" href="plugin/Hui-iconfont/1.0.8/iconfont.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/common.css"/>
  <link rel="stylesheet" type="text/css" href="plugin/pifu/pifu.css"/>
  <!--[if lt IE 9]>
  <link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css"/>
  <![endif]-->
  <script type="application/x-javascript"> addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
  }, false);
  function hideURLbar() {
      window.scrollTo(0, 1);
  }
  function showSide() {
      $('.navbar-nav').toggle();
  }</script>
  <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"></a><a href="#" class="bds_tsina" data-cmd="tsina"></a><a href="#" class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren" data-cmd="renren"></a><a href="#" class="bds_weixin" data-cmd="weixin"></a></div>
  <script>
      window._bd_share_config= {"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},
          "image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":
              {"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};
      with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src=
          'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
  </script>
</head>
<body>
<header class="navbar-wrapper">
  <div class="navbar navbar-fixed-top">
    <div class="container cl">
      <a class="navbar-logo hidden-xs" href="${ pageContext.request.contextPath }/index.jsp">
        <img class="logo" src="${ pageContext.request.contextPath }/img/logo.png" alt="Face Time"/>
      </a>
      <a class="logo navbar-logo-m visible-xs" href="${ pageContext.request.contextPath }/index.jsp">Face Time</a>
      <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:void(0);"
         onclick="showSide();">&#xe667;</a>
      <nav class="nav navbar-nav nav-collapse w_menu" role="navigation">
        <ul class="cl">
          <li class="active"><a href="${ pageContext.request.contextPath }/index.jsp" data-hover="首页">首页</a></li>
          <li><a href="${ pageContext.request.contextPath }/about.jsp" data-hover="关于我">关于我</a></li>
          <li><a href="${ pageContext.request.contextPath }/mood.jsp" data-hover="碎言碎语">碎言碎语</a></li>
          <li><a href="${ pageContext.request.contextPath }/article.jsp" data-hover="学无止尽">学无止尽</a></li>
          <li><a href="${ pageContext.request.contextPath }/board.jsp" data-hover="留言板">留言板</a></li>
        </ul>
      </nav>
      <nav class="navbar-nav navbar-userbar hidden-xs hidden-sm " style="top: 0;">
        <ul class="cl">
          <li class="userInfo dropDown dropDown_hover">
            <!--<a href="javascript:;" ><img class="avatar radius" src="img/40.jpg" alt="丶似浅 "></a>
            <ul class="dropDown-menu menu radius box-shadow">
                <li><a href="/app/loginOut">退出</a></li>
            </ul>-->
            欢迎！<s:property value="#session.existUser.username"/>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</header>

<section class="container pt-20">
  <!--<div class="Huialert Huialert-info"><i class="Hui-iconfont">&#xe6a6;</i>成功状态提示</div>-->
  <!--left-->
  <div class="col-sm-9 col-md-9">
    <!--滚动图-->
    <div class="slider_main">
      <div class="slider">
        <div class="bd">
          <ul>
            <li><a href="#" target="_blank"><img
                    src="${ pageContext.request.contextPath }/img/temp/banner1.jpg"></a></li>
            <li><a href="#" target="_blank"><img
                    src="${ pageContext.request.contextPath }/img/temp/banner8.png"></a></li>
          </ul>
        </div>
        <ol class="hd cl dots">
          <li>1</li>
          <li>2</li>
        </ol>
        <a class="slider-arrow prev" href="javascript:void(0)"></a>
        <a class="slider-arrow next" href="javascript:void(0)"></a>
      </div>
    </div>
    <div>
      <s:form id="saveForm" action="microblog_save" method="post" namespace="/" theme="simple">
        <s:hidden name="mid" value="%{model.mid}"/>
        <h3>微博：</h3>
        <s:textarea name="mcontent" rows="10" cols="100" enable="falsedd"/><br />
        用户编号：<s:property value="#session.existUser.uid"/>
      </s:form>
      <a href="javascript:document.getElementById('saveForm').submit()"><b>发表</b></a>
      <br/>
      <br>
    </div>
    <div class="mt-20 bg-fff box-shadow radius mb-5">
      <div class="tab-category">
        <a href=""><strong class="current">最新发布</strong></a>
      </div>
    </div>
    <s:iterator value="list" var="d">
      <div style="margin: auto; text-align: center; solid-color: #000 1px solid; background: gainsboro; font-size: 99px">
        <table style="margin: auto; text-align: center; ">
          <thead>
          <tr>
            <th width="450"><b>微博编号:<s:property value="#d.mid"/></b></th>
            <th width="450"><b>用户编号:<s:property value="#d.uid"/></b></th>
            <th width="450"><b>时间:<s:property value="#d.mtime"/></b></th>
          </tr>
          </thead>
          <p style="text-align: center; font-size: 30px" id="p">
            <s:property value="#d.mcontent"/>
          </p>
          </tbody>

        </table>
      </div>
      <div>
        <a href="${ pageContext.request.contextPath }/review_saveUI.action?mid=<s:property value="#d.mid"/>&uid=<s:property value="#session.existUser.uid"/>"><img src="img/review.png"></a>
        <a href="${ pageContext.request.contextPath }/microblog_copy.action?mcontent=<s:property value="#d.mid"/>">转发</a>
      </div>
      <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
        <a class="bds_qzone">QQ空间</a>
        <a class="bds_tsina">新浪微博</a>
        <a class="bds_tqq">腾讯微博</a>
        <a class="bds_renren">人人网</a>
        <span class="bds_more">更多</span>
      </div>
      <script type="text/javascript" id="bdshare_js" data="type=slide&mini=1" ></script>
      <script type="text/javascript" id="bdshell_js"></script>
      <script type="text/javascript">
          document.getElementById('bdshell_js').src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
      </script>
      <br/><br/>
    </s:iterator>

    <table border="0" cellspacing="0" cellpadding="0" width="900px">
      <tr>
        <td align="right">
          <span>第<s:property value="currPage"/>/<s:property value="totalPage"/> 页</span>
          <span>总记录数<s:property value="totalCount"/> &nbsp;每页显示<s:property value="pageSize"/> </span>
          <span>
                <s:if test="currPage != 1">
                    <a href="${ pageContext.request.contextPath }/microblog_findHome.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/microblog_findHome.action?currPage=<s:property value="currPage-1" />">[上一页]</a>&nbsp;&nbsp;
                </s:if>
                <s:if test="currPage != totalPage">
                    <a href="${ pageContext.request.contextPath }/microblog_findHome.action?currPage=<s:property value="currPage+1" />">[下一页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/microblog_findHome.action?currPage=<s:property value="totalPage" />[尾页]</a>&nbsp;&nbsp;
                </s:if>
            </span>
        </td>
    </tr>
</table>
    </div>

    <!--right-->
    <div class=" col-sm-3 col-md-3">

            <!--站点声明-->
        <div class="panel panel-default mb-20">
            <div class="panel-body">
                <i class="Hui-iconfont" style="float: left;">&#xe62f;&nbsp;</i>
                <div class="slideTxtBox">
                    <div class="bd">
                        <ul>
                            <li><a href="javascript:void(0);">Face Time试版上线，欢迎访问</a></li>
                            <li><a href="javascript:void(0);">内容如有侵犯，请立即联系管理员删除</a></li>
                            <li><a href="javascript:void(0);">本站内容仅供学习和参阅，不做任何商业用途</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

            <!--博主信息-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>站长信息</strong></a>
            </div>
            <div class="tab-category-item">
                <ul class="index_recd">
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe653;</i>姓名：李佩京</li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe70d;</i>职业：学生</li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe63b;</i>邮箱：<a
                            href="mailto:623620767@qq.com">623620767@qq.com</a></li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe671;</i>定位：山西 &middot; 太原</li>
                </ul>
            </div>
        </div>


            <!--热门推荐-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>热门推荐</strong></a>
            </div>
            <div class="tab-category-item">
                <ul class="index_recd">
                    <li>
                        <a href="#">阻止a标签href默认跳转事件</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
                    </li>
                    <li>
                        <a href="#">PHP面试题汇总</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
                    </li>
                    <li>
                        <a href="#">阻止a标签href默认跳转事件</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
                    </li>
                    <li>
                        <a href="#">阻止a标签href默认跳转事件</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
                    </li>
                    <li>
                        <a href="#">PHP面试题汇总</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
                    </li>
                </ul>
            </div>
        </div>

            <!--点击排行-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>点击排行</strong></a>
            </div>
            <div class="tab-category-item">
                <ul class="index_recd clickTop">
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                    </li>
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                    </li>
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                    </li>
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                    </li>
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                    </li>
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                    </li>
                    <li>
                        <a href="#">AJAX的刷新和前进后退问题解决</a>
                        <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                    </li>
                </ul>
            </div>
        </div>

            <!--友情链接-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>隔壁邻居</strong></a>
            </div>
            <div class="tab-category-item">
                <span><i class="Hui-iconfont">&#xe6f1;</i><a href="http://www.baidu.com" class="btn-link">百度</a></span>
                <span><i class="Hui-iconfont">&#xe6f1;</i><a href="http://www.taobao.com" class="btn-link">淘宝</a></span>
                <span><i class="Hui-iconfont">&#xe6f1;</i><a href="http://www.qq.com" class="btn-link">腾讯</a></span>
                <span><i class="Hui-iconfont">&#xe6f1;</i><a href="http://www.imooc.com" class="btn-link">慕课网</a></span>
                <span><i class="Hui-iconfont">&#xe6f1;</i><a href="#" class="btn-link">h-ui</a></span>
            </div>
        </div>
            <!--最近访客-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>最近访客</strong></a>
            </div>
            <div class="panel-body">
                <ul class="recent">
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                    <div class="item"><img src="${ pageContext.request.contextPath }img/40.jpg" alt=""></div>
                </ul>
            </div>
        </div>

            <!--分享-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>站点分享</strong></a>
            </div>
            <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
                <a class="bds_qzone">QQ空间</a>
                <a class="bds_tsina">新浪微博</a>
                <a class="bds_tqq">腾讯微博</a>
                <a class="bds_renren">人人网</a>
                <span class="bds_more">更多</span>
            </div>
            <script type="text/javascript" id="bdshare_js" data="type=slide&mini=1" ></script>
            <script type="text/javascript" id="bdshell_js"></script>
            <script type="text/javascript">
                document.getElementById('bdshell_js').src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
            </script>
        </div>


  </div>

</section>
<footer class="footer mt-20">
  <div class="container-fluid" id="foot">
    <p>Copyright &copy; 2017 李佩京
    </p>
  </div>
</footer>
<script type="text/javascript" src="${ pageContext.request.contextPath }plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }js/common.js"></script>
<script> $(function () {
    $(window).on("scroll", backToTopFun);
    backToTopFun();
}); </script>
<script type="text/javascript"
        src="${ pageContext.request.contextPath }/plugin/jquery.SuperSlide/2.1.1/jquery.SuperSlide.min.js"></script>

<script>
    $(function () {
//幻灯片
        jQuery(".slider_main .slider").slide({
            mainCell: ".bd ul",
            titCell: ".hd li",
            trigger: "mouseover",
            effect: "leftLoop",
            autoPlay: true,
            delayTime: 700,
            interTime: 2000,
            pnLoop: true,
            titOnClassName: "active"
        })
//tips
        jQuery(".slideTxtBox").slide({
            titCell: ".hd ul",
            mainCell: ".bd ul",
            autoPage: true,
            effect: "top",
            autoPlay: true
        });
//标签
        $(".tags a").each(function () {
            var x = 9;
            var y = 0;
            var rand = parseInt(Math.random() * (x - y + 1) + y);
            $(this).addClass("tags" + rand)
        });

        $("img.lazyload").lazyload({failurelimit: 3});
    });

</script>

</body>
</html>

