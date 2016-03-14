function scanTouche(evenement, reCarValides)
{
		var reCarSpeciaux = /[\x00\x08\x0D\x03\x16\x18\x1A]/;

        var codeDecimal  = codeTouche(evenement);
        var car = String.fromCharCode(codeDecimal);
        var autorisation = reCarValides.test(car) || reCarSpeciaux.test(car);

        return autorisation;
}