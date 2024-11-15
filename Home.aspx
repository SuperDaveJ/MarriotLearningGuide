<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MarriottLearningGuides.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <asp:Literal ID="NonMobileViewPortText" runat="server"></asp:Literal>
    <meta name="format-detection" content="telephone=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" /> 
    <asp:Literal ID="MobileViewPortText" runat="server"></asp:Literal>
    <title>Marriott - Find Your World</title>
    <link href="icon.png" rel="apple-touch-icon" /> 
	<link rel="stylesheet" href="jq/jquery.mobile-1.1.0.min.css" />
    <link rel="stylesheet" href="styles/marriott.css" />
	<script src="jq/jquery-1.7.1.min.js"></script>
	<script src="jq/jquery.mobile-1.1.0.min.js"></script>
    <script src="scripts/marriott.js"></script>
    <script type="text/javascript" language="javascript">
        function CourseCheck() {
            var divsave = document.getElementById('SaveExit');
            divsave.style.display = '';

            var divchoose = document.getElementById('ChooseAnother');
            var ddlPerformance = $('#ddlPerformanceContribution').find('option:selected').text();
            if (ddlPerformance.indexOf("Administrative Professional") < 0) {
                divchoose.style.display = '';
            }
        }

        function DeselectAll(courseHeaderId, formal) {
            for (var i = 0; i < form1.elements.length; i++) {
                if (form1.elements[i].type == 'checkbox') {
                    var checkboxHeaderId = "";

                    if (form1.elements[i].checked == true) {
                        if (form1.elements[i].id.indexOf("checkboxi-") != -1) {
                            var coursevalue = form1.elements[i].id.substring(10);
                            var n = coursevalue.split("|");
                            checkboxHeaderId = n[0];

                            if (formal == false) {
                                if (checkboxHeaderId == courseHeaderId) {
                                    form1.elements[i].checked = false;

                                    $("input[id='" + form1.elements[i].id + "']").attr("checked", false).checkboxradio("refresh");
                                }
                            }
                        }
                        else {
                            var coursevalue = form1.elements[i].id.substring(9);
                            var n = coursevalue.split("|");
                            checkboxHeaderId = n[0];
                            if (formal == true) {
                                if (checkboxHeaderId == courseHeaderId) {
                                    form1.elements[i].checked = false;

                                    $("input[id='" + form1.elements[i].id + "']").attr("checked", false).checkboxradio("refresh");
                                }
                            }
                        }
                    }
                }
            }
        }

        function SelectAll(courseHeaderId, formal) {
            var divsave = document.getElementById('SaveExit');
            divsave.style.display = '';

            var divchoose = document.getElementById('ChooseAnother');
            var ddlPerformance = $('#ddlPerformanceContribution').find('option:selected').text();
            if (ddlPerformance.indexOf("Administrative Professional") < 0) {
                divchoose.style.display = '';
            }

            for (var i = 0; i < form1.elements.length; i++) {
                if (form1.elements[i].type == 'checkbox') {
                    var checkboxHeaderId = "";

                    if (form1.elements[i].checked == false) {
                        if (form1.elements[i].id.indexOf("checkboxi-") != -1) {
                            var coursevalue = form1.elements[i].id.substring(10);
                            var n = coursevalue.split("|");
                            checkboxHeaderId = n[0];

                            if (formal == false) {
                                if (checkboxHeaderId == courseHeaderId) {
                                    form1.elements[i].checked = true;

                                    $("input[id='" + form1.elements[i].id + "']").attr("checked", true).checkboxradio("refresh"); 
                                }
                            }
                        }
                        else {
                            var coursevalue = form1.elements[i].id.substring(9);
                            var n = coursevalue.split("|");
                            checkboxHeaderId = n[0];
                            if (formal == true) {
                                if (checkboxHeaderId == courseHeaderId) {
                                    form1.elements[i].checked = true;

                                    $("input[id='" + form1.elements[i].id + "']").attr("checked", true).checkboxradio("refresh"); 
                                }
                            }
                        }
                    }
                }
            }
        }
    </script>
</head>
<body bgcolor="#cac8c9">
    <form id="form1" runat="server">
      <div data-role="page" id="one" align="center" runat="server" style="background-image:url(sysimages/background-new.jpg); background-repeat:no-repeat; height:99%; width:100%; z-index:1;">
	        <div data-role="content" align="center" style="width:768px">	
		        <div>
                    <div align="center" style="padding-top:0 auto; margin:0px auto; width:768px; ">
                         <div class="nav" >
                            <ul>
                                <li><a id="A1" runat="server" onserverclick="HomeLink_Click">Home</a> | </li>
                                <li><a href="https://extranet.marriott.com/mgs/marrdocs/mgs/nalo+associate/Training/LearningResources/ToolsResources/AboutLearningGuide.pdf" target="_blank">Help</a> | </li>
                                <li><a href="https://extranet.marriott.com/mgs/marrdocs/mgs/nalo+associate/Training/LearningResources/ToolsResources/LeadershipLearningGuideFAQs.pdf" target="_blank">FAQ</a> | </li>
                                <li><a id="A2" runat="server" onserverclick="LogOffLink_Click">LogOut</a></li>
                            </ul>
                        </div>                        
                        </div>
                    <div align="center" style="padding: 10px 0 0 0;">                    
                        <img src="sysimages/top-logo.png" alt="Marriott - Find Your World" title="Marriott - Find Your World" style="margin: 0 20px 30px 0;">
                    </div>			       
                    <p align="center">
                        Click on the boxes to make your selections.
                    </p>
	                <br/>
	
		            <div id="selectOne" style="width:97%" runat="server">
                        <asp:DropDownList id="ddlCompetencyType" runat="server" data-native-menu="false" OnSelectedIndexChanged="ddlCompetencyType_OnSelectedIndexChanged" AutoPostBack="true" /><!--onchange="selectionChange(1);"-->
                    </div>
                    <br/>
            
                    <div id="selectTwo" visible="false" style="width:97%" runat="server">
                        <asp:Image ID="imgCompetencyLevel" runat="server" Visible="false" ImageUrl="~/sysimages/brandCategory-dropdown-disabled.png" />
                        <asp:DropDownList ID="ddlCompetencyLevel" runat="server" data-native-menu="false" OnSelectedIndexChanged="ddlCompetencyLevel_OnSelectedIndexChanged" AutoPostBack="true" /><!--onchange="selectionChange(2);"-->
                    </div>
                    <br/>
            
                    <div id="selectThree" visible="false" style="width:97%" runat="server">
                        <asp:Image ID="imgCompetencyCategory" runat="server" Visible="false" ImageUrl="~/sysimages/brandCategory-dropdown-disabled.png" />
                        <asp:DropDownList ID="ddlCompetencyCategory" runat="server" data-native-menu="false" OnSelectedIndexChanged="ddlCompetencyCategory_OnSelectedIndexChanged" AutoPostBack="true" /><!-- onchange="selectionChange(3);"-->
                    </div>
                    <br/>

		            <div id="selectFour" visible="false" style="width:97%" runat="server">
                        <asp:Image ID="imgContinent" runat="server" Visible="false" ImageUrl="~/sysimages/brandCategory-dropdown-disabled.png" />
                        <asp:DropDownList ID="ddlContinent" runat="server" data-native-menu="false" OnSelectedIndexChanged="ddlContinent_OnSelectedIndexChanged" AutoPostBack="true" /><!--onchange="selectionChange(4);"-->
		            </div>
                    <br />
                    <br />
                </div>
                <br/>
                <br/>
  	            <div id="continueBtn" runat="server" visible="false" style="position: absolute; top: 480px; width: 768px;">
                    <a id="ContinueLink" href="#" runat="server" onserverclick="ContinueLink_Click" data-transition="fade">                        
                        <img src="sysimages/continue.png" id="Image5" /> 
                    </a>
                </div>
                <div id="pageFooter" runat="server" style="position: absolute; top: 600px; width: 768px;">
                    <img src="sysimages/footer-logo.png" width="252" height="24">
                </div>
            </div>
            <div id="bg_image">
                <img height="99%" width="100%" src="sysimages/background-new.jpg" />
            </div>
        </div>

    <!-- Start of second page: #two -->
    <div data-role="page" id="two" runat="server" align="center" data-theme="c" data-title="Competencies" style="background-image:url(sysimages/background-new2.png); background-repeat:repeat-x; height:100%; width:100%; z-index:1;">
	    <div data-role="content" align="center" style="width:768px">
		     <div>
			    <div align="center" style="padding-top:0 auto; margin:0px auto; width:768px; ">
                         <div class="nav">
                            <ul>
                                <li><a id="A4" runat="server" onserverclick="HomeLink_Click">Home</a> | </li>
                                <li><a href="https://extranet.marriott.com/mgs/marrdocs/mgs/nalo+associate/Training/LearningResources/ToolsResources/AboutLearningGuide.pdf" target="_blank">Help</a> | </li>
                                <li><a href="https://extranet.marriott.com/mgs/marrdocs/mgs/nalo+associate/Training/LearningResources/ToolsResources/LeadershipLearningGuideFAQs.pdf" target="_blank">FAQ</a> | </li>
                                <li><a id="A5" runat="server" onserverclick="LogOffLink_Click">LogOut</a></li>
                            </ul>
                        </div>                        
                        </div>
                <div align="center" style="padding: 10px 0 0 0;">                    
                        <img src="sysimages/top-logo.png" alt="Marriott - Find Your World" title="Marriott - Find Your World" style="margin: 0 20px 30px 0;">
                    </div>	
                <p align="center" style="color:#c52c34; font-size:12px;">
                    <asp:Literal ID="PositionTypeLabel" runat="server"></asp:Literal>
                    <span style="color:#000000" id="spPositionType">
                        <asp:Literal ID="PositionTypeText" runat="server"></asp:Literal>
                    </span> 
                    <asp:Literal ID="LeadershipLevelLabel" runat="server"></asp:Literal>
                    <span style="color:#000000" id="spLeadershipLevel">
                        <asp:Literal ID="LeadershipLevelText" runat="server"></asp:Literal>
                    </span>
                    <asp:Literal ID="BrandCategoryLabel" runat="server"></asp:Literal>
                    <span style="color:#000000" id="spCompetencyCategory">
                        <asp:Literal ID="BrandCategoryText" runat="server"></asp:Literal>
                    </span>
                    <asp:Literal ID="ContinentLabel" runat="server"></asp:Literal>
                    <span style="color:#000000" id="spContinent">
                        <asp:Literal ID="ContinentText" runat="server"></asp:Literal>
                    </span>
                </p>
         
             <img src="sysimages/horizontal-sep.png" width="750" height="14"><br />
             
                 <!-- Performance Contribution List -->
          
            
		    <div id="selectFive" style="width:97%">
                <asp:DropDownList ID="ddlPerformanceContribution" runat="server" data-native-menu="false" data-mini="true" OnSelectedIndexChanged="ddlPerformanceContribution_OnSelectedIndexChanged" AutoPostBack="true" /><!--onchange="performComp();" -->
            </div><br/>
       			
           
               <!-- Competencies List -->
           
         	    <div id="compItems" style="width:97%" runat="server" Visible="false">
                    <asp:DropDownList ID="ddlCompetency" runat="server" data-native-menu="false" data-mini="true" OnSelectedIndexChanged="ddlCompetency_OnSelectedIndexChanged" AutoPostBack="true" /> <!--onchange="competencySelect();" -->
                </div>
      
        	    <!-- Back and Save Buttons -->
            
                <div id="buttonContainer" runat="server" visible="false"><br />
            	    <table>
                        <tr>
                            <td style="width:100px;">
                                <div id="BackButton"><a href="#" data-transition="fade" runat="server" onserverclick="BackLink_Click" id="aBack"><img src="sysimages/back-button.png" width="95" height="38"></a></div>
                            </td>
                            <td style="width:334px;">
                                <div id="ChooseAnother" runat="server"><a href="#" data-transition="fade" runat="server" onserverclick="ChooseAnotherLink_Click" id="a3"><img src="sysimages/select-another.png" width="324" height="38"></a></div>
                            </td>
                            <td style="width:110px;">
                                <div id="SaveExit" runat="server"><a href="#" runat="server" id="aSave" onserverclick="SaveLink_Click"><img src="sysimages/save-and-exit-button.png" width="110" height="38"></a></div>
                            </td>
                        </tr>
                    </table>
           		    <br />
                </div>

                <asp:Label ID="lblValidateForm" runat="server" ForeColor="Red" Text="You must select at least one checkbox from one of the lists." Visible="false" />
        
            </div>
		    <br />
            <br />
            <br />
            <div id="Footer2" runat="server" style="position: absolute; top: 600px; width: 768px;">
                <img id="FooterImage" runat="server" src="sysimages/footer-logo.png" width="252" height="24">
            </div>
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
   			    <tr>
    			    <td valign="top"><br /><br />
                   
   <div id="listContainer">
    
    <script type="text/javascript">
        var div = document.getElementById('listContainer');
        div.style.height = (document.body.clientHeight + 200) + 'px';        
    </script>
   
        <!--   Formal List    -->
                    <div id="formalList" align="center" runat="server" visible="false">
                        <img border="0" ismap="ismap" usemap="#formalMap" src="sysimages/switch-formal.png" width="399" height="42">
                        <map id="formalMap" name="formalMap">
                            <area shape="rect" alt="Formal" title="Formal" coords="0,0,161,42" href="javascript:MM_showHideLayers('formalList','','show');MM_showHideLayers('informalList','','hide');" />
                            <area shape="rect" alt="Informal" title="Informal" coords="162,0,399,42" href="javascript:MM_showHideLayers('formalList','','hide');MM_showHideLayers('informalList','','show');" />
                        </map>
                        <br />
                        <div data-role="collapsible-set" data-mini="true" style="text-align:left;">
                            <asp:Literal ID="FormalCourseList" runat="server"></asp:Literal>
                        </div>
                         <img src="sysimages/footer-logo.png" width="252" height="24" style="margin: 80px 20px 0 0;"/>
	                </div> 
                    
        <!--   Close Formal List    -->
    
        <!--   Informal List    -->
    
                <div id="informalList" align="center" runat="server" style="visibility:hidden">
                    <img border="0" ismap="ismap" usemap="#informalMap" src="sysimages/switch-informal.png" width="399" height="42">
                    <map id="informalMap" name="informalMap">
                        <area shape="rect" alt="Formal" title="Formal" coords="0,0,161,42" href="javascript:MM_showHideLayers('formalList','','show');MM_showHideLayers('informalList','','hide');" />
                        <area shape="rect" alt="Informal" title="Informal" coords="162,0,399,42" href="javascript:MM_showHideLayers('formalList','','hide');MM_showHideLayers('informalList','','show');" />
                    </map>
                    <br />
                    <div data-role="collapsible-set" data-mini="true" style="text-align:left;">
                        <asp:Literal ID="InformalCourseList" runat="server"></asp:Literal>
                    </div>
                    <img src="sysimages/footer-logo.png" width="252" height="24" style="margin: 80px 20px 0 0;"/>
                </div>
    <!--   Close informal List    -->
       
    </div>
        </td>
      </tr>
    </table>
         </div>
    </div>
</form>    
</body>
</html>
