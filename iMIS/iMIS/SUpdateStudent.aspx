﻿<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="SUpdateStudent.aspx.cs" Inherits="iMIS.SUpdateStudent" %>

<!DOCTYPE html>

<html>
<head id="Head">
    <script src="Scripts/jquery-2.1.0.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/Site.js" type="text/javascript"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<title>Update My Info</title>
    <style type="text/css">
        .auto-style1 {
            height: 89px;
        }
        .auto-style2 {
            width: 27px;
        }
    </style>
</head>
<body>
   <div>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <ul class="nav navbar-nav">
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">View
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="StudentHome.aspx">Profile</a></li>
          <li><a href="JobPortal.aspx">Job Portal</a></li>
              
              </ul>
      </li>
      <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Add
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="AddStudent.aspx">Profile</a></li>
          <li><a href="Interests.aspx">Interests</a></li>
              </ul>
      </li>
              <li><a href="SUpdateStudent.aspx">Update Profile</a></li>
      </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="DefaultStudent.aspx"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
    </ul>
        </div>
    </nav>
        </div>
    <br /><br /><br />
    <div>
        <form id="studentdetails" runat="server">
        <h2 align="center">Update Info</h2>
            <br />
    <table class="table table-borderless table-responsive fs15" style=" background-color: transparent;">
<%-- ----------------------------------------UnderGrad Details---------------------------------------------- --%>                
        <tr><td class="auto-style1"></td>
            <td class="auto-style1">
        <h1><small>Education (Under Grad)</small></h1>
        </td><td class="auto-style1"></td>
        </tr>
        <tr>
            <td></td>
             <td>
        Major
   </td>
    <td>
        <asp:TextBox ID="iUGMajor" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td></td>
   
    <td>
        GPA (Percentage)
   </td>
    <td>
        <asp:TextBox ID="iUGGPA" class="form-control" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="* 0-100 Only."
            ControlToValidate="iUGGPA" ValidationExpression="(100)|(0*\d{1,2})" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="addug"></asp:RegularExpressionValidator>
    </td>
            <td class="auto-style2"></td>
    <td>
        University
   </td>
    <td>
        <asp:TextBox ID="iUGUniversity" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td></td>
        </tr>
         <tr>
      <td></td>      
    <td>
        Country
   </td>
    <td>
       <select class="form-control" id="iUGCountry" runat="server">
            <option value="AF">Afghanistan</option><option value="AX">Åland Islands</option><option value="AL">Albania</option><option value="DZ">Algeria</option><option value="AS">American Samoa</option><option value="AD">Andorra</option><option value="AO">Angola</option><option value="AI">Anguilla</option><option value="AQ">Antarctica</option><option value="AG">Antigua and Barbuda</option><option value="AR">Argentina</option><option value="AM">Armenia</option><option value="AW">Aruba</option><option value="AU">Australia</option><option value="AT">Austria</option><option value="AZ">Azerbaijan</option><option value="BS">Bahamas</option><option value="BH">Bahrain</option><option value="BD">Bangladesh</option><option value="BB">Barbados</option><option value="BY">Belarus</option><option value="BE">Belgium</option><option value="BZ">Belize</option><option value="BJ">Benin</option><option value="BM">Bermuda</option><option value="BT">Bhutan</option><option value="BO">Bolivia, Plurinational State of</option><option value="BQ">Bonaire, Sint Eustatius and Saba</option><option value="BA">Bosnia and Herzegovina</option><option value="BW">Botswana</option><option value="BV">Bouvet Island</option><option value="BR">Brazil</option><option value="IO">British Indian Ocean Territory</option><option value="BN">Brunei Darussalam</option><option value="BG">Bulgaria</option><option value="BF">Burkina Faso</option><option value="BI">Burundi</option><option value="KH">Cambodia</option><option value="CM">Cameroon</option><option value="CA">Canada</option><option value="CV">Cape Verde</option><option value="KY">Cayman Islands</option><option value="CF">Central African Republic</option><option value="TD">Chad</option><option value="CL">Chile</option><option value="CN">China</option><option value="CX">Christmas Island</option><option value="CC">Cocos (Keeling) Islands</option><option value="CO">Colombia</option><option value="KM">Comoros</option><option value="CG">Congo</option><option value="CD">Congo, the Democratic Republic of the</option><option value="CK">Cook Islands</option><option value="CR">Costa Rica</option><option value="CI">Côte d'Ivoire</option><option value="HR">Croatia</option><option value="CU">Cuba</option><option value="CW">Curaçao</option><option value="CY">Cyprus</option><option value="CZ">Czech Republic</option><option value="DK">Denmark</option><option value="DJ">Djibouti</option><option value="DM">Dominica</option><option value="DO">Dominican Republic</option><option value="EC">Ecuador</option><option value="EG">Egypt</option><option value="SV">El Salvador</option><option value="GQ">Equatorial Guinea</option><option value="ER">Eritrea</option><option value="EE">Estonia</option><option value="ET">Ethiopia</option><option value="FK">Falkland Islands (Malvinas)</option><option value="FO">Faroe Islands</option><option value="FJ">Fiji</option><option value="FI">Finland</option><option value="FR">France</option><option value="GF">French Guiana</option><option value="PF">French Polynesia</option><option value="TF">French Southern Territories</option><option value="GA">Gabon</option><option value="GM">Gambia</option><option value="GE">Georgia</option><option value="DE">Germany</option><option value="GH">Ghana</option><option value="GI">Gibraltar</option><option value="GR">Greece</option><option value="GL">Greenland</option><option value="GD">Grenada</option><option value="GP">Guadeloupe</option><option value="GU">Guam</option><option value="GT">Guatemala</option><option value="GG">Guernsey</option><option value="GN">Guinea</option><option value="GW">Guinea-Bissau</option><option value="GY">Guyana</option><option value="HT">Haiti</option><option value="HM">Heard Island and McDonald Islands</option><option value="VA">Holy See (Vatican City State)</option><option value="HN">Honduras</option><option value="HK">Hong Kong</option><option value="HU">Hungary</option><option value="IS">Iceland</option><option value="IN">India</option><option value="ID">Indonesia</option><option value="IR">Iran, Islamic Republic of</option><option value="IQ">Iraq</option><option value="IE">Ireland</option><option value="IM">Isle of Man</option><option value="IL">Israel</option><option value="IT">Italy</option><option value="JM">Jamaica</option><option value="JP">Japan</option><option value="JE">Jersey</option><option value="JO">Jordan</option><option value="KZ">Kazakhstan</option><option value="KE">Kenya</option><option value="KI">Kiribati</option><option value="KP">Korea, Democratic People's Republic of</option><option value="KR">Korea, Republic of</option><option value="KW">Kuwait</option><option value="KG">Kyrgyzstan</option><option value="LA">Lao People's Democratic Republic</option><option value="LV">Latvia</option><option value="LB">Lebanon</option><option value="LS">Lesotho</option><option value="LR">Liberia</option><option value="LY">Libya</option><option value="LI">Liechtenstein</option><option value="LT">Lithuania</option><option value="LU">Luxembourg</option><option value="MO">Macao</option><option value="MK">Macedonia, the former Yugoslav Republic of</option><option value="MG">Madagascar</option><option value="MW">Malawi</option><option value="MY">Malaysia</option><option value="MV">Maldives</option><option value="ML">Mali</option><option value="MT">Malta</option><option value="MH">Marshall Islands</option><option value="MQ">Martinique</option><option value="MR">Mauritania</option><option value="MU">Mauritius</option><option value="YT">Mayotte</option><option value="MX">Mexico</option><option value="FM">Micronesia, Federated States of</option><option value="MD">Moldova, Republic of</option><option value="MC">Monaco</option><option value="MN">Mongolia</option><option value="ME">Montenegro</option><option value="MS">Montserrat</option><option value="MA">Morocco</option><option value="MZ">Mozambique</option><option value="MM">Myanmar</option><option value="NA">Namibia</option><option value="NR">Nauru</option><option value="NP">Nepal</option><option value="NL">Netherlands</option><option value="NC">New Caledonia</option><option value="NZ">New Zealand</option><option value="NI">Nicaragua</option><option value="NE">Niger</option><option value="NG">Nigeria</option><option value="NU">Niue</option><option value="NF">Norfolk Island</option><option value="MP">Northern Mariana Islands</option><option value="NO">Norway</option><option value="OM">Oman</option><option value="PK">Pakistan</option><option value="PW">Palau</option><option value="PS">Palestinian Territory, Occupied</option><option value="PA">Panama</option><option value="PG">Papua New Guinea</option><option value="PY">Paraguay</option><option value="PE">Peru</option><option value="PH">Philippines</option><option value="PN">Pitcairn</option><option value="PL">Poland</option><option value="PT">Portugal</option><option value="PR">Puerto Rico</option><option value="QA">Qatar</option><option value="RE">Réunion</option><option value="RO">Romania</option><option value="RU">Russian Federation</option><option value="RW">Rwanda</option><option value="BL">Saint Barthélemy</option><option value="SH">Saint Helena, Ascension and Tristan da Cunha</option><option value="KN">Saint Kitts and Nevis</option><option value="LC">Saint Lucia</option><option value="MF">Saint Martin (French part)</option><option value="PM">Saint Pierre and Miquelon</option><option value="VC">Saint Vincent and the Grenadines</option><option value="WS">Samoa</option><option value="SM">San Marino</option><option value="ST">Sao Tome and Principe</option><option value="SA">Saudi Arabia</option><option value="SN">Senegal</option><option value="RS">Serbia</option><option value="SC">Seychelles</option><option value="SL">Sierra Leone</option><option value="SG">Singapore</option><option value="SX">Sint Maarten (Dutch part)</option><option value="SK">Slovakia</option><option value="SI">Slovenia</option><option value="SB">Solomon Islands</option><option value="SO">Somalia</option><option value="ZA">South Africa</option><option value="GS">South Georgia and the South Sandwich Islands</option><option value="SS">South Sudan</option><option value="ES">Spain</option><option value="LK">Sri Lanka</option><option value="SD">Sudan</option><option value="SR">Suriname</option><option value="SJ">Svalbard and Jan Mayen</option><option value="SZ">Swaziland</option><option value="SE">Sweden</option><option value="CH">Switzerland</option><option value="SY">Syrian Arab Republic</option><option value="TW">Taiwan, Province of China</option><option value="TJ">Tajikistan</option><option value="TZ">Tanzania, United Republic of</option><option value="TH">Thailand</option><option value="TL">Timor-Leste</option><option value="TG">Togo</option><option value="TK">Tokelau</option><option value="TO">Tonga</option><option value="TT">Trinidad and Tobago</option><option value="TN">Tunisia</option><option value="TR">Turkey</option><option value="TM">Turkmenistan</option><option value="TC">Turks and Caicos Islands</option><option value="TV">Tuvalu</option><option value="UG">Uganda</option><option value="UA">Ukraine</option><option value="AE">United Arab Emirates</option><option value="GB">United Kingdom</option><option value="US">United States</option><option value="UM">United States Minor Outlying Islands</option><option value="UY">Uruguay</option><option value="UZ">Uzbekistan</option><option value="VU">Vanuatu</option><option value="VE">Venezuela, Bolivarian Republic of</option><option value="VN">Viet Nam</option><option value="VG">Virgin Islands, British</option><option value="VI">Virgin Islands, U.S.</option><option value="WF">Wallis and Futuna</option><option value="EH">Western Sahara</option><option value="YE">Yemen</option><option value="ZM">Zambia</option><option value="ZW">Zimbabwe</option>
       </select>
    </td>
            <td class="auto-style2"></td>
             <td>
        Year (YYYY)
   </td>
    <td>
        <asp:TextBox ID="iUGYear" class="form-control" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="* 4 digit Number Only."
            ControlToValidate="iGYear" ValidationExpression="^([0-9]{4})$" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="upug"></asp:RegularExpressionValidator>
    </td>
            <td></td>
        </tr>
                 <tr><td colspan="7" align="center"><div class="text-success fade in" id="successug" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Death Star Updated <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
        <tr><td></td></tr><tr><td></td></tr>
        <tr>
            <td colspan=7 align="center">
              <asp:Button ID="upmoreug" runat="server" class="btn btn-success" Text="+ Update Education"
              OnClick="submitupmoreug_Click" ValidationGroup="upug" />
            </td>
        </tr>
        
<%-- -------------------------------------------Grad Details------------------------------------------------ --%>
        <tr><td></td>
            <td>
        <h1><small>Education (Grad)</small></h1>
        </td><td></td>
        </tr>
        <tr>
            <td></td>
    <td>
        Major
   </td>
    <td>
        <asp:TextBox ID="iGMajor" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td class="auto-style2"></td>
    
        </tr>
         <tr>
            <td></td>
             <td>
        GPA (Percentage)
   </td>
    <td>
        <asp:TextBox ID="iGGPA" class="form-control" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="* 1-100 Only."
            ControlToValidate="iGGPA" ValidationExpression="(100)|(0*\d{1,2})" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="addg"></asp:RegularExpressionValidator>
    </td><td class="auto-style2"></td>
    <td>
        University
   </td>
    <td>
        <asp:TextBox ID="iGUniversity" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td></td>
    
        </tr>
        <tr>
            <td></td>
            <td>
        Country
   </td>
    <td>
       <select class="form-control" id="iGCountry" runat="server">
            <option value="AF">Afghanistan</option><option value="AX">Åland Islands</option><option value="AL">Albania</option><option value="DZ">Algeria</option><option value="AS">American Samoa</option><option value="AD">Andorra</option><option value="AO">Angola</option><option value="AI">Anguilla</option><option value="AQ">Antarctica</option><option value="AG">Antigua and Barbuda</option><option value="AR">Argentina</option><option value="AM">Armenia</option><option value="AW">Aruba</option><option value="AU">Australia</option><option value="AT">Austria</option><option value="AZ">Azerbaijan</option><option value="BS">Bahamas</option><option value="BH">Bahrain</option><option value="BD">Bangladesh</option><option value="BB">Barbados</option><option value="BY">Belarus</option><option value="BE">Belgium</option><option value="BZ">Belize</option><option value="BJ">Benin</option><option value="BM">Bermuda</option><option value="BT">Bhutan</option><option value="BO">Bolivia, Plurinational State of</option><option value="BQ">Bonaire, Sint Eustatius and Saba</option><option value="BA">Bosnia and Herzegovina</option><option value="BW">Botswana</option><option value="BV">Bouvet Island</option><option value="BR">Brazil</option><option value="IO">British Indian Ocean Territory</option><option value="BN">Brunei Darussalam</option><option value="BG">Bulgaria</option><option value="BF">Burkina Faso</option><option value="BI">Burundi</option><option value="KH">Cambodia</option><option value="CM">Cameroon</option><option value="CA">Canada</option><option value="CV">Cape Verde</option><option value="KY">Cayman Islands</option><option value="CF">Central African Republic</option><option value="TD">Chad</option><option value="CL">Chile</option><option value="CN">China</option><option value="CX">Christmas Island</option><option value="CC">Cocos (Keeling) Islands</option><option value="CO">Colombia</option><option value="KM">Comoros</option><option value="CG">Congo</option><option value="CD">Congo, the Democratic Republic of the</option><option value="CK">Cook Islands</option><option value="CR">Costa Rica</option><option value="CI">Côte d'Ivoire</option><option value="HR">Croatia</option><option value="CU">Cuba</option><option value="CW">Curaçao</option><option value="CY">Cyprus</option><option value="CZ">Czech Republic</option><option value="DK">Denmark</option><option value="DJ">Djibouti</option><option value="DM">Dominica</option><option value="DO">Dominican Republic</option><option value="EC">Ecuador</option><option value="EG">Egypt</option><option value="SV">El Salvador</option><option value="GQ">Equatorial Guinea</option><option value="ER">Eritrea</option><option value="EE">Estonia</option><option value="ET">Ethiopia</option><option value="FK">Falkland Islands (Malvinas)</option><option value="FO">Faroe Islands</option><option value="FJ">Fiji</option><option value="FI">Finland</option><option value="FR">France</option><option value="GF">French Guiana</option><option value="PF">French Polynesia</option><option value="TF">French Southern Territories</option><option value="GA">Gabon</option><option value="GM">Gambia</option><option value="GE">Georgia</option><option value="DE">Germany</option><option value="GH">Ghana</option><option value="GI">Gibraltar</option><option value="GR">Greece</option><option value="GL">Greenland</option><option value="GD">Grenada</option><option value="GP">Guadeloupe</option><option value="GU">Guam</option><option value="GT">Guatemala</option><option value="GG">Guernsey</option><option value="GN">Guinea</option><option value="GW">Guinea-Bissau</option><option value="GY">Guyana</option><option value="HT">Haiti</option><option value="HM">Heard Island and McDonald Islands</option><option value="VA">Holy See (Vatican City State)</option><option value="HN">Honduras</option><option value="HK">Hong Kong</option><option value="HU">Hungary</option><option value="IS">Iceland</option><option value="IN">India</option><option value="ID">Indonesia</option><option value="IR">Iran, Islamic Republic of</option><option value="IQ">Iraq</option><option value="IE">Ireland</option><option value="IM">Isle of Man</option><option value="IL">Israel</option><option value="IT">Italy</option><option value="JM">Jamaica</option><option value="JP">Japan</option><option value="JE">Jersey</option><option value="JO">Jordan</option><option value="KZ">Kazakhstan</option><option value="KE">Kenya</option><option value="KI">Kiribati</option><option value="KP">Korea, Democratic People's Republic of</option><option value="KR">Korea, Republic of</option><option value="KW">Kuwait</option><option value="KG">Kyrgyzstan</option><option value="LA">Lao People's Democratic Republic</option><option value="LV">Latvia</option><option value="LB">Lebanon</option><option value="LS">Lesotho</option><option value="LR">Liberia</option><option value="LY">Libya</option><option value="LI">Liechtenstein</option><option value="LT">Lithuania</option><option value="LU">Luxembourg</option><option value="MO">Macao</option><option value="MK">Macedonia, the former Yugoslav Republic of</option><option value="MG">Madagascar</option><option value="MW">Malawi</option><option value="MY">Malaysia</option><option value="MV">Maldives</option><option value="ML">Mali</option><option value="MT">Malta</option><option value="MH">Marshall Islands</option><option value="MQ">Martinique</option><option value="MR">Mauritania</option><option value="MU">Mauritius</option><option value="YT">Mayotte</option><option value="MX">Mexico</option><option value="FM">Micronesia, Federated States of</option><option value="MD">Moldova, Republic of</option><option value="MC">Monaco</option><option value="MN">Mongolia</option><option value="ME">Montenegro</option><option value="MS">Montserrat</option><option value="MA">Morocco</option><option value="MZ">Mozambique</option><option value="MM">Myanmar</option><option value="NA">Namibia</option><option value="NR">Nauru</option><option value="NP">Nepal</option><option value="NL">Netherlands</option><option value="NC">New Caledonia</option><option value="NZ">New Zealand</option><option value="NI">Nicaragua</option><option value="NE">Niger</option><option value="NG">Nigeria</option><option value="NU">Niue</option><option value="NF">Norfolk Island</option><option value="MP">Northern Mariana Islands</option><option value="NO">Norway</option><option value="OM">Oman</option><option value="PK">Pakistan</option><option value="PW">Palau</option><option value="PS">Palestinian Territory, Occupied</option><option value="PA">Panama</option><option value="PG">Papua New Guinea</option><option value="PY">Paraguay</option><option value="PE">Peru</option><option value="PH">Philippines</option><option value="PN">Pitcairn</option><option value="PL">Poland</option><option value="PT">Portugal</option><option value="PR">Puerto Rico</option><option value="QA">Qatar</option><option value="RE">Réunion</option><option value="RO">Romania</option><option value="RU">Russian Federation</option><option value="RW">Rwanda</option><option value="BL">Saint Barthélemy</option><option value="SH">Saint Helena, Ascension and Tristan da Cunha</option><option value="KN">Saint Kitts and Nevis</option><option value="LC">Saint Lucia</option><option value="MF">Saint Martin (French part)</option><option value="PM">Saint Pierre and Miquelon</option><option value="VC">Saint Vincent and the Grenadines</option><option value="WS">Samoa</option><option value="SM">San Marino</option><option value="ST">Sao Tome and Principe</option><option value="SA">Saudi Arabia</option><option value="SN">Senegal</option><option value="RS">Serbia</option><option value="SC">Seychelles</option><option value="SL">Sierra Leone</option><option value="SG">Singapore</option><option value="SX">Sint Maarten (Dutch part)</option><option value="SK">Slovakia</option><option value="SI">Slovenia</option><option value="SB">Solomon Islands</option><option value="SO">Somalia</option><option value="ZA">South Africa</option><option value="GS">South Georgia and the South Sandwich Islands</option><option value="SS">South Sudan</option><option value="ES">Spain</option><option value="LK">Sri Lanka</option><option value="SD">Sudan</option><option value="SR">Suriname</option><option value="SJ">Svalbard and Jan Mayen</option><option value="SZ">Swaziland</option><option value="SE">Sweden</option><option value="CH">Switzerland</option><option value="SY">Syrian Arab Republic</option><option value="TW">Taiwan, Province of China</option><option value="TJ">Tajikistan</option><option value="TZ">Tanzania, United Republic of</option><option value="TH">Thailand</option><option value="TL">Timor-Leste</option><option value="TG">Togo</option><option value="TK">Tokelau</option><option value="TO">Tonga</option><option value="TT">Trinidad and Tobago</option><option value="TN">Tunisia</option><option value="TR">Turkey</option><option value="TM">Turkmenistan</option><option value="TC">Turks and Caicos Islands</option><option value="TV">Tuvalu</option><option value="UG">Uganda</option><option value="UA">Ukraine</option><option value="AE">United Arab Emirates</option><option value="GB">United Kingdom</option><option value="US">United States</option><option value="UM">United States Minor Outlying Islands</option><option value="UY">Uruguay</option><option value="UZ">Uzbekistan</option><option value="VU">Vanuatu</option><option value="VE">Venezuela, Bolivarian Republic of</option><option value="VN">Viet Nam</option><option value="VG">Virgin Islands, British</option><option value="VI">Virgin Islands, U.S.</option><option value="WF">Wallis and Futuna</option><option value="EH">Western Sahara</option><option value="YE">Yemen</option><option value="ZM">Zambia</option><option value="ZW">Zimbabwe</option>
       </select>
    </td>
            <td class="auto-style2"></td>
        <td>
        Year (YYYY)
   </td>
    <td>
        <asp:TextBox ID="iGYear" class="form-control" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="* 4 digit Number Only."
            ControlToValidate="iGYear" ValidationExpression="^([0-9]{4})$" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="upg"></asp:RegularExpressionValidator>
    </td><td></td>
        </tr>
         <tr><td colspan="7" align="center"><div class="text-success fade in" id="successg" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Death Star Updated <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
        <tr><td></td></tr><tr><td></td></tr>
        <tr>

            <td colspan=7 align="center">
              <asp:Button ID="upmoreg" runat="server" class="btn btn-success" Text="+ Update Education"
              OnClick="submitupmoreg_Click" ValidationGroup="upg" />
            </td>
            <td></td>
        </tr>
<%-- -------------------------------------------Certifications---------------------------------------------- --%>
        <tr>
            <td></td>
            <td>
<h1><small>Certifications</small></h1>
        </td><td></td>
        </tr>
         <tr>
             <td></td>
    <td>
        Certification
   </td>
    <td>
        <asp:TextBox ID="iCertification" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td class="auto-style2"></td>
             </tr>
        <tr>
            <td></td>
    <td>
        Body
   </td>
    <td>
        <asp:TextBox ID="iBody" class="form-control" runat="server"></asp:TextBox>
    </td><td class="auto-style2"></td>
        </tr>
         <tr><td colspan="7" align="center"><div class="text-success fade in" id="successc" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Death Star Updated <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
        <tr><td></td></tr><tr><td></td></tr>
        <tr>
            <td colspan=7 align="center">
              <asp:Button ID="upmorecer" runat="server" class="btn btn-success" Text="+ Update Certifications"
              OnClick="submitupmorecer_Click" ValidationGroup="upc" />
            </td>
            <td></td>
        </tr>
<%-- ------------------------------------------------Skills------------------------------------------------- --%>
        <tr>
            <td></td>
            <td>
<h1><small>Skills</small></h1>
        </td><td></td>
        </tr>
         <tr>
             <td></td>
    <td>
        Skill
   </td>
    <td>
        <asp:TextBox ID="iSkill" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td></td> </tr>
        <tr>
            <td></td>
            <td>
        Skill Level
   </td>
    <td>
        <select class="form-control" id="iSkillL" runat="server">
                    <option>Pro</option>
                    <option>Almost Pro</option>
                    <option>Intermediate</option>
                    <option>Noob</option>
                </select>
    </td><td class="auto-style2"></td>
    <td>
        Skill Group
   </td>
    <td>
        <select class="form-control" id="iSkillG" runat="server">
                    <option>Technical</option>
                    <option>CMS</option>
                    <option>Operating Systems</option>
                    <option>Other</option>
                </select>
    </td><td></td>
       </tr>
         <tr><td colspan="7" align="center"><div class="text-success fade in" id="successsk" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Death Star Updated <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
        <tr><td></td></tr><tr><td></td></tr>
        <tr>
            <td colspan="7" align="center">
              <asp:Button ID="upmoreskill" runat="server" class="btn btn-success" Text="+ Update Skill"
              OnClick="submitupmoreskill_Click" ValidationGroup="ups" />
            </td>
        </tr>
         
<%-- ------------------------------------------Work Experience---------------------------------------------- --%>                
        <tr>
        <td></td>
        <td>
        <h1><small>Work Experience/Current Internship</small></h1>
        </td><td></td>
        </tr>
        <tr>
             <td></td>
            <td>
                MAC Internship?
                </td>
            <td>
        <select class="form-control" id="iMAC" runat="server">
                    <option>Yes</option>
                    <option>No</option>
                </select>
                </td><td></td>
            </tr>
        <tr>
            <td></td>
    <td>
        Company Name
   </td>
    <td>
        <asp:TextBox ID="iECname" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td class="auto-style2"></td>
    <td>
        Year (YYYY)
   </td>
    <td>
        <asp:TextBox ID="iECyear" class="form-control" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="* 4 digit Number Only."
            ControlToValidate="iECyear" ValidationExpression="^([0-9]{4})$" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="upstu"></asp:RegularExpressionValidator>
    </td><td></td>
        </tr>
         <tr>
            <td></td>
    <td>
        Job Title
   </td>
    <td>
        <asp:TextBox ID="iETitle" class="form-control" runat="server"></asp:TextBox>
    </td>
            <td class="auto-style2"></td>
    <td>
        Duties
   </td>
    <td>
        <TextArea ID="iEDuties" class="form-control" runat="server"></TextArea>
    </td>
            <td></td>
        </tr>
        <tr>
            <td>
            </td>
            <td>Salary</td>
            <td><asp:TextBox ID="iESalary" class="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ErrorMessage="* Numbers Only."
            ControlToValidate="iESalary" ValidationExpression="^([0-9]*)$" Display="Dynamic" SetFocusOnError="True" Font-Size="Medium"
            CssClass="rfvlabel" ValidationGroup="upw"></asp:RegularExpressionValidator>
            </td><td class="auto-style2"></td>
        </tr>
         <tr><td colspan="7" align="center"><div class="text-success fade in" id="successw" Visible="True" role="alert" runat="server">
             <span class="glyphicon glyphicon-ok-circle"></span>  Death Star Updated <a href="#" data-dismiss="alert"  aria-label="close"><sup><small><span class="glyphicon glyphicon-remove text-danger"></span></small></sup></a></div></tr>
        <tr><td></td></tr><tr><td></td></tr>
        <tr>
            <td colspan="7" align="center">
              <asp:Button ID="upmorework" runat="server" class="btn btn-success" Text="+ Update Experience"
              OnClick="submitupmorework_Click" ValidationGroup="upw" />
            </td>
            <td></td>
        </tr>

        </table>
        
            </form>
        </div>
</body>
</html>
