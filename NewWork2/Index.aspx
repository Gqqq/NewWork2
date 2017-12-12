<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="NewWork2.Index" %>
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
    <div id="homepg" class="bd-inner">
      <div class="clearfix layout-home three-cols">
        <div class="col-main">
          <div class="main-wrap">
            <div class="block first-block block-diy " id="block-diy-42759" rel="42759">
              <div class="block-head">
                <div class="head-inner">
                    <h2 class="title">公司介绍</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                <div class="content-text">
                  <p> <img alt="" align="left" src="images/0411405393092721.gif" width="169" height="111" />杭州某某办公家具公司是一家系统办公家具公司，系统是产品齐全，系统是服务全程，节约客户宝贵时间，勇担责任，引导客户做出合理决策。本公司主要生产课桌椅、阶梯椅、剧场椅、橱柜，餐桌、屏风、钢架床，学生公寓家俱，办公家俱等。产品适用于政府机关、学校、宾馆、酒店、家庭厨房，医院、银行等。公司拥有高效的团队，科学的管理，先进的设备，完美的设计，结合优质的材料，…… </p>
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
        <div class="col-sub">
          <div class="block first-block block-products " id="block-products-42769" rel="42769">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">产品分类</h2>
                <div class="links"><a class="more" href="Products.aspx?type=1">更多</a></div>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                <ul class="clearfix">
                    <%--<asp:Repeater ID="rptIndex" runat="server">
                        <ItemTemplate>--%>
                  <li> <a title="【密度板会议桌系列】" href="Products.aspx?type=1">【密度板会议桌系列】</a> </li>
                       <%-- </ItemTemplate>
                    </asp:Repeater>--%>
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
        <div class="col-extra">
          <div class="block first-block block-articles " id="block-articles-42760" rel="42760">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">最新资讯</h2>
                <div class="links"><a class="more" href="NewsList.aspx?type=1">更多</a></div>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                <ul class="clearfix">
                    <asp:Repeater ID="rptNews" runat="server">
                        <ItemTemplate>
                            <li>
                                <a href="ShowNews.aspx?id=<%# Eval("id") %>"><%# Eval("title") %><em class="date"><%# Eval("datetime","{0:yyyy-MM-dd}") %></em></a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                  <%--<li  > <a title="家庭装修的注意事项2" href="ShowNews.aspx">家庭装修的注意事项2</a><em class="date">2012-11-12</em></li>
                  <li  > <a title="装修行业家庭装修完全手..." href="ShowNews.aspx">装修行业家庭装修完全手...</a><em class="date">2012-11-12</em></li>
                  <li  > <a title="家庭装修只交3项费用" href="ShowNews.aspx">家庭装修只交3项费用</a><em class="date">2012-11-12</em></li>
                  <li  > <a title="特别策划 &ldquo;家装企..." href="ShowNews.aspx">特别策划 &ldquo;家装企...</a><em class="date">2012-11-12</em></li>
                  <li  > <a title="厦门多家装修公司设计集..." href="ShowNews.aspx">厦门多家装修公司设计集...</a><em class="date">2012-11-12</em></li>
                  <li  > <a title="浅析装修木门时该选用什..." href="ShowNews.aspx">浅析装修木门时该选用什...</a><em class="date">2012-11-12</em></li>--%>
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
        <div class="main-layout clearfix">
          <div class="block first-block block-products " id="block-products-42768" rel="42768">
            <div class="block-head">
              <div class="head-inner clearfix">
                <h2 class="title">最新产品</h2>
                <div class="links"><a class="more" href="Products.aspx">更多</a></div>
              </div>
            </div>
              
            <div class="block-content clearfix">
              <div class="sys-scroll-left-wrap">
                <div class="sys-scroll-left" id="sys-scroll-left-42768">
                  <table>
                    <tr>
                      <td id="sys-scroll-left-42768-a" class="sys-scroll-left-a"><table>
                          <tr>
                              <asp:Repeater ID="rptImages" runat="server">
                                  <ItemTemplate>
                            <td><div class="thumb"> <a href="ShowProduct.aspx?id=<%# Eval("id") %>" title="家庭装饰"><img src="images/<%# Eval("image") %>"/></a></div>
                            <div class="title"><a><%# Eval("name") %></a></div></td>
                                 </ItemTemplate>            
                                 </asp:Repeater>
                            <%--<td><div class="thumb"> <a href="products/zuixintuijian/94106.html" title="办公装饰"><img src="images/0411405867259917.jpg" alt="办公装饰" /></a> </div>
                              <div class="title"><a href="products/zuixintuijian/94106.html" title="办公装饰">办公装饰</a></div></td>
                            <td><div class="thumb"> <a href="products/zuixintuijian/94105.html" title="办公装饰"><img src="images/0411410048316488.jpg" alt="办公装饰" /></a> </div>
                              <div class="title"><a href="products/zuixintuijian/94105.html" title="办公装饰">办公装饰</a></div></td>
                            <td><div class="thumb"> <a href="products/zuixintuijian/94104.html" title="酒店宾馆"><img src="images/0411410733494500.jpg" alt="酒店宾馆" /></a> </div>
                              <div class="title"><a href="products/zuixintuijian/94104.html" title="酒店宾馆">酒店宾馆</a></div></td>
                            <td><div class="thumb"> <a href="products/zuixintuijian/94103.html" title="橱窗柜台"><img src="images/0411410884549540.jpg" alt="橱窗柜台" /></a> </div>
                              <div class="title"><a href="products/zuixintuijian/94103.html" title="橱窗柜台">橱窗柜台</a></div></td>
                            <td><div class="thumb"> <a href="products/zuixintuijian/94102.html" title="家庭装饰"><img src="images/0411411045653819.jpg" alt="家庭装饰" /></a> </div>
                              <div class="title"><a href="products/zuixintuijian/94102.html" title="家庭装饰">家庭装饰</a></div></td>
                            <td><div class="thumb"> <a href="products/zuixintuijian/94101.html" title="家庭装饰"><img src="images/0411412045769275.jpg" alt="家庭装饰" /></a> </div>
                              <div class="title"><a href="products/zuixintuijian/94101.html" title="家庭装饰">家庭装饰</a></div></td>
                            <td><div class="thumb"> <a href="products/zuixintuijian/94100.html" title="家庭装修"><img src="images/0411412257885529.jpg" alt="家庭装修" /></a> </div>
                              <div class="title"><a href="products/zuixintuijian/94100.html" title="家庭装修">家庭装修</a></div></td>--%>
                          </tr>
                        </table></td>
                      <td id="sys-scroll-left-42768-b" class="sys-scroll-left-b"></td>
                    </tr>
                  </table>     
                </div>
              </div>
              <script type="text/javascript">
			sysScrollLeft('sys-scroll-left-42768');
		</script>
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
