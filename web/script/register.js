/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function returnValidateForm(){
    var name = document.myForm.uname.value;
    var password1 = document.myForm.pass.value;
    var password2 = document.myForm.pass2.value;
    var x = document.myForm.email.value;
    var atposition = x.indexOf("@");
    var dotposition = x.lastIndexOf(".");

    if(name==null||name==""){
        alert("Name can't be blank!");
        return false;
    }else if(password1.length<6){
        alert("Password should be more than 6 characters long!");
        return false;
    }else if(password1!=password2){
        alert("Re-written password should be same as upper password!");
        return false;
    }

    if(atposition<1||dotposition<atposition+2||dotposition+2>=x.length){
        alert("Please Enter valid Email address!");
        return false;
    }
}
