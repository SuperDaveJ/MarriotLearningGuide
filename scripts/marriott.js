var stepNum = 1;
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function advanceStep(n) { 
  if(stepNum = n){
  	stepNum ++;
  }
  //alert("Step Number = "+stepNum);
}

/*
function selectionChange(itemSelected){
	
	switch (itemSelected){
		case 1:
		    if (document.getElementById("ddlCompetencyType").selectedIndex == 1) {
				document.getElementById("selectTwo").style.display = "block";
			}else{
				alert("Functionality for Corporate, Above Property Option coming soon. Please select another option.");
				document.getElementById("selectTwo").style.display = "none";
				document.getElementById("selectThree").style.display = "none";
				document.getElementById("selectFour").style.display = "none";
			};			
		break;
		case 2:
			document.getElementById("selectThree").style.display = "block";
		break;
		case 3:
			document.getElementById("selectFour").style.display = "block";
  		break;
		case 4:
			MM_showHideLayers('continueBtn','','show')
  		break;
	
		default:
	}
	  //$.mobile.changePage( "#page2", { transition: "fade"} );
}
*/

function saveAndExit(){
	alert('Save and Exit Function Called');	
}

function performComp(pcSelection){
	
	 /*  Add code here to dynamically generate the Competency List */
	
	MM_showHideLayers('compItems','','show');
	MM_showHideLayers('buttonContainer','','show');	
}

function competencySelect(compSelection){
	
	/*  Add code here to dynamically generate the Formal & Informal List */
	
	MM_showHideLayers('formalList','','show');
	MM_showHideLayers('compArrow','','show');
	MM_showHideLayers('saveExit','','show');
}

function setSelectionLabels() {
    document.getElementById("spPositionType").innerHTML = $("#ddlCompetencyType option:selected").text();
    document.getElementById("spLeadershipLevel").innerHTML = $("#ddlCompetencyLevel option:selected").text();
    document.getElementById("spCompetencyCategory").innerHTML = $("#ddlCompetencyCategory option:selected").text();
    document.getElementById("spContinent").innerHTML = $("#ddlContinent option:selected").text();
}