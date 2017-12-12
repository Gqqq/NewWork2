<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="NewWork2.Job" %>
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
          <div class="main-wrap">  
            <div id='jobs-list' class="block first-block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">人才招聘</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="list-table">
                  <table class="data">
                    <thead>
                      <tr>
                        <th  class="title">招聘</th>
                        <th>招聘人数</th>
                        <th>招聘类型</th>
                        <th>地区</th>
                        <th>时期</th>
                      </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptJob" runat="server">
                  <ItemTemplate>
                      <tr>
                        <td class="title"><span class="catalog">[ <a href="Job.aspx"><%# Eval("dept") %></a> ]</span> <a href="ShowJob.aspx?id=<%# Eval("id") %>"><%# Eval("job") %></a></td>
                        <td><%# Eval("number") %></td>
                        <td><%# Eval("jobtype") %></td>
                        <td>不限</td>
                        <td><%# Eval("date","{0:yyyy-MM-dd}") %></td>
                      </tr>
                      </ItemTemplate>
              </asp:Repeater>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="block-foot">
                <div>
                  <div>-</div>
                </div>
              </div>
            </div>
              
          </div>
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
