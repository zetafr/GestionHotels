function scanChamp(objChamp)
{
	if ("".test(objChamp.value))
	{
		objChamp.value = '';
		objChamp.focus();
		alert('La saisie n\'est est vide. ');
	}
}
