<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NewMain.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="NewWork2.Admin.Message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">留言管理</span></div>
        </div>
        <%--<div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="findType" runat="server" ClientIDMode="Static">
                                    <option value="-1">全部</option>
                                    <option value="2">最新资讯</option><option value="1">新闻动态</option>
                                </select>
                            </td>
                            <th width="70">标题:</th>
                            <td><input class="common-text" placeholder="标题" name="keywords" value="" id="findTitle" type="text" runat="server" ClientIDMode="Static"/>
                            </td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit" runat="server" onserverclick="Unnamed_ServerClick"/></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>--%>
        <div class="result-wrap">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>昵称</th>
                            <th>留言内容</th>
                            <th>联系电话</th>
                            <th>操作</th>
                        </tr>
                        <asp:ListView ID="lvMessage" runat="server" OnItemDeleting="lvMessage_ItemDeleting">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("id") %></td>
                                    <td><%# Eval("name") %></td>
                                    <td><%# Eval("content") %></td>
                                    <td><%# Eval("tel") %></td>
                                    <td>
                                        <asp:LinkButton ID="btnDelete" runat="server" CssClass="link-del" CommandName="Delete">删除</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </table>
                    <div class="list-page"> 2 条 1/1 页</div>
                </div>
        </div>
</asp:Content>
