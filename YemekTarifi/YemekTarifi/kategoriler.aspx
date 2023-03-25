<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="YemekTarifi.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
        height: 26px;
        width: 135px;
    }
    .auto-style7 {
        height: 26px;
        text-align: right;
    }
    .auto-style8 {
        font-size: large;
    }
        .auto-style9 {
            width: 384px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Kategori Listesi</strong></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" Height="40px" OnClick="Button1_Click" Width="40px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" Height="40px" OnClick="Button2_Click" Width="40px" />
                </td>
                
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style6"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("kategoriAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style7">
                           <a href="kategoriAdminDetay.aspx?KategoriId=<%# Eval("KategoriId")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/NewFolder1/update.png" Width="30px" />
                        </td></a>
                        <td class="auto-style7">
                           <a href="kategoriler.aspx?kategoriID=<%# Eval("kategoriID") %>&islem=sil"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/NewFolder1/delete.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <div style=" 
        
        width: 450px;
        height:5px;
        background-color:white;
        margin: 10px 0 5px 0;
        "></div>
    <asp:Panel ID="Panel3" runat="server" style="margin-top:0px;">

         <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Kategori Ekleme</strong></td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="+" Height="40px"  Width="40px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="-" Height="40px"  Width="40px" OnClick="Button4_Click" />
                </td>
                
            </tr>
        </table>

    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td>Kategori Ad</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>Kategori İcon</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Ekle" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
