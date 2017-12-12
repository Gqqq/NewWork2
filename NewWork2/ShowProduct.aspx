<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="NewWork2.ShowProduct" %>
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
      <div class="clearfix layout-innerpg ">﻿
        <script type='text/javascript'>var reply_null = '回复不允许为空...';var reply_submitting = '提交中,请稍等...';var reply_failed = '留言提交失败,请重试!';var reply_admin = '管理员回复';var reply_edit = '编辑回复';var reply_delete = '删除回复';var reply_second = '您不能重复回复!';var reply_button_left = '您仔细看看,原来回复按钮在左边...';var reply_confirm = '提交';var reply_cancel = '取消';var reply_deleting = '删除中，请稍等...';var reply_delete_failed = '留言删除失败,请重试!';var delete_r = '删除';var reply_nick_msg = '昵称/内容不能为空';var captcha_enter = '请输入验证码';var come_from = '来自';var posted_at = '提交';var reply = '回复';var nick_length = '昵称必须少于30个字符';var msg_length = '留言最多允许300个字符';</script>
        <asp:Repeater ID="rptShowProducts" runat="server">
                    <ItemTemplate>
          <div class="col-main">
          <div class="main-wrap">
            <div class="block first-block block-products-detail">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">家庭装饰</h2>
                  <div class="links"><a href="Products.aspx?type=1">返回</a></div>
                </div>
              </div>
                        <div class="block-content clearfix">
                <div class="layout-show-withpic clearfix">
                  <div class="col-main">
                    <div class="main-wrap info">
                      <h1><%# Eval("name") %></h1>
                      <div class="details">
                        <dl class="clearfix price">
                          <dt>价格：</dt>
                          <dd><strong class="orange">￥<span class="larger"><%# Eval("money") %></span></strong> </dd>
                        </dl>
                        <dl class="clearfix">
                          <dt>库存：</dt>
                          <dd><span class="green"><%# Eval("num") %></span> </dd>
                        </dl>
                        <dl class="clearfix">
                          <dt>发布时间：</dt>
                          <dd><%# Eval("time","{0:yyyy-MM-dd}") %></dd>
                        </dl>
                      </div>
                      <%--<a class="btnwrap btn-h30 btn-buy" href="/products/order/94107"><span class="btn-inner">购买</span></a>--%> </div>
                  </div>
                  <div class="col-sub">
                    <div id="slide-showpic"> <a id="showpic-picholder" class="picholder" href="images/<%# Eval("image") %>" target="_blank"><img src="images/<%# Eval("image") %>" alt="" rel="273,202" /></a>
                      <div id="showpic-gallery" class="showpic-gallery"> <a class="button prev" href="#">上图</a>
                        <div class="box">
                          <ul>
                            <li class="selected"><a href="images/<%# Eval("image") %>" target="_blank"><img src="images/<%# Eval("image") %>" alt="" /></a></li>
                          </ul>
                        </div>
                        <a class="button next" href="#">下图</a> </div>
                    </div>
                  </div>
                </div>
              </div>
                    
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
            <div class="block block-pro-param">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">产品详细</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <ul class="clearfix pro-param-list">
                </ul>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
            <div class="block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">产品介绍</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="content-text"><p><%# Eval("content") %></p></div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
          </div>
        </div>
          </ItemTemplate>
                </asp:Repeater>
        <div class="col-sub">
          <div class="block first-block block-products " id="block-products-42771" rel="42771">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">产品分类</h2>
                <div class="links"><a class="more" href="Products.aspx?type=1">更多</a></div>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                <ul class="clearfix">
                  <li> <a title="【密度板会议桌系列】" href="Products.aspx?type=1">【密度板会议桌系列】</a> </li>
                  <li> <a title="【办公装饰家具系列】" href="Products.aspx?type=2">【办公装饰家具系列】</a> </li>
                  <li> <a title="【展览展台家具系列】" href="Products.aspx?type=3">【展览展台家具系列】</a> </li>
                  <li> <a title="【橱窗柜台家具系列】" href="Products.aspx?type=4">【橱窗柜台家具系列】</a> </li>
                  <li> <a title="【商业空间家具系列】" href="Products.aspx?type=5">【商业空间家具系列】</a> </li>
                  <li> <a title="【家庭装饰家具系列】" href="Products.aspx?type=6">【家庭装饰家具系列】</a> </li>
                  <li> <a title="【最新推荐家具系列】" href="Products.aspx?type=7">【最新推荐家具系列】</a> </li>
                </ul>
              </div>
            </div>
            <div class="block-foot">
              <div>
                <div></div>
              </div>
            </div>
          </div>
          <div class="block last-block block-diy " id="block-diy-42779" rel="42779">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">联系方式</h2>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="content-text">地 址：新华西路868号汽车西站旁<br />
                电 话：0533-12345672<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0533-12345672<br />
                传 真：0533-9888883<br />
                联系人：白经理</div>
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
