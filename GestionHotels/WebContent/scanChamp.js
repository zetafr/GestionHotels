function scanChamp(objChamp, reContenuValide)
{
	if (!reContenuValide.test(objChamp.value))
	{
		objChamp.value = '';
		objChamp.focus();
		alert('La saisie n\'est pas valide. ');
	}
}
