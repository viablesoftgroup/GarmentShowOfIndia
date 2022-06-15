<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alkdkliouoewncldeas.aspx.cs" Inherits="DistribuelecMay22BlrVD.alkdkliouoewncldeas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
<link rel="icon" href="images/ieema-logo-1.png?v=1" type="image/x-icon" />
     <title>Distribuelec &#8211; Buildelec 2022 &#8211; IEEMA</title>
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
        .btnsize{
            font-size:23px!important;
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
            text-align: left;
            margin: 5px 0 0 0;
        }

        RadioButton{
    padding-left:10px;
    margin-left:20px;
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
            RadioButton{
    padding-left:10px;
    margin-left:20px;
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

    <script type="text/javascript" >
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
      margin:0 5px;
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
    .checkbox input[type="checkbox"]{
        float:none;
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
                        <img src="images/headerieema.jpg" width="100%"  />
                    </div>
                    <h2 class="section-title text-center wow fadeInDown"><font color="#44909D" size="+2"><b>Visitor Data Download</b></font> </h2> 
                    <%--<p style="text-align:center;"><strong>Entry subject to Organizer’s discretion. Age limit 25 years and above. Please carry your visiting card for entry. </strong></p>--%>
                     
                    <div id="Step1" class="box box-solid center-block" style="max-width: 90%; box-shadow: 0 0 20px #b5b3b3; padding: 20px;">
                        <div class="row">
                    <div class="col-md-12 well" style="padding:7px; border-color:#90EE90; background-color:#44909D; text-align:center">
                        <font color="#ffffff" ><b>Click on button to download visitor data </b> </font>
                     <%--   <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Download Visitor Data" OnClick="Button2_Click" /> --%>
                          <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Download Visitor Data" OnClick="Button1_Click" /> 
                    </div>
                </div>
                            
                </section></div>
          
     </div>
    </form>
</body> 

</html>