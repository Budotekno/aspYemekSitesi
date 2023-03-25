<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="YemekTarifi.yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            width: 384px;
            font-size: x-large;
        }
        .auto-style10 {
            height: 43px;
        }
        .auto-style11 {
            width: 281px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Onaylanan Yorum Listesi</strong></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" Height="40px"  Width="40px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" Height="40px"  Width="40px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                            </strong></td> 
                       
                         <td class="auto-style10">
                          <a href="kategoriAdminDetay.aspx?KategoriId=<%# Eval("yorumId")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/NewFolder1/update.png" Width="30px" />
                        </td> </a>
                        <td class="auto-style10">
                           <a href="kategoriler.aspx?kategoriID=<%# Eval("yorumId") %>&islem=sil"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/NewFolder1/delete.png" />
                            </a>
                        </td>



                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <div style="

        width: 450px;
        height:10px;
        background-color:white;
        

        ">

    </div>

    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Onaysız Yorum Listesi</strong></td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="+" Height="40px"  Width="40px" OnClick="Button3_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="-" Height="40px"  Width="40px" OnClick="Button4_Click"  />
                </td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style11"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                            </strong></td> 
                       
                         <td class="auto-style7">
                          <a href="yorumDetay.aspx?yorumId=<%# Eval("yorumId")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/NewFolder1/update.png" Width="30px" />
                        </td> </a>
                        <td class="auto-style7">
                           <a href="kategoriler.aspx?kategoriID=<%# Eval("yorumId") %>&islem=sil"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/NewFolder1/delete.png" />
                            </a>
                        </td>



                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>


</asp:Content>
