<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="viewnotice.aspx.cs" Inherits="ppsclasses.viewnotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/grid.css" rel="stylesheet" />
    <style>
        #login{
        background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;
        padding-top: 80px;
        padding-bottom: 100px;
        position: relative;
        align-content: center;  
    }

    .container{
        height: 100%;
         
    }
    .card{
        height: 400px;
        margin-top: auto;
        margin-bottom: auto;
        width: 1000px;
        background-color: rgba(0,0,0,0.5) !important;
        padding-left: 4px;
        padding-top: 12px;
        padding-bottom: 5px;
	    position: relative;
	    box-shadow: 10px 10px 42px 0 rgba(0,0,0,0.75);
        align-items: center;
    }
    .card:hover{
        border: 2px dashed #f0a591;
    }
    .txt{
  width: 80px;
  height: 40px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  font-weight: bold;
  font-stretch: expanded;
  background-color: white;
  background-repeat: no-repeat;
  padding: 12px 5px 12px 45px;
  transition: width 0.4s ease-in-out;
  padding-right: 5px;
  background-image: url('assets/img/search.png');
}
.txt:focus{
    width: 70%;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CP1" runat="server">
    <div id="login"> 
        <div class="container"> 
           <div class="d-flex justify-content-center h-100">
            <div class="card">
                <asp:Label ID="Label10" runat="server" Text="Enter Class & Topic To Serach" ForeColor="White" ></asp:Label>
                <asp:TextBox ID="TBox10" runat="server" CssClass="txt" OnTextChanged="Search1" AutoPostBack="true"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AllowPaging="true"
            EmptyDataText = "No files uploaded" CellPadding="4" PagerStyle-CssClass="pager" 
            HeaderStyle-CssClass="header" RowStyle-CssClass="rows"
            EnableModelValidation="True" ForeColor="#333333" GridLines="None"
            onrowdeleting="grdImages_RowDeleting" DataKeyNames="Id,f2"
            onpageindexchanging="grdImages_PageIndexChanging" PageSize="5" Width="388px">
            <Columns>
            <asp:TemplateField HeaderText="Topic" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="350px">
                <ItemTemplate>
                    <asp:Label ID="lbl11" runat="server" Text='<%# Eval("topic") %>'></asp:Label>           
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Class" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lbl12" runat="server" Text='<%# Eval("class") %>'></asp:Label>           
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Download" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="imgDownload1" runat="server" ImageUrl="~/assets/img/down.png" OnClick="imgDownload1_Click" ToolTip="Download Image" CausesValidation="false" />
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="Delete"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:ImageButton ID="imgDelete1" runat="server" CommandName="Delete"  ImageUrl="~/assets/img/del.png" OnClientClick="return confirm('Are you sure you want to delete selected record ?')" ToolTip="Delete" CausesValidation="false"/>
                </ItemTemplate>
            </asp:TemplateField>
         </Columns>   
    </asp:GridView></div>
   </div>
  </div>
 </div>
</asp:Content>
