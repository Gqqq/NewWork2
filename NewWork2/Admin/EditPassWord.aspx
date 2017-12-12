<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/NewMain.Master" AutoEventWireup="true" CodeBehind="EditPassWord.aspx.cs" Inherits="NewWork2.Admin.EditPassWord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">修改密码</span></div>
        </div>
        <div class="result-wrap">
            <form action="#" method="post" id="myform" name="myform">
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe00a;</i>修改密码</h1>
                    </div>
                    <div class="result-content">
                        <table width="100%" class="insert-tab">
                            <tbody>
                                <tr>
                                    <th width="15%"><i class="require-red">*</i>原密码：</th>
                                    <td><input type="text" id="OldPass" value="" size="85" name="name" class="common-text" runat="server" ClientIDMode="Static"/></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>新密码：</th>
                                    <td><input type="text" id="NewPass" value="" size="85" name="password" class="common-text" runat="server" ClientIDMode="Static"/></td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>再次输入密码：</th>
                                    <td><input type="text" id="NewPass1" value="" size="85" name="password" class="common-text" runat="server" ClientIDMode="Static"/></td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>
                                        <input type="submit" value="提交" class="btn btn-primary btn6 mr10" runat="server" onserverclick="Unnamed_ServerClick"/>
                                        <input type="button" value="返回" onclick="history.go(-1)" class="btn btn6">
                                    </td>
                                </tr>
                            </tbody></table>
                    </div>
                </div>
                
            </form>
        </div>
</asp:Content>
