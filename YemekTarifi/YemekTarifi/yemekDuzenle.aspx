<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yemekDuzenle.aspx.cs" Inherits="YemekTarifi.yemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
            font-size: large;
        }
    .auto-style7 {
        height: 26px;
    }
    .auto-style8 {
        text-align: center;
        height: 26px;
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
            <td class="auto-style6"><strong>Yemek Ad :</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Malzemeler :</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif :</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Height="300px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kategori :</strong></td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Fotoğraf :</strong></td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" Width="220px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Günün Yemeğini Seç" Width="220px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
