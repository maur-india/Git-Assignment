<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addnotice.aspx.cs" Inherits="ppsclasses.addnotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
#body{
    margin: 0;
    padding: 0;
    min-height: 100vh;
    background: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: consolas;
}

.container{
    width: 1000px;
    position: relative;
    display: flex;
    justify-content: center;
}

.container .card{
    position: relative;
    cursor: pointer;
    background: #333;
    border: none;
}

.container .card .face{
    width: 300px;
    height: 200px;
    transition: 0.5s;
}

.container .card .face.face1{
    position: relative;
    background: #ff0057;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1;
    transform: translateY(100px);
}

.container .card:hover .face.face1{
    background:#333;
    transform: translateY(0);
    border: 2px solid #fff;
}

.container .card .face.face1 .content{
    opacity: 1;
}

.container .card:hover .face.face1 .content{
    opacity: 0.5;
    transition: 0.5s;
    
}

.container .card .face.face1 .content img{
    max-width: 100px;
}

.container .card .face.face1 .content h3{
    margin: 10px 0 0;
    padding: 0;
    color: #fff;
    text-align: center;
    font-size: 1.5em;
}

.container .card .face.face2{
    position: relative;
    background: #fff;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    padding: 0px 5px 5px 10px;
    box-sizing: border-box;
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.8);
    transform: translateY(-100px);
}

.container .card:hover .face.face2{
    transform: translateY(0);
}

.container .card .face.face2 .content p {
    margin: 0;
    padding: 0px 0px 0px 12px;
}

.container .card .face.face2 .content .btna{
    margin: 15px 0 0;
    display:  inline-block;
    text-decoration: none;
    font-weight: 900;
    color: #333;
    padding: 5px;
    border: 1px solid #333;
}

.container .card .face.face2 .content .btna:hover{
    background: #333;
    color: #fff;
}
.container .card .face.face2 .content a{
    margin: 15px 0 0;
    display:  inline-block;
    text-decoration: none;
    font-weight: 900;
    color: #333;
    padding: 5px;
    border: 1px solid #333;
    text-transform: uppercase;
}

.container .card .face.face2 .content a:hover{
    background: #333;
    color: #fff;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CP1" runat="server">
    <div id="body">
        <div class="container">
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="https://github.com/Jhonierpc/WebDevelopment/blob/master/CSS%20Card%20Hover%20Effects/img/design_128.png?raw=true">
                    <h3>Add</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>
                     <asp:TextBox ID="TxtBo1" runat="server" placeholder="Enter Notice Title*" Width="230px" BorderColor="RoyalBlue" BorderStyle="Dashed"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="R*" ControlToValidate="TxtBo1" ForeColor="PaleVioletRed" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                     <asp:Label ID="Ll1" runat="server" Text="Class" ForeColor="OrangeRed" Font-Bold="true"></asp:Label> &nbsp<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="cl" DataValueField="cl" ForeColor="Red" BackColor="Yellow"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dc1 %>" SelectCommand="SELECT DISTINCT [cl] FROM [slog] ORDER BY [cl]"></asp:SqlDataSource>
                    <br />
                    <br />
                     <asp:FileUpload ID="FileUpload2" runat="server" Width="50px" ForeColor="OrangeRed" />
                    </p>
                   <asp:Button ID="Butt1" runat="server" Text="ADD NOTICE" CssClass="btna" OnClick="Butt1_Click" />
                </div>
            </div>
        </div>
            &nbsp &nbsp &nbsp &nbsp &nbsp
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="https://github.com/Jhonierpc/WebDevelopment/blob/master/CSS%20Card%20Hover%20Effects/img/code_128.png?raw=true">
                    <h3>View</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>You Can view and delete Notices by Clicking this button. </p>
                    <a href="viewnotice.aspx">View Notices</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
