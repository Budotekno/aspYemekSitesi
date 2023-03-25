<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="hakkimizdaAdmin.aspx.cs" Inherits="YemekTarifi.hakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 384px;
            font-size: x-large;
        }

        .auto-style10 {
            text-align: center;
        }

        .auto-style11 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9">Hakkımızda</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" Height="40px" Width="40px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" Height="40px" Width="40px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">

        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="400px" TextMode="MultiLine" Width="430px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
