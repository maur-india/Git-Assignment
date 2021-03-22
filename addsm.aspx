<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addsm.aspx.cs" Inherits="ppsclasses.addsm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/vendor/fontawesome-free-5.15.1-web\css\all.css" rel="stylesheet">
   <style>
      @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');

* {
	box-sizing: border-box;
}
.courses-container {
	font-family: 'Muli', sans-serif;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	margin: 0;
    background-size: cover;
    background-repeat: no-repeat;
    padding-top: 80px;
    padding-bottom: 100px;
}

.course {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
	display: flex;
	max-width: 100%;
	margin: 20px;
	overflow: hidden;
	width: 800px;
	height: 300px;
}

.course h6 {
	opacity: 0.6;
	margin: 0;
	letter-spacing: 1px;
	text-transform: uppercase;
}

.course h2 {
	letter-spacing: 1px;
	margin: 10px 0;
}

.course-preview {
	background-color: #2A265F;
	color: #fff;
	padding: 30px;
	max-width: 250px;
}

.course-preview a {
	color: #fff;
	display: inline-block;
	font-size: 14px;
	opacity: 0.5;
	margin-top: 30px;
	text-decoration: none;
}

.course-info {
	padding: 30px;
	position: relative;
	width: 100%;
}

.progress-container {
	position: absolute;
	top: 30px;
	right: 30px;
	text-align: right;
	width: 150px;
}

.progress {
	background-color: #ddd;
	border-radius: 3px;
	height: 5px;
	width: 100%;
}

.progress::after {
	border-radius: 3px;
	background-color: #2A265F;
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	height: 5px;
	width: 90%;
}

.progress-text {
	font-size: 10px;
	opacity: 0.6;
	letter-spacing: 1px;
}

.btnRegister{
    bottom: 30px;
	right: 30px;
    padding: 12px 25px;
	position: absolute;
    float: right;
    border: 0;
    border-radius: 1.5rem;
    color: #fff;
    font-weight: 600;
    width: 150px;
    cursor: pointer;
    transition: 0.5s;
    background-image: linear-gradient(to right, #fbc2eb 0%, #a6c1ee 51%, #fbc2eb 100%);
}
.btnRegister:hover{
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
    background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%);
}

.floating-text {
	background-color: #001F61;
	border-radius: 10px 10px 0 0;
	color: #fff;
	font-family: 'Muli';
	padding: 7px 15px;
	position: absolute;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
	text-align: center;
	z-index: 998;
}

.floating-text a {
	color: #FF7500;
	text-decoration: none;
}

@media screen and (max-width: 480px) {

	.social-panel-container.visible {
		transform: translateX(0px);
	}
	
	.floating-btn {
		right: 10px;
	}
}
.txt{
  width: 80px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  font-weight: bold;
  font-stretch: expanded;
  background-color: white;
  background-repeat: no-repeat;
  padding: 12px 5px 12px 10px;
  transition: width 0.4s ease-in-out;
}
.txt:focus{
    width: 50%;
}
.txt1{
  width: 80px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  font-weight: bold;
  font-stretch: expanded;
  background-color: white;
  background-repeat: no-repeat;
  padding: 12px 5px 12px 10px;
  transition: width 0.4s ease-in-out;
  
}
.txt1:focus{
    width: 20%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CP1" runat="server">
    <div class="courses-container">
	<div class="course">
		<div class="course-preview">
			<h6>Admin</h6>
			<h2>Add <br />Study Material</h2>
			<a href="viewsm.aspx"><i class="fas fa-chevron-right"></i> View Study Material <i class="fas fa-chevron-right"></i></a>
            <a><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a>
		</div>
		<div class="course-info">
			<div class="progress-container">
				<div class="progress"></div>
			</div>
			<h6></h6>
			<h2>Study Material Details</h2>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Topic" CssClass="txt" required=""></asp:TextBox>&nbsp
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Course" CssClass="txt" required=""></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="DD" CssClass="txt1" required=""></asp:TextBox>&nbsp
            <asp:TextBox ID="TextBox3" runat="server" placeholder="MM" CssClass="txt1" required=""></asp:TextBox>&nbsp
            <asp:TextBox ID="TextBox4" runat="server" placeholder="YYYY" CssClass="txt1" required=""></asp:TextBox>
            <br /><br />
            <asp:FileUpload ID="FileUpload1" runat="server" />

            <asp:Button ID="Button2" runat="server" Text="ADD SM" OnClick="Button2_Click" CssClass="btnRegister" />
		</div>
	</div>
</div>
</asp:Content>
