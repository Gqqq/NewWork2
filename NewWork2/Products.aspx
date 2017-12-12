<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="NewWork2.Products" %>
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
        <div class="col-main">
          <div class="main-wrap">
            <div class="block first-block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">产品管理</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <ul class="clearfix list-gallery">
                    <asp:Repeater ID="rptProducts" runat="server">
                        <ItemTemplate>
                  <li>
                    <div class="thumb"><a href="ShowProduct.aspx?id=<%# Eval("id") %>" title="家庭装饰"><img src="images/<%# Eval("image") %>" alt="家庭装饰" /></a></div>
                    <div class="des">
                    <p class="default"><a href="ShowProduct.aspx"><%# Eval("name") %></a></p>
                    </div>
                  </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
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
                    <%--<asp:Repeater ID="rptNewProducts" runat="server">
                        <ItemTemplate>--%>
                          <li> <a title="【密度板会议桌系列】" href="Products.aspx?type=1">【密度板会议桌系列】</a> </li>
                          <li> <a title="【办公装饰家具系列】" href="Products.aspx?type=2">【办公装饰家具系列】</a> </li>
                          <li> <a title="【展览展台家具系列】" href="Products.aspx?type=3">【展览展台家具系列】</a> </li>
                          <li> <a title="【橱窗柜台家具系列】" href="Products.aspx?type=4">【橱窗柜台家具系列】</a> </li>
                          <li> <a title="【商业空间家具系列】" href="Products.aspx?type=5">【商业空间家具系列】</a> </li>
                          <li> <a title="【家庭装饰家具系列】" href="Products.aspx?type=6">【家庭装饰家具系列】</a> </li>
                          <li> <a title="【最新推荐家具系列】" href="Products.aspx?type=7">【最新推荐家具系列】</a> </li>
                            <%--</ItemTemplate>
                    </asp:Repeater>--%>
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
                联系人：黄经理</div>
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
