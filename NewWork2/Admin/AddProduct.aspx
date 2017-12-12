<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NewMain.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="NewWork2.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="Index.aspx">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="design.aspx">产品发布</a><span class="crumb-step">&gt;</span><%--<span><%=Request["action"] == "edit" ? "编辑新闻" : "发布新闻" %></span>--%></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="/jscss/admin/design/add" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        <tr>
                            <th width="120"><i class="require-red">*</i>栏目：</th>
                            <td>
                                <select name="colId" id="type" class="required" runat="server" ClientIDMode="Static">
                                    <option value="1">【密度板会议桌系列】</option>
                                    <option value="2">【办公装饰家具系列】</option>
                                    <option value="3">【展览展台家具系列】</option>
                                    <option value="4">【橱窗柜台家具系列】</option>
                                    <option value="5">【商业空间家具系列】</option>
                                    <option value="6">【家庭装饰家具系列】</option>
                                    <option value="7">【最新推荐家具系列】</option>
                                    <%--<option value="8">【最新推荐家具系列】</option>--%>
                                </select>
                            </td>
                        </tr>
                            <tr>
                                <th><i class="require-red">*</i>标题：</th>
                                <td>
                                    <input class="common-text required" id="name" name="title" size="50" type="text" runat="server" ClientIDMode="Static"/>
                                </td>
                            </tr>
                            <%--<tr>
                                <th><i class="require-red">*</i>时间：</th>
                                <td>
                                    <input class="common-text required" id="datetime" name="datetime" size="50" type="text" runat="server" ClientIDMode="Static"/>
                                </td>
                            </tr>--%>
                            <tr>
                                <th><i class="require-red">*</i>缩略图：</th>
                                <td><input name="photo" id="photo" type="file" runat="server" ClientIDMode="Static"/></td>
                            </tr>
                            <tr>
                                <th>内容：</th>
                                <td><textarea name="content" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10" runat="server" ClientIDMode="Static"></textarea></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                <input class="btn btn-primary btn6 mr10" value="提交" type="submit" runat="server" onserverclick="Unnamed_ServerClick"/>
                                <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button" />
                                </td>
                         </tr>
                        </tbody></table>
                </form>
            </div>
        </div>
    <script>
        UE.getEditor("content");
    </script>
</asp:Content>
