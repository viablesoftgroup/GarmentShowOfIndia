<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DistribuelecMay22BlrVD.index" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link rel="icon" href="images/ieema-logo-1.png?v=1" type="image/x-icon" />
    <title>Garment Show of India - JULY 2022 :::::::::::::: </title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="css/AdminLTE.min.css" />
    <style>
        .content-wrapper {
            background: #ffffff !important;
        }

        .box {
            box-shadow: none;
        }

        .btnsize {
            font-size: 23px !important;
            padding: 10px 41px;
        }

        h1 {
            font-family: Helvetica;
            font-size: 16px;
            font-weight: bold;
            font-style: normal;
            text-decoration: none;
            text-align: left;
            color: #a13569;
            text-align: center;
            margin: 5px 0 0 0;
        }

        RadioButton {
            padding-left: 10px;
            margin-left: 20px;
        }

        p {
            margin: 12px 0 10px 0;
        }

        .form-control {
            border-radius: 5px;
            box-shadow: none;
            font-size: 12px;
            border-color: #f1a185;
        }

        .btn-primary {
            background-color: #085cad;
            border-color: #085cad;
            /*color: #333; 43b5e7*/
            font-size: 12px;
            font-weight: bold;
        }

        .bg-green-gradient {
            line-height: 30px;
        }

        label {
            line-height: 35px;
        }

        .Newproduct label {
            font-weight: normal;
            margin-left: 5px;
            line-height: 15px;
        }

        #products label {
            font-weight: normal;
            margin-left: 5px;
            line-height: 15px;
        }

        .btnvisitorprint {
            font-size: 24px;
            height: 50px;
            padding-top: 10px;
            margin-top: 60px;
            padding-bottom: 0px;
            background: #a13569 !important;
            color: #ffffff !important;
            text-align: center;
            display: block;
            -webkit-print-color-adjust: exact;
        }
        /*code form Print*/
        @media print {
            body * {
                visibility: hidden;
            }

            #section-to-print, #section-to-print * {
                visibility: visible;
            }

            #section-to-print {
                position: absolute;
                left: 0;
                top: 0;
            }

            .col-md-6, .col-sm-6, .col-xs-12 {
                width: 48% !important;
                float: left;
                min-height: 400px;
            }

            .btnvisitorprint {
                font-size: 24px;
                height: 50px;
                padding-top: 10px;
                margin-top: 60px;
                padding-bottom: 0px;
                background: #a13569;
                color: #fff;
                text-align: center;
                -webkit-print-color-adjust: exact;
            }

            RadioButton {
                padding-left: 10px;
                margin-left: 20px;
            }

            .terms {
                font-size: 11px !important;
            }
        }


        @media screen and (min-width:320px) and (max-width:480px) {
            #products tr td, #products tr th {
                width: 100%;
                display: block;
            }

            #Step1 .text-right {
                text-align: left;
            }
        }

        @media screen and (min-width:480px) and (max-width:767px) {
            #products tr td, #products tr th {
                width: 100%;
                display: block;
            }

            #Step1 .text-right {
                text-align: left;
            }
        }
    </style>

    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="js/adminlte.min.js"></script>

    <script type="text/javascript">
        function numeric(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
                return true;
            else {
                alert('Please Enter Numeric values.');
                return false;
            }
        }
    </script>


    <style>
        .radiobtn input[type="radio"] {
            width: 11px;
            height: 11px;
            display: inline-block;
            background: transparent;
            vertical-align: text-top;
            border: 2px solid #000000;
            border-radius: 50%;
            padding: 2px;
            margin: 0 5px;
        }
    </style>

    <style>
        .checkbox .btn, .checkbox-inline .btn {
            padding-left: 2em;
            min-width: 8em;
        }

        .checkbox label, .checkbox-inline label {
            text-align: left;
            padding-left: 0.5em;
        }

        .checkbox input[type="checkbox"] {
            float: none;
        }
    </style>

    <script language="javascript">
        function checkInput(ob) {
            var invalidChars = /[^0-9]/gi
            if (invalidChars.test(ob.value)) {
                ob.value = ob.value.replace(invalidChars, "");
            }
        }
    </script>



</head>
<body class="hold-transition layout-top-nav">
    <form id="form1" runat="server">
        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content container-fluid">
                    <div class="box box-solid center-block" style="max-width: 90%;">
                        <div class="row">
                            <div class="col-md-4 text-left">
                                <img src="images/GSI-Logo-Final-1-174x107.jpg" />
                            </div>
                            <div class="col-md-4 text-center" style="font:bolder 30px arial; color:maroon; vertical-align:text-bottom; ">
                                6th GARMENT SHOW OF INDIA - 2022                                        
                            </div>
                            <div class="col-md-4 text-right">
                                <img src="images/side-logo-details.jpg" />
                            </div>
                        </div>
                        
                        


                    </div>

                    <h2 class="section-title text-center wow fadeInDown"><font color="#44909D" size="+2"><b>VISITOR REGISTRATION</b></font></h2>
                    <%--<p style="text-align:center;"><strong>Entry subject to Organizer’s discretion. Age limit 25 years and above. Please carry your visiting card for entry. </strong></p>--%>

                    <div id="Step1" class="box box-solid center-block" style="max-width: 90%; box-shadow: 0 0 20px #b5b3b3; padding: 20px;">
                        <div class="row">
                            <div class="col-md-12 well" style="padding: 7px; border-color: #90EE90; background-color: #44909D; text-align: center">
                                <font color="#ffffff"><b>Aleady registered for Garment Show of India 2022 ? </b> </font>
                                <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Download Badge" OnClick="Button2_Click" />
                            </div>
                        </div>
                        <p style="color: #ff0000;">
                            <strong>Fields marked in asterisk (*) are mandatory</strong>
                        </p>
                        <p><strong>Please enter your infomation and proceed to the next step so we can build your Registration. </strong></p>
                        <div class="row">
                            <div class="col-md-2 text-right">
                                <label><strong>Title <font color="#FF0000" size="+1">*</font></strong></label>
                            </div>
                            <div class="col-md-4 text-left">
                                <asp:DropDownList ID="title1" class="form-control" runat="server" Style="border-color: #44909D;">
                                    <asp:ListItem Value="Select" Selected="selected">-- Select --</asp:ListItem>
                                    <asp:ListItem Value="Mr.">Mr.</asp:ListItem>
                                    <asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
                                    <asp:ListItem Value="Miss.">Miss.</asp:ListItem>
                                    <asp:ListItem Value="Ms.">Ms.</asp:ListItem>
                                    <asp:ListItem Value="Dr.">Dr.</asp:ListItem>
                                    <asp:ListItem Value="Prof.">Prof.</asp:ListItem>
                                    <asp:ListItem Value="Capt.">Capt.</asp:ListItem>
                                    <asp:ListItem Value="Hon.">Hon.</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 text-right">
                                <label><strong>First Name <font color="#FF0000" size="+1">*</font></strong></label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="FName" name="FName" placeholder="Enter first name" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>

                            </div>
                            <div class="col-md-2 text-right">
                                <label><strong>Last Name <font color="#FF0000" size="+1">*</font></strong></label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="LName" name="LName" placeholder="Enter last name" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>

                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-2 text-right">
                                <label><strong>Company Name <font color="#FF0000" size="+1">*</font></strong></label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="compnay" name="compnay" placeholder="Enter company name" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                            <div class="col-md-2 text-right">
                                <label><b>Job Title </b></label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="Position1" name="Position1" placeholder="Enter Job title" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 text-right">
                                <label><b>Office Address </b><font color="#FF0000" size="+1">*</font></label>
                            </div>
                            <div class="col-md-4">

                                <asp:TextBox ID="address" name="address" placeholder="Enter address" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                            <div class="col-md-2 text-right">
                                <label><b>Office Address 1</b></label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="address1" name="address1" placeholder="Enter address" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-2 text-right">
                                <label><b>City <font color="#FF0000" size="+1">*</font></b></label>
                            </div>
                            <div class="col-md-4">

                                <asp:TextBox ID="City" name="City" placeholder="Enter city" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                            <div class="col-md-2 text-right">
                                <label><b>State</b></label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="state1" name="state1" placeholder="Enter state" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-2 text-right">
                                <label><b>Postcode <font color="#FF0000" size="+1">*</font></b></label>

                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="postcode" name="postcode" placeholder="Enter Postcode" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>

                            <div class="col-md-2 text-right">
                                <label><b>Country <font color="#FF0000" size="+1">*</font></b></label>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList class="form-control" ID="country" runat="server" Style="border-color: #44909D;">
                                    <asp:ListItem Value="+91" Selected="selected">India</asp:ListItem>
                                    <asp:ListItem Value="+93" data-countrycode="AF">Afghanistan</asp:ListItem>
                                    <asp:ListItem Value="+213" data-countrycode="DZ">Algeria</asp:ListItem>
                                    <asp:ListItem Value="+376" data-countrycode="AD">Andorra</asp:ListItem>
                                    <asp:ListItem Value="+244" data-countrycode="AO">Angola</asp:ListItem>
                                    <asp:ListItem Value="+1264" data-countrycode="AI">Anguilla</asp:ListItem>
                                    <asp:ListItem Value="+1268" data-countrycode="AG">Antigua &amp; Barbuda</asp:ListItem>
                                    <asp:ListItem Value="+54" data-countrycode="AR">Argentina</asp:ListItem>
                                    <asp:ListItem Value="+374" data-countrycode="AM">Armenia</asp:ListItem>
                                    <asp:ListItem Value="+297" data-countrycode="AW">Aruba</asp:ListItem>
                                    <asp:ListItem Value="+61" data-countrycode="AU">Australia</asp:ListItem>
                                    <asp:ListItem Value="+43" data-countrycode="AT">Austria</asp:ListItem>
                                    <asp:ListItem Value="+994" data-countrycode="AZ">Azerbaijan</asp:ListItem>
                                    <asp:ListItem Value="+1242" data-countrycode="BS">Bahamas</asp:ListItem>
                                    <asp:ListItem Value="+973" data-countrycode="BH">Bahrain</asp:ListItem>
                                    <asp:ListItem Value="+880" data-countrycode="BD">Bangladesh</asp:ListItem>
                                    <asp:ListItem Value="+1246" data-countrycode="BB">Barbados</asp:ListItem>
                                    <asp:ListItem Value="+375" data-countrycode="BY">Belarus</asp:ListItem>
                                    <asp:ListItem Value="+32" data-countrycode="BE">Belgium</asp:ListItem>
                                    <asp:ListItem Value="+501" data-countrycode="BZ">Belize</asp:ListItem>
                                    <asp:ListItem Value="+229" data-countrycode="BJ">Benin</asp:ListItem>
                                    <asp:ListItem Value="+1441" data-countrycode="BM">Bermuda</asp:ListItem>
                                    <asp:ListItem Value="+975" data-countrycode="BT">Bhutan</asp:ListItem>
                                    <asp:ListItem Value="+591" data-countrycode="BO">Bolivia</asp:ListItem>
                                    <asp:ListItem Value="+387" data-countrycode="BA">Bosnia Herzegovina</asp:ListItem>
                                    <asp:ListItem Value="+267" data-countrycode="BW">Botswana</asp:ListItem>
                                    <asp:ListItem Value="+55" data-countrycode="BR">Brazil</asp:ListItem>
                                    <asp:ListItem Value="+673" data-countrycode="BN">Brunei</asp:ListItem>
                                    <asp:ListItem Value="+359" data-countrycode="BG">Bulgaria</asp:ListItem>
                                    <asp:ListItem Value="+226" data-countrycode="BF">Burkina Faso</asp:ListItem>
                                    <asp:ListItem Value="+257" data-countrycode="BI">Burundi</asp:ListItem>
                                    <asp:ListItem Value="+855" data-countrycode="KH">Cambodia</asp:ListItem>
                                    <asp:ListItem Value="+237" data-countrycode="CM">Cameroon</asp:ListItem>
                                    <asp:ListItem Value="+1." data-countrycode="CA">Canada</asp:ListItem>
                                    <asp:ListItem Value="+238" data-countrycode="CV">Cape Verde Islands</asp:ListItem>
                                    <asp:ListItem Value="+1345" data-countrycode="KY">Cayman Islands</asp:ListItem>
                                    <asp:ListItem Value="+236" data-countrycode="CF">Central African Republic</asp:ListItem>
                                    <asp:ListItem Value="+56" data-countrycode="CL">Chile</asp:ListItem>
                                    <asp:ListItem Value="+86" data-countrycode="CN">China</asp:ListItem>
                                    <asp:ListItem Value="+57" data-countrycode="CO">Colombia</asp:ListItem>
                                    <asp:ListItem Value="+269" data-countrycode="KM">Comoros</asp:ListItem>
                                    <asp:ListItem Value="+242" data-countrycode="CG">Congo</asp:ListItem>
                                    <asp:ListItem Value="+682" data-countrycode="CK">Cook Islands</asp:ListItem>
                                    <asp:ListItem Value="+506" data-countrycode="CR">Costa Rica</asp:ListItem>
                                    <asp:ListItem Value="+385" data-countrycode="HR">Croatia</asp:ListItem>
                                    <asp:ListItem Value="+53" data-countrycode="CU">Cuba</asp:ListItem>
                                    <asp:ListItem Value="+90" data-countrycode="CY">Cyprus - North</asp:ListItem>
                                    <asp:ListItem Value="+357" data-countrycode="CY">Cyprus - South</asp:ListItem>
                                    <asp:ListItem Value="+420" data-countrycode="CZ">Czech Republic</asp:ListItem>
                                    <asp:ListItem Value="+45" data-countrycode="DK">Denmark</asp:ListItem>
                                    <asp:ListItem Value="+253" data-countrycode="DJ">Djibouti</asp:ListItem>
                                    <asp:ListItem Value="+1809" data-countrycode="DM">Dominica</asp:ListItem>
                                    <asp:ListItem Value="+1809" data-countrycode="DO">Dominican Republic</asp:ListItem>
                                    <asp:ListItem Value="+593" data-countrycode="EC">Ecuador</asp:ListItem>
                                    <asp:ListItem Value="+20" data-countrycode="EG">Egypt</asp:ListItem>
                                    <asp:ListItem Value="+503" data-countrycode="SV">El Salvador</asp:ListItem>
                                    <asp:ListItem Value="+240" data-countrycode="GQ">Equatorial Guinea</asp:ListItem>
                                    <asp:ListItem Value="+291" data-countrycode="ER">Eritrea</asp:ListItem>
                                    <asp:ListItem Value="+372" data-countrycode="EE">Estonia</asp:ListItem>
                                    <asp:ListItem Value="+251" data-countrycode="ET">Ethiopia</asp:ListItem>
                                    <asp:ListItem Value="+500" data-countrycode="FK">Falkland Islands</asp:ListItem>
                                    <asp:ListItem Value="+298" data-countrycode="FO">Faroe Islands</asp:ListItem>
                                    <asp:ListItem Value="+679" data-countrycode="FJ">Fiji</asp:ListItem>
                                    <asp:ListItem Value="+358" data-countrycode="FI">Finland</asp:ListItem>
                                    <asp:ListItem Value="+33" data-countrycode="FR">France</asp:ListItem>
                                    <asp:ListItem Value="+594" data-countrycode="GF">French Guiana</asp:ListItem>
                                    <asp:ListItem Value="+689" data-countrycode="PF">French Polynesia</asp:ListItem>
                                    <asp:ListItem Value="+241" data-countrycode="GA">Gabon</asp:ListItem>
                                    <asp:ListItem Value="+220" data-countrycode="GM">Gambia</asp:ListItem>
                                    <asp:ListItem Value="+7880" data-countrycode="GE">Georgia</asp:ListItem>
                                    <asp:ListItem Value="+49" data-countrycode="DE">Germany</asp:ListItem>
                                    <asp:ListItem Value="+233" data-countrycode="GH">Ghana</asp:ListItem>
                                    <asp:ListItem Value="+350" data-countrycode="GI">Gibraltar</asp:ListItem>
                                    <asp:ListItem Value="+30" data-countrycode="GR">Greece</asp:ListItem>
                                    <asp:ListItem Value="+299" data-countrycode="GL">Greenland</asp:ListItem>
                                    <asp:ListItem Value="+1473" data-countrycode="GD">Grenada</asp:ListItem>
                                    <asp:ListItem Value="+590" data-countrycode="GP">Guadeloupe</asp:ListItem>
                                    <asp:ListItem Value="+671" data-countrycode="GU">Guam</asp:ListItem>
                                    <asp:ListItem Value="+502" data-countrycode="GT">Guatemala</asp:ListItem>
                                    <asp:ListItem Value="+224" data-countrycode="GN">Guinea</asp:ListItem>
                                    <asp:ListItem Value="+245" data-countrycode="GW">Guinea - Bissau</asp:ListItem>
                                    <asp:ListItem Value="+592" data-countrycode="GY">Guyana</asp:ListItem>
                                    <asp:ListItem Value="+509" data-countrycode="HT">Haiti</asp:ListItem>
                                    <asp:ListItem Value="+504" data-countrycode="HN">Honduras</asp:ListItem>
                                    <asp:ListItem Value="+852" data-countrycode="HK">Hong Kong</asp:ListItem>
                                    <asp:ListItem Value="+36" data-countrycode="HU">Hungary</asp:ListItem>
                                    <asp:ListItem Value="+354" data-countrycode="IS">Iceland</asp:ListItem>
                                    <asp:ListItem Value="+91" data-countrycode="IN">India</asp:ListItem>
                                    <asp:ListItem Value="+62" data-countrycode="ID">Indonesia</asp:ListItem>
                                    <asp:ListItem Value="+964" data-countrycode="IQ">Iraq</asp:ListItem>
                                    <asp:ListItem Value="+98" data-countrycode="IR">Iran</asp:ListItem>
                                    <asp:ListItem Value="+353" data-countrycode="IE">Ireland</asp:ListItem>
                                    <asp:ListItem Value="+972" data-countrycode="IL">Israel</asp:ListItem>
                                    <asp:ListItem Value="+39" data-countrycode="IT">Italy</asp:ListItem>
                                    <asp:ListItem Value="+1876" data-countrycode="JM">Jamaica</asp:ListItem>
                                    <asp:ListItem Value="+81" data-countrycode="JP">Japan</asp:ListItem>
                                    <asp:ListItem Value="+962" data-countrycode="JO">Jordan</asp:ListItem>
                                    <asp:ListItem Value="+7" data-countrycode="KZ">Kazakhstan</asp:ListItem>
                                    <asp:ListItem Value="+254" data-countrycode="KE">Kenya</asp:ListItem>
                                    <asp:ListItem Value="+686" data-countrycode="KI">Kiribati</asp:ListItem>
                                    <asp:ListItem Value="+850" data-countrycode="KP">Korea - North</asp:ListItem>
                                    <asp:ListItem Value="+82" data-countrycode="KR">Korea - South</asp:ListItem>
                                    <asp:ListItem Value="+965" data-countrycode="KW">Kuwait</asp:ListItem>
                                    <asp:ListItem Value="+996" data-countrycode="KG">Kyrgyzstan</asp:ListItem>
                                    <asp:ListItem Value="+856" data-countrycode="LA">Laos</asp:ListItem>
                                    <asp:ListItem Value="+371" data-countrycode="LV">Latvia</asp:ListItem>
                                    <asp:ListItem Value="+961" data-countrycode="LB">Lebanon</asp:ListItem>
                                    <asp:ListItem Value="+266" data-countrycode="LS">Lesotho</asp:ListItem>
                                    <asp:ListItem Value="+231" data-countrycode="LR">Liberia</asp:ListItem>
                                    <asp:ListItem Value="+218" data-countrycode="LY">Libya</asp:ListItem>
                                    <asp:ListItem Value="+417" data-countrycode="LI">Liechtenstein</asp:ListItem>
                                    <asp:ListItem Value="+370" data-countrycode="LT">Lithuania</asp:ListItem>
                                    <asp:ListItem Value="+352" data-countrycode="LU">Luxembourg</asp:ListItem>
                                    <asp:ListItem Value="+853" data-countrycode="MO">Macao</asp:ListItem>
                                    <asp:ListItem Value="+389" data-countrycode="MK">Macedonia</asp:ListItem>
                                    <asp:ListItem Value="+261" data-countrycode="MG">Madagascar</asp:ListItem>
                                    <asp:ListItem Value="+265" data-countrycode="MW">Malawi</asp:ListItem>
                                    <asp:ListItem Value="+60" data-countrycode="MY">Malaysia</asp:ListItem>
                                    <asp:ListItem Value="+960" data-countrycode="MV">Maldives</asp:ListItem>
                                    <asp:ListItem Value="+223" data-countrycode="ML">Mali</asp:ListItem>
                                    <asp:ListItem Value="+356" data-countrycode="MT">Malta</asp:ListItem>
                                    <asp:ListItem Value="+692" data-countrycode="MH">Marshall Islands</asp:ListItem>
                                    <asp:ListItem Value="+596" data-countrycode="MQ">Martinique</asp:ListItem>
                                    <asp:ListItem Value="+222" data-countrycode="MR">Mauritania</asp:ListItem>
                                    <asp:ListItem Value="+269" data-countrycode="YT">Mayotte</asp:ListItem>
                                    <asp:ListItem Value="+52" data-countrycode="MX">Mexico</asp:ListItem>
                                    <asp:ListItem Value="+691" data-countrycode="FM">Micronesia</asp:ListItem>
                                    <asp:ListItem Value="+373" data-countrycode="MD">Moldova</asp:ListItem>
                                    <asp:ListItem Value="+377" data-countrycode="MC">Monaco</asp:ListItem>
                                    <asp:ListItem Value="+976" data-countrycode="MN">Mongolia</asp:ListItem>
                                    <asp:ListItem Value="+1664" data-countrycode="MS">Montserrat</asp:ListItem>
                                    <asp:ListItem Value="+212" data-countrycode="MA">Morocco</asp:ListItem>
                                    <asp:ListItem Value="+258" data-countrycode="MZ">Mozambique</asp:ListItem>
                                    <asp:ListItem Value="+95" data-countrycode="MN">Myanmar</asp:ListItem>
                                    <asp:ListItem Value="+264" data-countrycode="NA">Namibia</asp:ListItem>
                                    <asp:ListItem Value="+674" data-countrycode="NR">Nauru</asp:ListItem>
                                    <asp:ListItem Value="+977" data-countrycode="NP">Nepal</asp:ListItem>
                                    <asp:ListItem Value="+31" data-countrycode="NL">Netherlands</asp:ListItem>
                                    <asp:ListItem Value="+687" data-countrycode="NC">New Caledonia</asp:ListItem>
                                    <asp:ListItem Value="+64" data-countrycode="NZ">New Zealand</asp:ListItem>
                                    <asp:ListItem Value="+505" data-countrycode="NI">Nicaragua</asp:ListItem>
                                    <asp:ListItem Value="+227" data-countrycode="NE">Niger</asp:ListItem>
                                    <asp:ListItem Value="+234" data-countrycode="NG">Nigeria</asp:ListItem>
                                    <asp:ListItem Value="+683" data-countrycode="NU">Niue</asp:ListItem>
                                    <asp:ListItem Value="+672" data-countrycode="NF">Norfolk Islands</asp:ListItem>
                                    <asp:ListItem Value="+670" data-countrycode="NP">Northern Marianas</asp:ListItem>
                                    <asp:ListItem Value="+47" data-countrycode="NO">Norway</asp:ListItem>
                                    <asp:ListItem Value="+968" data-countrycode="OM">Oman</asp:ListItem>
                                    <asp:ListItem Value="+92" data-countrycode="PK">Pakistan</asp:ListItem>
                                    <asp:ListItem Value="+680" data-countrycode="PW">Palau</asp:ListItem>
                                    <asp:ListItem Value="+507" data-countrycode="PA">Panama </asp:ListItem>
                                    <asp:ListItem Value="+675" data-countrycode="PG">Papua New Guinea</asp:ListItem>
                                    <asp:ListItem Value="+595" data-countrycode="PY">Paraguay</asp:ListItem>
                                    <asp:ListItem Value="+51" data-countrycode="PE">Peru</asp:ListItem>
                                    <asp:ListItem Value="+63" data-countrycode="PH">Philippines</asp:ListItem>
                                    <asp:ListItem Value="+48" data-countrycode="PL">Poland</asp:ListItem>
                                    <asp:ListItem Value="+351" data-countrycode="PT">Portugal</asp:ListItem>
                                    <asp:ListItem Value="+1787" data-countrycode="PR">Puerto Rico</asp:ListItem>
                                    <asp:ListItem Value="+974" data-countrycode="QA">Qatar</asp:ListItem>
                                    <asp:ListItem Value="+262" data-countrycode="RE">Reunion</asp:ListItem>
                                    <asp:ListItem Value="+40" data-countrycode="RO">Romania</asp:ListItem>
                                    <asp:ListItem Value="+7" data-countrycode="RU">Russia</asp:ListItem>
                                    <asp:ListItem Value="+250" data-countrycode="RW">Rwanda</asp:ListItem>
                                    <asp:ListItem Value="+378" data-countrycode="SM">San Marino</asp:ListItem>
                                    <asp:ListItem Value="+239" data-countrycode="ST">Sao Tome &amp; Principe</asp:ListItem>
                                    <asp:ListItem Value="+966" data-countrycode="SA">Saudi Arabia</asp:ListItem>
                                    <asp:ListItem Value="+221" data-countrycode="SN">Senegal</asp:ListItem>
                                    <asp:ListItem Value="+381" data-countrycode="CS">Serbia</asp:ListItem>
                                    <asp:ListItem Value="+248" data-countrycode="SC">Seychelles</asp:ListItem>
                                    <asp:ListItem Value="+232" data-countrycode="SL">Sierra Leone</asp:ListItem>
                                    <asp:ListItem Value="+65" data-countrycode="SG">Singapore</asp:ListItem>
                                    <asp:ListItem Value="+421" data-countrycode="SK">Slovak Republic</asp:ListItem>
                                    <asp:ListItem Value="+386" data-countrycode="SI">Slovenia</asp:ListItem>
                                    <asp:ListItem Value="+677" data-countrycode="SB">Solomon Islands</asp:ListItem>
                                    <asp:ListItem Value="+252" data-countrycode="SO">Somalia</asp:ListItem>
                                    <asp:ListItem Value="+27" data-countrycode="ZA">South Africa</asp:ListItem>
                                    <asp:ListItem Value="+34" data-countrycode="ES">Spain</asp:ListItem>
                                    <asp:ListItem Value="+94" data-countrycode="LK">Sri Lanka</asp:ListItem>
                                    <asp:ListItem Value="+290" data-countrycode="SH">St. Helena</asp:ListItem>
                                    <asp:ListItem Value="+1869" data-countrycode="KN">St. Kitts</asp:ListItem>
                                    <asp:ListItem Value="+1758" data-countrycode="SC">St. Lucia</asp:ListItem>
                                    <asp:ListItem Value="+597" data-countrycode="SR">Suriname</asp:ListItem>
                                    <asp:ListItem Value="+249" data-countrycode="SD">Sudan</asp:ListItem>
                                    <asp:ListItem Value="+268" data-countrycode="SZ">Swaziland</asp:ListItem>
                                    <asp:ListItem Value="+46" data-countrycode="SE">Sweden</asp:ListItem>
                                    <asp:ListItem Value="+41" data-countrycode="CH">Switzerland</asp:ListItem>
                                    <asp:ListItem Value="+886" data-countrycode="TW">Taiwan</asp:ListItem>
                                    <asp:ListItem Value="+992" data-countrycode="TJ">Tajikistan</asp:ListItem>
                                    <asp:ListItem Value="+66" data-countrycode="TH">Thailand</asp:ListItem>
                                    <asp:ListItem Value="+228" data-countrycode="TG">Togo</asp:ListItem>
                                    <asp:ListItem Value="+676" data-countrycode="TO">Tonga</asp:ListItem>
                                    <asp:ListItem Value="+1868" data-countrycode="TT">Trinidad &amp; Tobago</asp:ListItem>
                                    <asp:ListItem Value="+216" data-countrycode="TN">Tunisia</asp:ListItem>
                                    <asp:ListItem Value="+90" data-countrycode="TR">Turkey</asp:ListItem>
                                    <asp:ListItem Value="+993" data-countrycode="TM">Turkmenistan</asp:ListItem>
                                    <asp:ListItem Value="+1649" data-countrycode="TC">Turks &amp; Caicos Islands</asp:ListItem>
                                    <asp:ListItem Value="+688" data-countrycode="TV">Tuvalu</asp:ListItem>
                                    <asp:ListItem Value="+256" data-countrycode="UG">Uganda</asp:ListItem>
                                    <asp:ListItem Value="+44" data-countrycode="GB">UK</asp:ListItem>
                                    <asp:ListItem Value="+380" data-countrycode="UA">Ukraine</asp:ListItem>
                                    <asp:ListItem Value="+971" data-countrycode="AE">United Arab Emirates</asp:ListItem>
                                    <asp:ListItem Value="+598" data-countrycode="UY">Uruguay</asp:ListItem>
                                    <asp:ListItem Value="+1" data-countrycode="US">USA</asp:ListItem>
                                    <asp:ListItem Value="+998" data-countrycode="UZ">Uzbekistan</asp:ListItem>
                                    <asp:ListItem Value="+678" data-countrycode="VU">Vanuatu</asp:ListItem>
                                    <asp:ListItem Value="+379" data-countrycode="VA">Vatican City</asp:ListItem>
                                    <asp:ListItem Value="+58" data-countrycode="VE">Venezuela</asp:ListItem>
                                    <asp:ListItem Value="+84" data-countrycode="VN">Vietnam</asp:ListItem>
                                    <asp:ListItem Value="+1  " data-countrycode="VG">Virgin Islands - British</asp:ListItem>
                                    <asp:ListItem Value="+1 " data-countrycode="VI">Virgin Islands - US</asp:ListItem>
                                    <asp:ListItem Value="+681" data-countrycode="WF">Wallis &amp; Futuna</asp:ListItem>
                                    <asp:ListItem Value="+969" data-countrycode="YE">Yemen (North)</asp:ListItem>
                                    <asp:ListItem Value="+967" data-countrycode="YE">Yemen (South)</asp:ListItem>
                                    <asp:ListItem Value="+260" data-countrycode="ZM">Zambia</asp:ListItem>
                                    <asp:ListItem Value="+263" data-countrycode="ZW">Zimbabwe</asp:ListItem>
                                </asp:DropDownList>
                                <script type="text/javascript">
                                    $('#<%= country.ClientID %>').change(function () {
                                        $('#<%= Label1.ClientID %>').text($(this).val());
                                        $('#<%= Label2.ClientID %>').text($(this).val());
                                    });
                                </script>

                                <%--<asp:DropDownList ID="country" class="form-control" runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "OnSelectedIndexChanged">--%>
                            </div>
                        </div>


                        <div class="row">

                            <div class="col-md-2 text-right">
                                <label><b>Phone</b></label>
                            </div>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <asp:Label ID="Label2" runat="server" Text="+91" class="input-group-addon"></asp:Label>
                                    <asp:TextBox ID="citycode" name="citycode" class="form-control" runat="server" onkeyup="checkInput(this)" MaxLength="5" placeholder="STDcode" Style="width: 75px; border-color: #44909D;"></asp:TextBox>
                                    <asp:TextBox ID="phone" name="phone" class="form-control" runat="server" onkeyup="checkInput(this)" MaxLength="10" placeholder="Phone no" Style="width: 200px; border-color: #44909D;"></asp:TextBox>

                                </div>
                            </div>

                            <div class="col-md-2 text-right">
                                <label><b>Mobile <font color="#FF0000" size="+1">*</font></b></label>
                            </div>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <asp:Label ID="Label1" runat="server" Text="+91" class="input-group-addon"></asp:Label>
                                    <asp:TextBox ID="mobile" name="mobile" placeholder="Mobile Number" class="form-control" runat="server" onkeyup="checkInput(this)" MaxLength="15" Style="border-color: #44909D;"></asp:TextBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-2 text-right">
                                <label><b>Email <font color="#FF0000" size="+1">*</font></b></label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="email" name="email" placeholder="example@email.com" class="form-control" pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" runat="server" TextMode="Email" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                            <div class="col-md-2 text-right">
                                <label><b>Website <font color="#FF0000" size="+1"></font></b></label>
                            </div>
                            <div class="col-md-4">

                                <asp:TextBox ID="website" name="website" placeholder="Enter website" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-md-12">&nbsp;</div>

                        </div>
                        <%-- <div class="row">
                            <div class="col-md-12">
                                <font color="#FF0000" size="-1"><b>Please tick(√) in the box</b></font>

                            </div>
                        </div>
                       <div class="row">
                            <div class="col-md-12 well" style="padding: 1px; background-color: #E3F8FE; border-color: #085cad;">
                                &nbsp;
                                <asp:Label ID="Label39" runat="server" Text="Label"><B><font color="#000000">1. Choose your nature of organisation</font></B></asp:Label><font color="#FF0000" size="+1">*</font>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:DropDownList ID="natureoforganisation" class="form-control" runat="server" Style="border-color: #44909D;" OnSelectedIndexChanged="natureoforganisation_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="Select" Selected="selected">-- Select --</asp:ListItem>
                                    <asp:ListItem Value="Manufacturer">Manufacturer</asp:ListItem>
                                    <asp:ListItem Value="Electrical Contractor">Electrical Contractor</asp:ListItem>
                                    <asp:ListItem Value="Bulk User - Industry">Bulk User - Industry</asp:ListItem>
                                    <asp:ListItem Value="E-Mobility">E-Mobility</asp:ListItem>
                                    <asp:ListItem Value="Component Manufacturer">Component Manufacturer</asp:ListItem>
                                    <asp:ListItem Value="Architect & Interior Designers">Architect & Interior Designers</asp:ListItem>
                                    <asp:ListItem Value="Facility Management">Facility Management</asp:ListItem>
                                    <asp:ListItem Value="Renewable Energy">Renewable Energy</asp:ListItem>
                                    <asp:ListItem Value="Student">Student</asp:ListItem>
                                    <asp:ListItem Value="EPC">EPC</asp:ListItem>
                                    <asp:ListItem Value="Energy Storage">Energy Storage</asp:ListItem>
                                    <asp:ListItem Value="Bulk User - Defence">Bulk User - Defence</asp:ListItem>
                                    <asp:ListItem Value="MEP Consultant">MEP Consultant</asp:ListItem>
                                    <asp:ListItem Value="Fire Fighting">Fire Fighting</asp:ListItem>
                                    <asp:ListItem Value="Electric Utility">Electric Utility</asp:ListItem>
                                    <asp:ListItem Value="Media">Media</asp:ListItem>
                                    <asp:ListItem Value="Importer/ Exporter">Importer/ Exporter</asp:ListItem>
                                    <asp:ListItem Value="Bulk User - Home, Hotel, Hospital, Offices">Bulk User - Home, Hotel, Hospital, Offices</asp:ListItem>
                                    <asp:ListItem Value="Academics">Academics</asp:ListItem>
                                    <asp:ListItem Value="Real Estate Developer">Real Estate Developer</asp:ListItem>
                                    <asp:ListItem Value="Design Studio and Consulting Company">Design Studio and Consulting Company</asp:ListItem>
                                    <asp:ListItem Value="Investor">Investor</asp:ListItem>
                                    <asp:ListItem Value="Consultant">Consultant</asp:ListItem>
                                    <asp:ListItem Value="Raw Material Supplier">Raw Material Supplier</asp:ListItem>
                                    <asp:ListItem Value="Govt/PSU/Institutions">Govt/PSU/Institutions</asp:ListItem>
                                    <asp:ListItem Value="Bulk User - Railway">Bulk User - Railway</asp:ListItem>
                                    <asp:ListItem Value="Energy Management Consultant">Energy Management Consultant</asp:ListItem>
                                    <asp:ListItem Value="Building Planners">Building Planners</asp:ListItem>
                                    <asp:ListItem Value="Trader">Trader</asp:ListItem>
                                    <asp:ListItem Value="Commercial Building">Commercial Building</asp:ListItem>
                                    <asp:ListItem Value="Industry Association">Industry Association</asp:ListItem>
                                    <asp:ListItem Value="System Integrator">System Integrator</asp:ListItem>
                                    <asp:ListItem Value="Bulk User - Defence">Bulk User - Defence</asp:ListItem>
                                    <asp:ListItem Value="Central and State PWD">Central and State PWD</asp:ListItem>
                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="othernature" name="othernature" placeholder="Please specify" class="form-control" runat="server" Style="border-color: #44909D;"></asp:TextBox>
                            </div>
                        </div>--%>

                        <div class="row">
                            <div class="col-md-12">&nbsp;</div>

                        </div>
                        <%--<div class="row">
                            <div class="col-md-12 well" style="padding: 1px; background-color: #E3F8FE; border-color: #085cad;">
                                &nbsp;
                                <asp:Label ID="Label18" runat="server" Text="Label"><B><font color="#000000">2. Advance Distribution Management System</font></B></asp:Label><font color="#FF0000" size="+1">*</font>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B1" ID="B1" />&nbsp;
                                <asp:Label ID="Label12" runat="server" Text="Label">Advance Distribution Management System</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B2" ID="B2" />&nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Label">Advance Energy Management System</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B3" ID="B3" />&nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Label">Building Solutions (ELV) - Building Management & Fire Safety</asp:Label>
                            </div>

                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B4" ID="B4" />&nbsp;
                                <asp:Label ID="Label5" runat="server" Text="Label">Cables: Accessories</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B5" ID="B5" />&nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Label">Cables: Communication</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B6" ID="B6" />&nbsp;
                                <asp:Label ID="Label7" runat="server" Text="Label">Cables: Control</asp:Label>
                            </div>

                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B7" ID="B7" />&nbsp;
                                <asp:Label ID="Label8" runat="server" Text="Label">Cables: House wiring</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B8" ID="B8" />&nbsp;
                                <asp:Label ID="Label9" runat="server" Text="Label">Cables: Instrumentation</asp:Label>
                            </div>

                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B9" ID="B9" />&nbsp;
                                <asp:Label ID="Label10" runat="server" Text="Label">Cables: Power – HT and LT</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B10" ID="B10" />&nbsp;
                                <asp:Label ID="Label11" runat="server" Text="Label">Cables: Specialty</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B11" ID="B11" />&nbsp;
                                <asp:Label ID="Label13" runat="server" Text="Label">Capacitors: Electrolytic</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B12" ID="B12" />&nbsp;
                                <asp:Label ID="Label15" runat="server" Text="Label">Capacitors: Power</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B13" ID="B13" />&nbsp;
                                <asp:Label ID="Label16" runat="server" Text="Label">Conductors and Accessories</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B14" ID="B14" />&nbsp;
                                <asp:Label ID="Label17" runat="server" Text="Label">Control and Relay and Instrumentation Panels</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B15" ID="B15" />&nbsp;
                                <asp:Label ID="Label19" runat="server" Text="Label">Design and Consultancy</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B16" ID="B16" />&nbsp;
                                <asp:Label ID="Label38" runat="server" Text="Label">Energy Meters</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B17" ID="B17" />&nbsp;
                                <asp:Label ID="Label40" runat="server" Text="Label">Engineering Projects</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B18" ID="B18" />&nbsp;
                                <asp:Label ID="Label41" runat="server" Text="Label">Generators / Alternators – AC and DC</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B19" ID="B19" />&nbsp;
                                <asp:Label ID="Label42" runat="server" Text="Label">Geographical Information System</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B20" ID="B20" />&nbsp;
                                <asp:Label ID="Label43" runat="server" Text="Label">Grid Analytics</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B21" ID="B21" />&nbsp;
                                <asp:Label ID="Label44" runat="server" Text="Label">Industrial Control and Automation Systems</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B22" ID="B22" />&nbsp;
                                <asp:Label ID="Label45" runat="server" Text="Label">Instrument Transformers – Current</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B23" ID="B23" />&nbsp;
                                <asp:Label ID="Label46" runat="server" Text="Label">Instrument Transformers – CVT</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B24" ID="B24" />&nbsp;
                                <asp:Label ID="Label47" runat="server" Text="Label">Instrument Transformers – Voltage</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B25" ID="B25" />&nbsp;
                                <asp:Label ID="Label48" runat="server" Text="Label">Instruments - Sensing, Measuring, Indicating, Testing etc.</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B26" ID="B26" />&nbsp;
                                <asp:Label ID="Label49" runat="server" Text="Label">Insulators – Composite</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B27" ID="B27" />&nbsp;
                                <asp:Label ID="Label50" runat="server" Text="Label">Insulators – Polymeric</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B28" ID="B28" />&nbsp;
                                <asp:Label ID="Label51" runat="server" Text="Label">Insulators – Porcelain</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B29" ID="B29" />&nbsp;
                                <asp:Label ID="Label52" runat="server" Text="Label">Lighting and Lighting Accessories</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B30" ID="B30" />&nbsp;
                                <asp:Label ID="Label53" runat="server" Text="Label">Motors AC</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B31" ID="B31" />&nbsp;
                                <asp:Label ID="Label54" runat="server" Text="Label">Motors DC</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B32" ID="B32" />&nbsp;
                                <asp:Label ID="Label55" runat="server" Text="Label">Motors Flame Proof</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B33" ID="B33" />&nbsp;
                                <asp:Label ID="Label56" runat="server" Text="Label">Power Electronics, UPS, Variable Speed AC/DC Drives</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B34" ID="B34" />&nbsp;
                                <asp:Label ID="Label57" runat="server" Text="Label">SCADA</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B35" ID="B35" />&nbsp;
                                <asp:Label ID="Label58" runat="server" Text="Label">Stamping and Laminations</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B36" ID="B36" />&nbsp;
                                <asp:Label ID="Label59" runat="server" Text="Label">Surge Arrestors</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B37" ID="B37" />&nbsp;
                                <asp:Label ID="Label60" runat="server" Text="Label">Switchgear and Controlgear - LV</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B38" ID="B38" />&nbsp;
                                <asp:Label ID="Label61" runat="server" Text="Label">Switchgear and Controlgear – EHV and HV</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B39" ID="B39" />&nbsp;
                                <asp:Label ID="Label62" runat="server" Text="Label">Switchgear and Controlgear – MV</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B40" ID="B40" />&nbsp;
                                <asp:Label ID="Label63" runat="server" Text="Label">TELECOM Equipment</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B41" ID="B41" />&nbsp;
                                <asp:Label ID="Label64" runat="server" Text="Label">Transformers: Distribution</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B42" ID="B42" />&nbsp;
                                <asp:Label ID="Label65" runat="server" Text="Label">Transformers: Power</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B43" ID="B43" />&nbsp;
                                <asp:Label ID="Label66" runat="server" Text="Label">Transmission Line – Accessories and Hardware</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B44" ID="B44" />&nbsp;
                                <asp:Label ID="Label67" runat="server" Text="Label">Transmission Line – Towers</asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B45" ID="B45" />&nbsp;
                                <asp:Label ID="Label68" runat="server" Text="Label">Winding Wires</asp:Label>
                            </div>

                            <div class="col-md-6">
                                <asp:CheckBox runat="server" name="B46" ID="B46" />&nbsp;
                                <asp:Label ID="Label14" runat="server" Text="Label">Other Products (Please Specify)</asp:Label>
                                <div id="other2" style="display: none">
                                    <asp:TextBox ID="B46Other" name="B46Other" placeholder="Please Specify" class="form-control" runat="server" Style="border-color: #085cad;"></asp:TextBox>
                                </div>
                            </div>

                        </div>--%>

                        <div class="row">
                            <div class="col-md-12">&nbsp; </div>
                        </div>



                        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $("#C10").click(function () {
                                    if ($(this).is(":checked")) {
                                        $("#other3").show();
                                    } else {
                                        $("#other3").hide();
                                    }
                                });

                                $("#B46").click(function () {
                                    if ($(this).is(":checked")) {
                                        $("#other2").show();
                                    } else {
                                        $("#other2").hide();
                                    }
                                });

                                $("#A7").click(function () {
                                    if ($(this).is(":checked")) {
                                        $("#other1").show();
                                    } else {
                                        $("#other1").hide();
                                    }
                                });

                                $("#D6").click(function () {
                                    if ($(this).is(":checked")) {
                                        $("#other4").show();
                                    } else {
                                        $("#other4").hide();
                                    }
                                });

                            });</script>


                        <div class="row">
                            <div class="col-md-12">&nbsp; </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">&nbsp; </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <asp:Button ID="Button1" CssClass="btn btn-outline-danger btn-lg" Font-Bold="true" runat="server" Style="padding: 7px; border-color: #44909D;" Text="Submit" OnClick="Button1_Click" />

                            </div>
                        </div>
                </section>
            </div>

        </div>
    </form>
</body>

</html>
