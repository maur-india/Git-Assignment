<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="usmr.aspx.cs" Inherits="ppsclasses.usmr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cp10" runat="server">
    <link href="assets/css/grid.css" rel="stylesheet" />
    <style>
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
  background-image: url('assets/img/arrow.gif');
}
.txt:focus{
    width: 50%;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="colorlib-about">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
							<h2 class="colorlib-heading">Study Material & Result</h2>
							<p>"Life is Chemistry, Dilute your sorrow, Evaporate your worries, Filter Your mistake, Boil your Ego, You will get the 'Crystal of happiness'. "  </p>
						</div>
						<div class="col-md-8 animate-box" data-animate-effect="fadeInRight">
							<div class="fancy-collapse-panel">
								<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
									    <div class="panel-heading" role="tab" id="headingTwo">
									        <h4 class="panel-title">
									            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"># View Study Material
									            </a>
									        </h4>
									    </div>
									    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									        <div class="panel-body">
                                                <asp:Label ID="clenter1" runat="server" Text="Course: " ForeColor="Black" Font-Bold="true"></asp:Label>
                                                <asp:Label ID="Labelclass" runat="server" Text="Label"></asp:Label>
                                                <asp:Label ID="Labelcourse" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                <asp:Label ID="Labelenter" runat="server" Text="Enter Topic To Search Study Material" ForeColor="Black" ></asp:Label>
                                                <asp:TextBox ID="classenter1" runat="server" CssClass="txt" OnTextChanged="Searchcl" AutoPostBack="true"></asp:TextBox>
                                                <br />
                                                <br />
									            <asp:GridView ID="smr" runat="server" AutoGenerateColumns="False" AllowPaging="true"
                                                EmptyDataText = "No files uploaded" CellPadding="4" PagerStyle-CssClass="pager" 
                                                HeaderStyle-CssClass="header" RowStyle-CssClass="rows"
                                                EnableModelValidation="True" ForeColor="#333333" GridLines="None"
                                                DataKeyNames="Id,f1" 
                                                onpageindexchanging="grdImages_PageIndexChanging" PageSize="5" Width="388px">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Topic" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="250px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl13" runat="server" Text='<%# Eval("topic") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Class" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="100px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl14" runat="server" Text='<%# Eval("cl") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="50px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl15" runat="server" Text='<%# Eval("d") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="Month" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="65px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl16" runat="server" Text='<%# Eval("m") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Year" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="50px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl17" runat="server" Text='<%# Eval("y") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Download" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:ImageButton ID="imgDownload2" runat="server" ImageUrl="~/assets/img/down.png" OnClick="imgDownload2_Click" ToolTip="Download Image" CausesValidation="false" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField> 
                                                     </Columns>
									            </asp:GridView>
									        </div>
									    </div>
									</div>
                                    <div class="panel panel-default">
									    <div class="panel-heading" role="tab" id="headingThree">
									        <h4 class="panel-title">
									            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">View Result
									            </a>
									        </h4>
									    </div>
									    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									        <div class="panel-body">
									            <asp:Label ID="Ll" runat="server" Text="SID: " ForeColor="Black" Font-Bold="true"></asp:Label>
                                                <asp:Label ID="labelsid" runat="server"></asp:Label>
                                                <br />
                                                <asp:Label ID="Labels" runat="server" Text="Enter Exam Name To Search" ForeColor="Black" ></asp:Label>
                                                <asp:TextBox ID="tbresult" runat="server" CssClass="txt" OnTextChanged="Searchresult" AutoPostBack="true"></asp:TextBox>
                                                <br />
                                                <br />
                                                <asp:GridView ID="result" runat="server" AutoGenerateColumns="False" AllowPaging="true"
                                                EmptyDataText = "No files uploaded" CellPadding="4" PagerStyle-CssClass="pager" 
                                                HeaderStyle-CssClass="header" RowStyle-CssClass="rows"
                                                EnableModelValidation="True" ForeColor="#333333" GridLines="None"
                                                DataKeyNames="Sid" 
                                                onpageindexchanging="grdImages1_PageIndexChanging" PageSize="5" Width="388px">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Exam Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ControlStyle-Width="250px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl18" runat="server" Text='<%# Eval("ename") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Full Marks" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="100px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl19" runat="server" Text='<%# Eval("class") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:TemplateField HeaderText="Marks" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="50px">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lbl21" runat="server" Text='<%# Eval("marks") %>'></asp:Label>           
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                     </Columns>
                                                </asp:GridView>
									    </div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div id="get-in-touch" class="colorlib-bg-color">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
							<h2>Get in Touch!</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<p class="colorlib-lead">Have you Any Queries Regarding Study? You Can contact us.</p>
							<p><a href="#" class="btn btn-primary btn-learn">Contact Us!</a></p>
						</div>
					</div>
				</div>
			</div>
</asp:Content>
