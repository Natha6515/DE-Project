function validate() {

    var y1 = document.getElementById("fn");
    var x1 = document.getElementById("sp1");

    if (y1.value == "") {


        x1.style.display = null;
        y1.style.border = "1px solid red";
        
        
    }
    else {
        
        x1.style.display = "none";
        y1.style.border = "";
        
    }
    
    
    var y2 = document.getElementById("mn");
    var x2 = document.getElementById("sp2");
    
    if (y2.value == "") {
        
        
        x2.style.display = null;
        y2.style.border = "1px solid red";
        
    }
    else {
        
        x2.style.display = "none";
        y2.style.border = "";

    }

    var y3 = document.getElementById("ln");
    var x3 = document.getElementById("sp3");
    
    if (y3.value == "") {
        
        
        x3.style.display = null;
        y3.style.border = "1px solid red";
        
    }
    else {
        
        x3.style.display = "none";
        y3.style.border = "";
        
    }

    var y4 = document.getElementById("em");
    var x4 = document.getElementById("sp4");
    
    if (y4.value == "") {
        
        
        x4.style.display = null;
        y4.style.border = "1px solid red";
        
    }
    else {
        
        x4.style.display = "none";
        y4.style.border = "";

    }
    
    var y5 = document.getElementById("mo");
    var x5 = document.getElementById("sp5");
    
    if (y5.value == "") {
        
        
        x5.style.display = null;
        y5.style.border = "1px solid red";
        
    }
    else {
        
        x5.style.display = "none";
        y5.style.border = "";
        
    }
    
    var y6 = document.getElementById("pd");
    var x6 = document.getElementById("sp6");
    
    if (y6.value == "") {
        
        
        x6.style.display = null;
        y6.style.border = "1px solid red";
        
    }
    else {
        
        x6.style.display = "none";
        y6.style.border = "";
        
    }
    
    var y7 = document.getElementById("cpd");
    var x7 = document.getElementById("sp7");
    
    if (y7.value == "") {
        
        
        x7.style.display = null;
        y7.style.border = "1px solid red";
        
        
    }
    else {
        
        x7.style.display = "none";
        y7.style.border = "";
        
    }

    var y8 = document.getElementById("enr");
    var x8 = document.getElementById("sp9");
    
    if (y8.value == "") {
        
        
        x8.style.display = null;
        y8.style.border = "1px solid red";
        
        
    }
    else {
        
        x8.style.display = "none";
        y8.style.border = "";
        
    }
    
        
    var but1 = document.getElementById("m");
    var but2 = document.getElementById("f");
    var but3 = document.getElementById("n");
    
    var radi = [but1, but2, but3];
    
    var data1 = document.getElementById("sp9");
    
    for (var i = 0; i < radi.length; i++) {
        
        
        if (radi[i].checked == true) {

            data1.style.display = "none";
            
            
        }
        else {
            
            data1.style.display = null;
        
            
        }
    }
    
    
    
}

function passcheck() {

    var opd = document.getElementById("pd");
    var comppass = document.getElementById("cpd");
    var data = document.getElementById("sp8");
    
    if (opd.value != comppass.value) {

        data.style.display = null;
        opd.style.border = "1px solid red";
        comppass.style.border = "1px solid red";
        return false;

    }
    else {

        data.style.display = "none";
        opd.style.display = "";
        comppass.style.border = "";
        return true;
    }


}


function logcheck(){
	

    var y9 = document.getElementById("enrlog");
    var x9 = document.getElementById("sp11");

    if (y9.value == "") {


        x9.style.display = null;
        y9.style.border = "1px solid red";
        return false;
        
    }
    else {
        
        x9.style.display = "none";
        y9.style.border = "";
        return true;
        
    }
    
    var y10 = document.getElementById("cpdlog");
    var x10 = document.getElementById("sp12");

    if (y10.value == "") {


        x10.style.display = null;
        y10.style.border = "1px solid red";
//        return false;
    }
    else {
        
        x10.style.display = "none";
        y10.style.border = "";
//        return true;
    }


	
	
}


function changePassword(){
	

    var y1 = document.getElementById("old_password");
    var x1 = document.getElementById("sp21");

    if (y1.value == "") {


        x1.style.display = null;
        y1.style.border = "1px solid red";
        return false;
        
    }
    else {
        
        x1.style.display = "none";
        y1.style.border = "";
        return true;
        
    }
    
    var y2 = document.getElementById("new_password");
    var x2 = document.getElementById("sp22");

    if (y2.value == "") {


        x2.style.display = null;
        y2.style.border = "1px solid red";
        return false;
    }
    else {
        
        x2.style.display = "none";
        y2.style.border = "";
        return true;
    }


    var y3 = document.getElementById("confirm_password");
    var x3 = document.getElementById("sp23");

    if (y3.value == "") {


        x3.style.display = null;
        y3.style.border = "1px solid red";
        return false;
    }
    else {
        
        x3.style.display = "none";
        y3.style.border = "";
        return true;
    }



	
	
}
