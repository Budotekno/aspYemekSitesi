<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yorumDetay.aspx.cs" Inherits="YemekTarifi.yorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Ad Soyad :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Mail Adresi :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>İçerik :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yemek :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Onayla" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
