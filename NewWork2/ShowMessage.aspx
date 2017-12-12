<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShowMessage.aspx.cs" Inherits="NewWork2.Message" %>
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
            <div id="block-comments" class="block first-comment block-comments" rel="books">
              <div class="block-head">
                <div class="head-inner">
                  <h2 class="title">用户留言</h2>
                </div>
              </div>
              <div id='books-list' class="block-content clearfix">
                <form id="form-comment" class="form form-validate form-ajax form-comment" action="/books/add" method="post">
                  <input type='hidden' name='data[b_relatedid]' value='10301' />
                  <div class="row clearfix">
                    <div class="label"> <span class="required">*</span>
                      <label>昵称：</label>
                    </div>
                    <div class="enter">
                      <input id='name' name='data[field0]' class="text w7 required" maxlength="12"  type="text" value="" style="width:100px" runat="server" ClientIDMode="Static"/>
                    </div>
                    <%--<span class="tips" title="名称 必填">名称 必填</span>--%> </div>
                  <div class="row clearfix">
                    <div class="label"> <span class="required">*</span>
                      <label>留言内容：</label>
                    </div>
                    <div class="enter">
                      <textarea id='content' name='data[field1]' class="required  w15 v-length ajax-clear"  value='' rows='4'  style="width:300px" runat="server" ClientIDMode="Static"></textarea>
                    </div>
                    <%--<span class="tips" title="内容必填">内容必填</span>--%> </div>
                  <div class="row clearfix">
                    <div class="label">
                      <label>联系电话：</label>
                    </div>
                    <div class="enter">
                      <input id='tel' name='data[field2]' class="text w7 ajax-clear" maxlength="12"  type="text" value="" style="width:200px" runat="server" ClientIDMode="Static"/>
                    </div>
                  </div>
                  <%--<div class="row clearfix">
                    <div class="label">
                      <label>性别：</label>
                    </div>
                    <div class="enter">
                      <select id='field4' name='data[field4]'>
                        <option value='0' checked>男</option>
                        <option value='1' >女</option>
                      </select>
                    </div>
                  </div>--%>
                  <%--<div class="row clearfix">
                    <div class="label"> <span class="required">*</span>
                      <label>验证码：</label>
                    </div>
                    <div class="enter">
                      <input class="text required w3 v-captcha" name="data[code]" type="text" autocomplete="off" />
                      <input type='hidden' name='formCode' value='687012' />
                    </div>
                    <img id="imgCaptcha"  class="img-captcha" src="images/0.png?0.88711800 1398174248" rel="images/0.png?0.88712500 1398174248" alt="点击刷新验证码" title="点击刷新验证码" /> </div>--%>
                  <div class="row row-submit clearfix">
                    <div class="buttons"> <span class="btnwrap"><span class="clr">.</span>
                        <asp:Button ID="insert" Width="50px" Height="26px" Font-Size="12px" runat="server" Text="提交" OnClick="Button1_Click"/>
                      </span> <!--<span class="btnwrap"><span class="clr">.</span>
                      <button class="btn-inner" type="reset">重设</button>
                      </span>--> </div>
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
            </div>
          </div>
        </div>
        <div class="col-sub">
          <div class="block first-block block-books " id="block-books-42752" rel="42752">
            <div class="block-head">
              <div class="head-inner">
                <h2 class="title">最新留言</h2>
              </div>
            </div>
            <div class="block-content clearfix">
              <div class="item-list">
                <ul class="clearfix">
                    <asp:ListView ID="lvMess" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("name") %></td>：</br>
                                <td><%# Eval("content") %></td></br>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
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
