function codeTouche(evenement)
{
        for (prop in evenement)
        {
                if(prop == 'which') return(evenement.which);
        }
        return(evenement.keyCode);
}
