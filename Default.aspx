<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper"  style="background:white">
            <hgroup class="title">
                </hgroup>
                <asp:Image ID="Image1" Width="1000px"  ImageUrl="~/Images/caphe1.jpg" runat="server"/>
            
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h1>Hot nhất trong tuần:</h1>
    <ol class="round">
        <li class="one">
            <h3>HamBurGer kẹp thịt bò</h3>
            </br>
            <center><asp:Image ID="Image2" Width="800px" Height="400"  ImageUrl="~/Images/hamberger1.jpg" runat="server"/></center>
        </li>
        <li class="two">
            <h3>Đùi gà KFC</h3>
            </br>
            <center><asp:Image ID="Image3" Width="800px" Height="400"  ImageUrl="~/Images/kfc.jpg" runat="server"/></center>
        </li>
        <li class="three">
            <h3>Trà Sữa</h3>
           </br>
            <center><asp:Image ID="Image4" Width="800px" Height="400"  ImageUrl="~/Images/trasua.jpg" runat="server"/></center>
        </li>
    </ol>
</asp:Content>