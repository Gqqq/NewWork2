<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NewMain.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="NewWork2.Admin.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">产品列表</span></div>
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
                                    <option value="1">【密度板会议桌系列】</option>
                                    <option value="2">【办公装饰家具系列】</option>
                                    <option value="3">【展览展台家具系列】</option>
                                    <option value="4">【橱窗柜台家具系列】</option>
                                    <option value="5">【商业空间家具系列】</option>
                                    <option value="6">【家庭装饰家具系列】</option>
                                    <option value="7">【最新推荐家具系列】</option>
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
                            <th>栏目</th>
                            <th>名称</th>
                            <%--<th>内容</th>--%>
                            <th>图片</th>
                            <th>操作</th>
                        </tr>
                        
                        <asp:ListView ID="lvProductList" runat="server" OnItemEditing="lvNewList_ItemEditing" OnItemCanceling="lvNewList_ItemCanceling" OnItemUpdating="lvNewList_ItemUpdating" OnItemDeleting="lvNewList_ItemDeleting">
                            <ItemTemplate>
                             <tr>
                            <td><%# Eval("id") %></td>
                            <td><%# Eval("type") %></td>
                            <td><%# Eval("name") %></a></td>
                            <%--<td><%# Eval("content") %></td>--%>
                            <td><%# Eval("image") %></td>
                            <td>
                                <asp:LinkButton ID="btnEdit" runat="server" CssClass="link-update" CommandName="Edit">编辑</asp:LinkButton>
                                <%--<a href="Insert.aspx?action=edit&id=<%# Eval("id") %>" target="_blank">编辑详情</a>--%>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="link-del" CommandName="Delete">删除</asp:LinkButton>
                            </td>
                        </tr>
                            </ItemTemplate>
                            <EditItemTemplate>
                            <tr>
                            <td><%# Eval("id") %></td>
                            <td><asp:TextBox ID="tbTitle" runat="server" Text='<%# Bind("type") %>'></asp:TextBox></td>
                           <%-- <td><asp:TextBox ID="tbDatetime" runat="server" Text='<%# Bind("content") %>'></asp:TextBox></td>--%>
                            <td><asp:TextBox ID="tbType" runat="server" Text='<%# Bind("name") %>'></asp:TextBox></td>
                            <td><%# Eval("image") %></td>
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
