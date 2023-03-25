<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="tarifOnerDetay.aspx.cs" Inherits="YemekTarifi.tarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style8 {
            width: 139px;
        }
        .auto-style9 {
            text-align: right;
            font-weight: bold;
            width: 139px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style10 {
            width: 139px;
            text-align: right;
        }
        .auto-style11 {
            width: 139px;
            text-align: right;
            height: 27px;
        }
        .auto-style12 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Ad :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Malzemeler :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Yapılış :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Fotoğraf :</strong></td>
                <td style="text-align: center" class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Öneren :</strong></td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Öneren Mail :</strong></td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Kategori :</strong></td>
                <td style="text-align: center" class="auto-style12">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Onayla" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
