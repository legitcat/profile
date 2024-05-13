<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pa_bups._english" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajtk" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>pa_bups</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="expires" content="Fri, 18 Jul 2014 1:00:00 GMT" />

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>

    <link rel="stylesheet" type="text/css" href="~/css/stylesheet.css"/>
    <script type="text/javascript" src="../Scripts/validatekey.js"></script>


</head>


<body>
    <form runat="server">

        <asp:ScriptManager ID="ScriptManager2" runat="server"> </asp:ScriptManager>

<%--        <div style="background-color:#204494;position: fixed;top:0;width:100%">
             <asp:Image class="logo" runat="server" ImageUrl="~/images/sbcologo.png" AlternateText="SB county Logo" title="Public Authority Logo"/>
        </div>--%>

        <div class="div1" id="div1">
            
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell class="block">                                  
                        <asp:Image style="max-width:200%" runat="server" ImageUrl="~/images/header.jpg" AlternateText="Public Authority Logo" title="Public Authority Logo"/>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell class="block address">
<%--                        <b>
                            Public Authority Provider Registration Application<br />
                            784 East Hospitality Lane<br />
                            San Benardino, CA 92415-0034<br />
                            Toll Free:(866) 985-6322<br />
                            Fax: (909) 927-4176
                        </b>--%>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table> 
             
            <a href="top"></a>
            <asp:Label ID="lbltop" runat="server" style="font-size:25px;"> </asp:Label>
            <asp:Label ID="Label1" runat="server" style="font-size:25px;"> </asp:Label>

            <b><label style="color:blue;" class="txtbox">Back-Up Provider Request</label></b>
            <br /><br />
            <asp:label id="lbl_fillin" runat="server" class="txtbox" Text="PLEASE FILL IN ALL SECTIONS"/>
            <br /><br />

            <asp:Table runat="server" ID="table3" style="border-collapse: collapse;">

                <asp:TableRow ID="row_eligible">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server">Are you eligible for IHSS services?</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox"> 
                        <asp:DropDownList ID="ddl_Eligible" runat="server" OnSelectedIndexChanged="ddl_SelectedEligible" AutoPostBack="true" tabindex="1"></asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="row_noteligible" >
                    <asp:TableCell class="block txtbox" width="430px" colspan="3" style="word-wrap:normal" >
                            <br />
                            <b>
                                <asp:label id="lbl_msg" runat="server">
                                    If you selected no, please call the In-Home Support Services 
                                    (IHSS) Central Intake Unit to apply for IHSS at 1-877-800-4544 
                                </asp:label>
                            </b>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="row_eligible_recipient">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server">Are you the eligible IHSS recipient?</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                        <asp:DropDownList ID="ddl_EligibleRecipient" runat="server" OnSelectedIndexChanged="ddl_SelectedEligibleRecipient" AutoPostBack="true" tabindex="2"></asp:DropDownList>
                        <asp:label id="lblerreligiblerecipient" class="lblerr" runat="server" style="color:#8b0000;"></asp:label>                    
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow id="row_relationship">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server">If no, relationship to recipient:</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                        <asp:DropDownList ID="ddl_Relationship" runat="server" Width="250px" OnSelectedIndexChanged="ddl_SelectedRelationship" AutoPostBack="true"  tabindex="3"> </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                        <asp:label id="lblerr_relationship" class="lblerr" runat="server" style="color:#8b0000;"></asp:label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="row_other_relationship">
                    <asp:TableCell class="block txtbox" ID="row_Other">
                        <asp:label id="lblother" runat="server" visible="false" Text="Other relationship:" placeholder="Other Relationship"></asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" style="vertical-align:top">
                        <asp:TextBox ID="txtother" runat="server" MaxLength="30" Width="250px" visible="false" placeholder="Other Relationship" tabindex="4"></asp:TextBox>
                        <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="txtother" ValidChars=",./ " FilterType="Numbers, Custom, UppercaseLetters, LowercaseLetters" />
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow ID="row_pohone_nbr">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server">Phone Number:</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                            <asp:TextBox ID="phone_number" runat="server" MaxLength="13" Width="250px" tabindex="5" placeholder="(123)456-7890"></asp:TextBox>
                            <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="phone_number" ValidChars="()-" FilterType="Numbers, Custom" />
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                            <asp:label id="lblerrphone" class="lblerr" runat="server" style="color:#8b0000;"></asp:label>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="row_name">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server">IHSS Recipient First Name:</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                        <asp:TextBox ID="recipient_firstname" runat="server" class="recipient_name" MaxLength="40" Width="250px" tabindex="6" placeholder="Recipient Name"></asp:TextBox>
                        <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="recipient_firstname" ValidChars=" " FilterType="Custom, UppercaseLetters, LowercaseLetters" />
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                        <asp:label id="lblerrreceipient" class="lblerr" runat="server" style="color:#8b0000;"></asp:label>
                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow ID="row_lastname">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server">IHSS Recipient Last Name:</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                        <asp:TextBox ID="recipient_lastname" runat="server" class="recipient_lastname" MaxLength="40" Width="250px" tabindex="7" placeholder="Recipient Name"></asp:TextBox>
                        <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" TargetControlID="recipient_lastname" ValidChars=" " FilterType="Custom, UppercaseLetters, LowercaseLetters" />
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                        <asp:label id="lblerrlastname" class="lblerr" runat="server" style="color:#8b0000;"></asp:label>
                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow ID="row_case_nbr">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server" >Case Number:</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                        <asp:TextBox ID="case_number" runat="server" MaxLength="15" Width="250px" tabindex="8" placeholder="Case Number"></asp:TextBox>
                        <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="case_number" ValidChars="- " FilterType="Numbers" />
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                        <asp:label ID="lblerrcase" class="lblerr" runat="server" style="color:#8b0000;"></asp:label>
                    </asp:TableCell>
                </asp:TableRow>

<%--                <asp:TableRow ID="row_ssn">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server" >Security Number:</asp:label>
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                            <asp:TextBox ID="ssn" runat="server" MaxLength="11" Width="250px" tabindex="7" placeholder="123-45-6789"></asp:TextBox>
                            <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="ssn" ValidChars="-" FilterType="Numbers, Custom" />
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                            <asp:label id="lblerrssn" class="lblerr" runat="server" style="color:#8b0000;"></asp:label>
                    </asp:TableCell>
                </asp:TableRow>--%>

                <asp:TableRow ID="row_explain" colspan="3">
                    <asp:TableCell class="block txtbox" style="vertical-align:top">
                        <asp:label runat="server"> Briefly explain need for BUPS:</asp:label> 
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox">
                        <asp:TextBox ID="explain" runat="server" MaxLength="500" Width="250px" rows="3" TextMode="MultiLine" tabindex="11" placeholder="Brief Explanation"></asp:TextBox>  
                        <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="explain" ValidChars="., " FilterType="Numbers, Custom, UppercaseLetters, LowercaseLetters" />
                    </asp:TableCell>
                    <asp:TableCell class="txtbox">
                        <asp:label runat="server" ID="Label2" style="color:#8b0000;"></asp:label> 
                    </asp:TableCell>
                </asp:TableRow>

           </asp:Table>

            <asp:Table runat="server" style="position:relative;top:-.41em">

                <asp:TableRow ID="row_howhear">
                    <asp:TableCell class="block txtbox">
                        <asp:label runat="server">How did you hear about BUPS?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:label> 
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox">
                        <asp:DropDownList ID="ddl_howhear" runat="server" Width="250px" OnSelectedIndexChanged="ddl_SelectedHowHear" AutoPostBack="true"  tabindex="9"> </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                        <asp:label runat="server" ID="lblerr_howhear" style="color:#8b0000;"></asp:label> 
                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow ID="row_if_other">
                    <asp:TableCell class="block txtbox" style="vertical-align:top" >
                        <asp:label id="lblerrexplain" runat="server">If Other, explain:</asp:label> 
                    </asp:TableCell>
                    <asp:TableCell class="block txtbox" >
                        <asp:TextBox ID="if_other" runat="server" MaxLength="500" Width="250px" rows="3" TextMode="MultiLine" tabindex="10" placeholder="Brief Explanation"></asp:TextBox>  
                        <ajtk:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" TargetControlID="if_other" ValidChars="., " FilterType="Numbers, Custom, UppercaseLetters, LowercaseLetters" />
                    </asp:TableCell>
                    <asp:TableCell class="txtbox" >
                        <asp:label runat="server" ID="lbl_ifother" style="color:#8b0000;"></asp:label> 
                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow ID="row_lbl_error" >
                    <asp:TableCell class="block txtbox" colspan="3">
                        <asp:label ID="lblerror" class="lblerr" runat="server" style="color:#8b0000;" ></asp:label>
                        </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="row_submit">

                    <asp:TableCell  class="block txtbox">
                        <asp:Image ID="Image2" runat="server" Height="80px" Width="130px"  style="vertical-align:central" alt="Captcha Code"/>
                        <asp:Label ID="lblCode" runat="server" style="margin-left:-2.5em">Enter Code</asp:Label>
                        &nbsp;
                        <asp:TextBox ID ="txtcode" runat="server" Height="35px" MaxLength="3" Width="50px" Style="font-size:16px"  tabindex="12"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell  class="block txtbox">
                        <asp:Button ID="btnsubmit" runat="server" Width="90" onclick="btnsubmit_Click" Text="Submit" Title="Submit"  tabindex="13"/>
                        <br />
                        <asp:Label ID="lblsubmit" runat="server" style="color:blue"></asp:Label> 
                    </asp:TableCell>
                    <asp:TableCell  class="block txtbox">
                    </asp:TableCell>

                </asp:TableRow>  

            </asp:Table>

        </div>         
    </form>

    <br /><br /><br /><br />

    <div style="width:100%;position:fixed;bottom:0;text-align:center;border-collapse: collapse;">
        <asp:Table runat="server"  style="background-color:#204494;width:100%;">
            <asp:TableRow>
                <asp:TableCell  class="block">
                     <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell  class="block" style="font-family:Arial;font-size:16px;"> 
                    <label style="color:white">&copy; 2024 San Bernardino County </label>
                    <a href="https://first5sanbernardino.org/" alt="IHSS PA Authority San Bernardino" style="color:white">|IHSS PA Authority San Bernardino </a>
                    <a href="https://main.sbcounty.gov/policy/" alt="Privacy Policy" style="color:white">|Privacy Policy</a>
                    <a href="https://main.sbcounty.gov/ada-notice/" alt="Accessibility" style="color:white">Accessibility</a>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell  class="block">
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

</body>

</html>
