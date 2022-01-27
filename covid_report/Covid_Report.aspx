<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Covid_Report.aspx.cs" Inherits="Covid_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- Bootstrap CSS file -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="../BootStrap/BootstrapCSS/bootstrap.min.css"/>
    <link rel="stylesheet" href="../BootStrap/BootstrapJS/bootstrap.min.js"/>
    <link rel="stylesheet" href="../font/all.min.css"/>
    <link rel="stylesheet" href="../font/fontawesome.min.css"/>
    <!---------Css file---------->
    <link rel="stylesheet" href="Covid_report.css"/>
    <script src="https://use.fontawesome.com/releases/v5.15.2/js/all.js" data-auto-replace-svg="nest"></script>
    
    <title>Covid Report</title>
    <link rel="icon" href="Image/navIcon.jpg"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="CovidReportBody" style="background-image: url('/Image/wallpaper.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; ">
       <!--------------------Covid Section Starts Here----------------------------->
    
            
                <div class="centerPage">
                    <h2 class="text-uppercase text-center" style="color:#b06486"> <b>Check Covid for free !!! </b></h2>
                    <div class="fields">
                        
                        <label class="col-xs-11">First Name:</label>
                        <div class="col-xs-11">
                           <asp:TextBox ID="txtFullname" Class="txtBox" runat="server" placeholder="Enter Your First Name"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorFullNmae" runat="server" CssClass="text-danger font-weight-bold" ErrorMessage="Mandatory" ControlToValidate="txtFullname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                          
                        </div>
                    </div>
                    <div class="fields">
                        <label class="col-xs-11">Last Name:</label>
                        <div class="col-xs-11">
                            <asp:TextBox ID="txtAdress" Class="txtBox" runat="server" placeholder="Enter Your Last name"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdress" runat="server" CssClass="text-danger font-weight-bold" ErrorMessage="Mandatory"  ForeColor="Red" ControlToValidate="txtAdress" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="fields">
                        <label class="col-xs-11">Id:</label>
                        <div class="col-xs-11">
                            <asp:TextBox ID="txtUid" Class="txtBox" runat="server" placeholder="Enter Your ID"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorUid" runat="server" CssClass="text-danger font-weight-bold" ErrorMessage="Mandatory"  ForeColor="Red" ControlToValidate="txtUid" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                            
                        </div>
                    </div>

                    <div class="fields">
                        <label class="col-xs-11">Age:</label>
                        <div class="col-xs-11">
                            <asp:TextBox ID="txtPhone" Class="txtBox" runat="server" placeholder="Enter Your Age" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" CssClass="text-danger font-weight-bold" ErrorMessage="Mandatory"  ForeColor="Red" ControlToValidate="txtPhone" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    

                    <div class="fields">
                        <label class="col-xs-11">Chest X-ray report link:</label>
                        <div class="col-xs-11">
                            <asp:TextBox ID="txtReport" Class="txtBox" runat="server" placeholder="Enter your chest X-ray report link"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorCovidReport" runat="server" CssClass="text-danger font-weight-bold" ErrorMessage="Mandatory"  ForeColor="Red" ControlToValidate="txtReport" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="fields">
                        <div class="col-xs-11">           
                            <asp:LinkButton ID="lnkbtnDownload"  CssClass="btn btn-outline-light txtSubmitBtn" runat="server"  OnClick="lnkbtnDownload_Click" BorderColor="#B06486" ForeColor="White" BorderStyle="Groove" BackColor="#B06486">Submit</asp:LinkButton>
                        
                        </div>
                    </div>         
                    
            </div>

        </div>
            <!--------------------Covid Section Ends Here----------------------------->



    </form>
</body>
</html>
