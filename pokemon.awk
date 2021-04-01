BEGIN	{

	FS = ","
	Normal = 0
	Firemax = 0
	Watermax = 0
	Grassmax = 0
	Electricmax = 0
	Icemax = 0
	Fightingmax = 0
	Poisonmax = 0
	Groundmax = 0
	Flyingmax = 0
	Bugmax = 0
	Rockmax = 0
	Ghostmax = 0
	Darkmax = 0
	Dragonmax = 0
	Steelmax = 0
	Mostpwrpokemon = 0
	max = 0

}
/Fire/{
	if (Firemax < $5){
		Firemax= $5
	}
}
/Water/{
	if (Watermax < $5){
		 Watermax= $5
	}
}
/Grass/{
	if (Grassmax < $5){
	        Grassmax= $5
	}
}
/Electric/{
	if (Electricmax < $5){
	        Electricmax= $5
	}
}
/Ice/{
	if (Icemax < $5){
		Icemax= $5
	}
}
/Fighting/{
	if (Fightingmax < $5){
		Fightingmax= $5
        }
}
/Poison/{
	if (Poisonmax < $5){
		Poisonmax = $5
	}
}
/Ground/{
	if (Groundmax < $5){
		Groundmax = $5
	}
}
/Flying/{
	if (Flyingmax < $5){
		Flyingmax = $5
	}
}
/Dark/{
	if (Darkmax < $5){
		Darkmax = $5
	}
}
/Dragon/{
	if (Dragonmax < $5){
		Dragonmax = $5
	}
}
/Steel/{
	if (Steelmax < $5){
		Steelmax = $5
	}
}
{
	if (Mostpwrpokemon < $5 && $2 != "Name"){
		Mostpwrpokemon = $5
		max = $2
	}
	else if (Mostpwrpokemon == $5 && $2 != "Name"){
		max = max "," $2
	}
}
END {
	print "Fire max:" Firemax
	print "Water max:" Watermax
	print "Grass max:" Grassmax
	print "Electric max:" Electricmax
	print "Ice max:" Icemax
	print "Fighting max:" Fightingmax
	print "Poison max:" Poisonmax
	print "Ground max:" Groundmax
	print "Flying max:" Flyingmax
	print "Dark max:" Darkmax
	print "Dragon max:" Dragonmax
	print "Steel max:" Steelmax
	print "Max overall:" Mostpwrpokemon
	print "Max pokemon names:" max
}
