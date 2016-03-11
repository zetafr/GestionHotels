function required()
{
var empt = document.forms["form1"]["text1"].value;
if (empt == "")
{
alert("Veuillez entrer une valeur");
return false;
}
else 
{
return true; 
}
}