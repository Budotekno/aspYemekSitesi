<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="tarifler.aspx.cs" Inherits="YemekTarifi.tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style9 {
            width: 384px;
            font-size: x-large;
        }
        .auto-style10 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>Onaysız Tarif Listesi</strong></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="+" Height="40px"  Width="40px" OnClick="Button1_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" Height="40px"  Width="40px" OnClick="Button2_Click"  />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px" >
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style11"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("tarifAd") %>'></asp:Label>
                            </strong></td> 
                      
                        <td class="auto-style10">
                          
                            <a href="tarifOnerDetay.aspx?tarifId=<%# Eval("tarifId") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/NewFolder1/Untitled-1.png" Width="30px" />
                                </a>
                        </td>



                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
       
</asp:Panel>

    <div style="
        
        width:450px;
        height:10px;
        background-color:white;
        ">

    </div>

     <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style9"><strong>Onaylı Tarif Listesi</strong></td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Height="40px" Text="+" Width="40px" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Height="40px" Text="-" Width="40px" OnClick="Button4_Click" />
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("tarifAd") %>'></asp:Label>
                            </strong></td> 
                      
                        <td class="auto-style10">
                          
                            <a href="tarifOnerDetay.aspx?tarifId=<%# Eval("tarifId") %>">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/NewFolder1/Untitled-1.png" Width="30px" />
                                </a>
                        </td>



                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
       
</asp:Panel>


</asp:Content>
