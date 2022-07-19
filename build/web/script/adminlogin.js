/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function returnValidateAdmin(){
    var name = document.myForm.uname.value;
    var password = document.myForm.pass.value;

    console.log("Admin");

    if(name==null||name==""){
        alert("Name can't be blank!");
    }else if(password==null||password==""){
        alert("Name can't be blank!");
    }else if(password!="12345" || name!="admin"){
        alert("Username or Password is incorrect");
    }else if((password=="12345") && (name=="admin")){
        window.open("adminredirect.jsp");
    }
}