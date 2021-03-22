<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addresult.aspx.cs" Inherits="ppsclasses.addresult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.add
{
    display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	margin: 0;
    background-size: 1500px 600px;
    background-repeat: no-repeat;
    padding-top: 80px;
    padding-bottom: 500px;
    background-image: url("images/b11.jpg");
}
.wrapper {
  display: inline-block;
  background: #01579B;
  box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
  position: absolute;
  top: 50%;
  margin-top: -120px;
}

/* entire container, keeps perspective */
.flip-container {
  display: inline-block;
  /*perspective: 1000px;*/
  vertical-align: top; /* Prevent unwanted margin. */
}

/* flip the pane when hovered */

.wrapper:hover .flip-left {
  transform: rotateY(-180deg);
}

.wrapper:hover .flip-right {
  transform: rotateY(180deg);
}

.flip-container,
.front,
.back {
  width: 360px;
  height: 240px;
}

/* flip speed goes here */
.flip {
  transition: 0.6s;
  transform-style: preserve-3d;
  position: relative;
}

/* hide back of pane during swap */
.front,
.back {
  backface-visibility: hidden;
  position: absolute;
  top: 0;
  left: 0;
}

/* front pane, placed above back */
.front {
  z-index: 2;
  background: #2196F3;
  transform: rotateY(0deg);
  overflow: hidden;
  /*position: relative;*/
}

.front-left .circle {
  position: absolute;
  right: -50px;
  top: 50%;
  margin-top: -50px;
}

.front-right .circle {
  position: absolute;
  left: -50px;
  top: 50%;
  margin-top: -50px;
}

.circle {
  position: absolute;
  width: 100px;
  height: 100px;
  border-radius: 100%;
  background: #ffffff;  box-shadow: 0 19px 38px rgba(0,0,0,0.20), 0 15px 12px rgba(0,0,0,0.12);

}

/* back, initially hidden pane */
.back {
  background: rgb(220,220,220);
  transform: rotateY(180deg);
  overflow: hidden;
}

img {
  width: 360px;
  height: 240px;
}

.back-left {
  position: absolute;
  left: 0;
  background-image: url("http://tobiasbogliolo.com/assets/imgs/cases/poster-urban.jpg");
  width: 360px;
  height: 240px;
}

.txt{
  border: none;
  border-top:2px solid red; 
  border-bottom: 2px solid red;
  width: 300px;
  height: 50px;
  box-sizing: border-box;
  border-radius: 4px;
  font-size: 16px;
  font-weight: bold;
  font-stretch: expanded;
  background-image: url("http://tobiasbogliolo.com/assets/imgs/cases/poster-urban.jpg");
  background-repeat: no-repeat;
  padding: 10px 10px;
}
.txt:focus{
    border: 3px solid red;
}
.back-right {
  position: absolute;
  right: 0;
  background-image: url("http://tobiasbogliolo.com/assets/imgs/cases/poster-urban.jpg");
  width: 360px;
  height: 240px;
}
.btna{
  width: 160px;
  background-image: url("http://tobiasbogliolo.com/assets/imgs/cases/poster-urban.jpg");
  background-size: 150px 50px;
  border: none;
  border-bottom: 2px solid orangered;
  border-top: 2px solid forestgreen;
  font-size: large;
  font-weight: bold;
  height: 50px;
}
.btna:hover{
    text-decoration: none;
    letter-spacing:2.5px;
    border-left: 2px solid orangered;
    border-right: 2px solid forestgreen;
    text-transform: uppercase;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CP1" runat="server">
 <!-- CSS - Cards - Flip 360 -->
<div class="add">
<div class="wrapper">
  <div class="flip-container">
    <div class="flip flip-left">
      <div class="front front-left">
          <div class="circle"></div>
      </div>
      <div class="back back-left">
         <center>
          <br />
            <!--<asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="sid" DataValueField="sid"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dc1 %>" SelectCommand="SELECT DISTINCT [sid] FROM [slog] ORDER BY [sid]"></asp:SqlDataSource>-->
             <asp:TextBox ID="Box1" runat="server" CssClass="txt" placeholder="Enter Student Code*" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required*" ControlToValidate="Box1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
          <br />
          <br />
          <asp:TextBox ID="Box2" runat="server" CssClass =" txt" placeholder="Enter Full Marks*" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required*" ControlToValidate="Box2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="Box2" ValidationExpression="^[0-9]{2}$" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
           <br />
           <br />
           <asp:Label ID="Labelresult" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Large"></asp:Label>
         </center>
      </div>
    </div>
  </div><div class="flip-container">
    <div class="flip flip-right">
      <div class="front front-right">
          <div class="circle"></div>
      </div>
      <div class="back back-right">
          <center>
            <br />
              <asp:TextBox ID="Box3" runat="server" CssClass="txt" placeholder="Enter Exam Name*"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required*" ControlToValidate="Box3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
              <asp:TextBox ID="Box4" runat="server" CssClass="txt" placeholder="Enter Obtained Marks*" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required*" ControlToValidate="Box4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid" ValidationExpression="^[0-9]{2}$" Display="Dynamic" ControlToValidate="Box4" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <br />
               <asp:Button ID="result" runat="server" Text="Add Result" CssClass="btna" OnClick="result_Click"></asp:Button>
          </center>
      </div>
    </div>
  </div>
   <center>
      <br />
         <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btna" NavigateUrl="~/viewresult.aspx" ForeColor="Black">View Result</asp:HyperLink>
       <!--<asp:Button ID="view" runat="server" Text="" CssClass="btna" OnClick="view_Click"></asp:Button>-->
      <br /> 
      <br />
   </center>
</div>
    
</div>
</asp:Content>
