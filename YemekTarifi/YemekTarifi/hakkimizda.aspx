<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="YemekTarifi.hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6"><strong>Hakkımızda</strong></td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    <asp:Image ID="Image1" runat="server" Height="205px" Width="448px" />
</asp:Content>
