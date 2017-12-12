<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShowJob.aspx.cs" Inherits="NewWork2.ShowJob" %>
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
        <div class="col-main">
            <asp:Repeater ID="rptShowjob" runat="server">
                <ItemTemplate> 
          <div class="main-wrap">
            <div id='jobs-view' class="block first-block block-offer-detail">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">查看职位</h2>
                  <div class="links"><a href="Job.aspx">更多</a></div>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="detail-head clearfix">
                  <h1 class="title">招聘：<span><%# Eval("job") %></span></h1>
                  <div class="date">更新时间：<%# Eval("date","{0:yyyy-MM-dd}") %></div>
                </div>
                <div class="detail-list">
                  <div class="item">部门：<%# Eval("dept") %></div>
                  <div class="item">经验：<%# Eval("exp") %></div>
                  <div class="item">招聘人数：<%# Eval("number") %></div>
                  <div class="item">招聘类型：<%# Eval("jobtype") %></div>
                  <div class="item">教育：<%# Eval("xueli") %></div>
                  <div class="item">地区：不限</div>
                </div>
                <div class="detail-list">
                  <div class="item">联系人：白经理</div>
                  <div class="item">电话：0376-8008208820</div>
                  <div class="item">邮箱：512174153@163.com</div>
                  <%--<a class="btnwrap btn-h30 btn-resume" href="/jobs/apply/15425" title="提交简历"><span class="btn-inner">提交简历</span></a>--%> </div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
            <div id='jobs-1' class="block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">描述</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="content-text"> <%# Eval("conten") %> </div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
            <div id='jobs-2' class="block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">需求</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="content-text"><%# Eval("need") %></div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
          </div>
                    </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-sub">
          <div class="block first-block block-products " id="block-products-42772" rel="42772">
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
        </div>
      </div>
    </div>
  </div>
        </div>
</asp:Content>
