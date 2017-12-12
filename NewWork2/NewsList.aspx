<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="NewWork2.NewsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta content=" " name="keywords" />
<meta content="" name="description" />
<link rel="stylesheet" type="text/css" href="/style/css/style.css" />
<script type="text/javascript" src="/style/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/style/js/lang-chi.min.js"></script>
<script type="text/javascript" src="/style/js/common.min.js"></script>
<script type="text/javascript" src="/style/js/overlay.min.js"></script>

    <style type="text/css">
        #item{
            margin-right:20px;
            margin-bottom:20px;
            text-align:center; 
        }
        #page ul li {
        float:left;padding-right:8px; list-style:none;
        }
        #page {
        text-align:center;
        padding-left:120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="doc">
      <div id="bd">
    <div id="innerpg" class="bd-inner">
      <div class="clearfix layout-innerpg ">
        <div class="col-main">
          <div class="main-wrap">
            <div id='articles-list' class="block first-block">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">网站新闻</h2>
                </div>
              </div>
              <div class="block-content clearfix">
                 <div class="list-table">
                  <table class="data">
                    <thead>
                      <tr>
                        <th class="title">分类/标题</th>
                        <th class="time">发布</th>
                      </tr>
                    </thead>  
                    <tbody>
                        <asp:Repeater ID="rptNews" runat="server">
                            <ItemTemplate>
                              <tr>
                            <td class="title"><span class="catalog">[ <a href="NewsList.aspx?type=1" title="新闻中心">新闻中心</a> ]</span> <a href="ShowNews.aspx?id=<%# Eval("id") %>" target="_blank" title="家庭装修的注意事项1"><span class="style1"><%# Eval("title") %></span></a></td>
                            <td><%# Eval("datetime","{0:yyyy-MM-dd}") %></td>
                        </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                  </table>
                </div>
                <div class="pager clearfix">
                        <div id="page">
               <ul> 
               <li>
                   <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">首页</asp:LinkButton>
               </li>
               <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">上一页</asp:LinkButton></li>
               <li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">下一页</asp:LinkButton> </li>
               <li><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">尾页</asp:LinkButton></li>  
               
               <li> <span>当前页</span>
                <asp:Label ID="lbPageIndex" runat="server" Text="1"></asp:Label>|
                <asp:Label ID="lbPageCount" runat="server" Text="100"></asp:Label>
               </li>
               </ul>
                </div>
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
                <div class="links"><a class="more" href="NewsList.aspx?type=1">更多</a></div>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                <ul class="clearfix">
                  <li> <a title="新闻中心" href="NewsList.aspx?type=1">新闻中心</a> </li>
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
