<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NewMain.Master" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="NewWork2.Admin.Design" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">新闻管理</span></div>
        </div>
        <div class="search-wrap">
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
        </div>
        <div class="result-wrap">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>标题</th>
                            <th>更新时间</th>
                            <th>栏目</th>
                            <th>操作</th>
                        </tr>
                        
                        <asp:ListView ID="lvNewList" runat="server" OnItemEditing="lvNewList_ItemEditing" OnItemCanceling="lvNewList_ItemCanceling" OnItemUpdating="lvNewList_ItemUpdating" OnItemDeleting="lvNewList_ItemDeleting">
                            <ItemTemplate>
                             <tr>
                            <td><%# Eval("id") %></td>
                            <td><a target="_blank" href="#"><%# Eval("title") %></a></td>
                            <td><%# Eval("datetime") %></td>
                            <td><%# Eval("type") %></td>
                            <td>
                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="link-update" CommandName="Edit">编辑</asp:LinkButton>
                                <a href="Insert.aspx?action=edit&id=<%# Eval("id") %>" target="_blank">编辑详情</a>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="link-del" CommandName="Delete">删除</asp:LinkButton>
                            </td>
                        </tr>
                            </ItemTemplate>
                            <EditItemTemplate>
                            <tr>
                            <td><%# Eval("id") %></td>
                            <td><asp:TextBox ID="tbTitle" runat="server" Text='<%# Bind("title") %>'></asp:TextBox></td>
                            <td><asp:TextBox ID="tbDatetime" runat="server" Text='<%# Bind("datetime") %>'></asp:TextBox></td>
                            <td><asp:TextBox ID="tbType" runat="server" Text='<%# Bind("type") %>'></asp:TextBox></td>
                            <td>
                                <asp:LinkButton ID="btnUpdate" runat="server" CssClass="link-update" CommandName="Update">更新</asp:LinkButton>
                                <asp:LinkButton ID="btnCancel" runat="server" CssClass="link-del" CommandName="Cancel">取消</asp:LinkButton>
                      
                            </td>
                        </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <td colspan="6">表中无数据</td>
                            </EmptyDataTemplate>
                        </asp:ListView>
                    </table>
                    <div class="list-page"> 2 条 1/1 页</div>
                </div>
        </div>
</asp:Content>
