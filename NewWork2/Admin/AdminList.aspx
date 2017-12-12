<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NewMain.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="NewWork2.Admin.AdminList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">管理员列表</span></div>
        </div>
        <div class="result-wrap">
            <form action="#" method="post" id="myform" name="myform">
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe00a;</i>管理员列表</h1>
                        <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="Level" runat="server" ClientIDMode="Static">
                                    <option value="-1">全部</option>
                                    <option value="1">超级管理员</option><option value="2">普通管理员</option>
                                </select>
                            </td>
                            <th width="70">管理员：</th>
                            <td><input class="common-text" placeholder="标题" name="keywords" value="" id="Name" type="text" runat="server" ClientIDMode="Static"/>
                            </td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit" runat="server" onserverclick="Unnamed_ServerClick" /></td>
                        </tr>
                    </table>
                    </div>
                    <div class="result-content">
                        <table class="result-tab" width="100%">
                            <tr>
                            <th>ID</th>
                            <th>管理员账号</th>
                            <th>管理员密码</th>
                            <th>权限</th>
                            <th>操作</th>
                            </tr>
                            <asp:ListView ID="lvAdminList" runat="server" OnItemEditing="lvAdminList_ItemEditing" OnItemUpdating="lvAdminList_ItemUpdating" OnItemCanceling="lvAdminList_ItemCanceling" OnItemDeleting="lvAdminList_ItemDeleting">
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Eval("ID") %></td>
                                        <td><%# Eval("UserName") %></td>
                                        <td>****** <%--<%# Eval("PassWord") %>--%></td>
                                        <td><%# Eval("Level") %></td>
                                        <td>
                                            <%--<asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">编辑</asp:LinkButton>--%>
                                            <asp:LinkButton ID="btnDel" runat="server" CommandName="Delete">删除</asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <tr>
                                        <td><%# Eval("ID") %></td>
                                        <td><asp:TextBox ID="tbUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox></td>
                                        <td>******<%--<%# Eval("PassWord") %>--%></td>
                                        <td><%# Eval("Level") %></td>
                                        <td>
                                            <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update">更新</asp:LinkButton>
                                            <asp:LinkButton ID="btnCancel" runat="server" CommandName="Cancel">取消</asp:LinkButton>
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                            </asp:ListView>
                            </table>
                    </div>
                </div>
            </form>
        </div>
</asp:Content>
