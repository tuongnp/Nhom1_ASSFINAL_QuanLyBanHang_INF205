<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>

    <article>
        <p>    
             
            Chào mừng đến với My Pub Food xin gửi tới khách hàng chương trình khuyến mãi đặc biệt : ưu đãi 20% cho các loại combo ( chương trình áp dụng từ 15/10 đến hết 23/10 ) 
            Ngoài ra khi đến với My Pub Food  trong dịp này thực khách sẽ được thưởng thức những món ăn mới lạ của nhà hàng dành cho mỗi thực khách thân yêu

            </br> </br>
            <asp:Image ID="Image1" ImageUrl="~/Images/about.jpg" runat="server" />
            
        </p>

        
    </article>
    <aside>
        <h4>Ngoài lề</h4>
        <p> Giảm giá 20% cho các hóa đơn từ 500k trở lên.
            </br>
            <asp:Image ID="Image2" ImageUrl="~/Images/sale.jpg" runat="server"/>   
        </p>
    </aside>
</asp:Content>