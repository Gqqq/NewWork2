<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShowNews.aspx.cs" Inherits="NewWork2.ShowNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta content=" " name="keywords" />
<meta content="" name="description" />
<link rel="stylesheet" type="text/css" href="/style/css/style.css" />
<script type="text/javascript" src="/style/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/style/js/lang-chi.min.js"></script>
<script type="text/javascript" src="/style/js/common.min.js"></script>
<script type="text/javascript" src="/style/js/overlay.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="doc">
    <div id="bd">
    <div id="innerpg" class="bd-inner">
      <div class="clearfix layout-innerpg ">
        <style>
<!--
	.pages2 {height:30px;list-style-type:none;margin-left:20px;}
	.pages2 li {width:30px;text-align:center;float:left;}
	.pages2 li.bgcolor {background:#CCC;color:white;}
-->
</style>
          <asp:Repeater ID="rptShowNews" runat="server">
                        <ItemTemplate>
        <div class="col-main">
            
          <div class="main-wrap">
            <div id='article-view' class="block first-block block-article-view">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">新闻中心</h2>
                  <div class="links"><a href="NewsList.aspx">返回列表</a></div>
                </div>
              </div>
              <div class="block-content clearfix">
                  
                <div class="article-head">
                  <h1 class="title"><%# Eval("title") %></h1>
                  <div class="meta"> <span class="item">分类：新闻中心</span> <%--<span class="item">作者：<span class="yellow"></span></span>--%> <%--<span class="item">来源：</span>--%> <span class="item">发布：<span class="grey"><%# Eval("datetime","{0:yyyy-MM-dd}") %></span></span> </div>
                </div>
                <div class="article-content clearfix" style="padding-top:20px;"> <%--[大字体&nbsp;中字体&nbsp;小字体]<br />--%>
                    <img src="images/<%# Eval("images") %>">
                            <p><%# Eval("content") %></p>
                        
                </div>
                <div class="pages2"></div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
          
            <!--<div id="block-comments" class="block block-comments" rel="articles">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">评论</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <form id="form-comment" class="form form-validate form-ajax form-comment" action="/articles/add" method="post">
                  <div class="row clearfix">
                    <div class="label"> <span class="required">*</span>
                      <label>昵称：</label>
                    </div>
                    <div class="enter">
                      <input class="text required w5" name="data[field0]" type="text" maxlength="12" id="field0"  />
                      <input type="hidden" name="data[field2]" value="50603" />
                    </div>
                  </div>
                  <div class="row clearfix">
                    <div class="label"> <span class="required">*</span>
                      <label>内容：</label>
                    </div>
                    <div class="enter">
                      <textarea class="required w15 v-length ajax-clear" rows="4" rec="8,500" name="data[field1]" id="field1"></textarea>
                    </div>
                    <span class="tips" title="允许8-500个字符">允许8-500个字符</span> </div>
                  <div class="row clearfix">
                    <div class="label"> <span class="required">*</span>
                      <label>验证码：</label>
                    </div>
                    <div class="enter">
                      <input class="text required w3 v-captcha" name="data[code]" type="text" />
                    </div>
                    <img class="img-captcha" src="images/0.png?0.36908200 1398174158" alt="点击刷新验证码" title="点击刷新验证码" /> </div>
                  <div class="row row-submit clearfix">
                    <div class="buttons"> <span class="btnwrap"><span class="clr">.</span>
                      <button class="btn-inner" type="submit">提交</button>
                      </span> <span class="btnwrap"><span class="clr">.</span>
                      <button class="btn-inner" type="reset">重设</button>
                      </span> </div>
                  </div>
                </form>
                <ol id="list-comments" class="commentslist clearfix">
                </ol>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>-->
          </div>
        </div>
            </ItemTemplate>
                    </asp:Repeater>
        <div class="col-sub">
          <div class="block first-block " id="block-slide-42778" rel="42778">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">推荐产品</h2>
              </div>
            </div>
            <div id="block-content-42778" class="block-content clearfix">
              <div class="content-text clearfix">
                <object type="application/x-shockwave-flash" data="img/pixviewer.swf?xml=<data><config><autoPlayTime>5</autoPlayTime></config><channel><item><link>/products/view/zuixintuijian/94107.html</link><image>images/0411414588030794.jpg</image><title>家庭装饰</title></item><item><link>/products/view/zuixintuijian/94106.html</link><image>images/0411415472144171.jpg</image><title>办公装饰</title></item><item><link>/products/view/zuixintuijian/94105.html</link><image>images/0411415633258440.jpg</image><title>办公装饰</title></item><item><link>/products/view/zuixintuijian/94104.html</link><image>images/0411415812331503.jpg</image><title>酒店宾馆</title></item><item><link>/products/view/zuixintuijian/94103.html</link><image>images/0411420489498338.jpg</image><title>橱窗柜台</title></item></channel></data>"  width="230" height="150">
                  <param name="movie" id="vcastr3" value="img/pixviewer.swf?xml=<data><config><autoPlayTime>5</autoPlayTime></config><channel><item><link>/products/view/zuixintuijian/94107.html</link><image>images/0411414588030794.jpg</image><title>家庭装饰</title></item><item><link>/products/view/zuixintuijian/94106.html</link><image>images/0411415472144171.jpg</image><title>办公装饰</title></item><item><link>/products/view/zuixintuijian/94105.html</link><image>images/0411415633258440.jpg</image><title>办公装饰</title></item><item><link>/products/view/zuixintuijian/94104.html</link><image>images/0411415812331503.jpg</image><title>酒店宾馆</title></item><item><link>/products/view/zuixintuijian/94103.html</link><image>images/0411420489498338.jpg</image><title>橱窗柜台</title></item></channel></data>" />
                  <param name="wmode" value="opaque" />
                </object>
              </div>
            </div>
            <div class="block-foot">
              <div>
                <div></div>
              </div>
            </div>
          </div>
          <div class="block last-block block-articles " id="block-articles-42770" rel="42770">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">文章分类</h2>
                <div class="links"><a class="more" href="NewsList.aspx">更多</a></div>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                <ul class="clearfix">
                  <li> <a title="新闻中心" href="NewsList.aspx">新闻中心</a> </li>
                </ul>
              </div>
            </div>
            <div class="block-foot">
              <div>
                <div></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
        </div>
</asp:Content>
