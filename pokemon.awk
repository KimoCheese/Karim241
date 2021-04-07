BEGIN	{

	FS = ","
	numofrows=800
}
mostPower < $5 {mostPower = $5 + 0; name = $2;next}
mostPower== $5 {name = name ORS $2}

{totalsum += $5}
{hpsum += $6}
{attsum += $7}
{defsum += $8}
{spattack += $9}
{spdefsum += $10}
{specialsum += $11}

#most powerful pokemon of each type
/Fire/ && mostpowerfulfire <$5 {mostpowerfulfire = $5 + 0; fire = $2;next}
/Fire/ && mostpowerfulfire ==$5 {fire = fire ORS $2}
/Water/ && mostpowerfulwater <$5 {mostpowerfulwater=$5+0;water = $2;next}
/Water/ &&mostpowerfulwater ==$5 {water = water ORS $2}
/Grass/ && mostpowerfulgrass <$5 {mostpowerfulgrass=$5+0;grass = $2;next}
/Grass/ &&mostpowerfulgrass ==$5 {grass=grass ORS $2}
/Poison/ && mostpowerfulpoison <$5 {mostpowerfulpoison=$5+0;poison = $2;next}
/Poison/ &&mostpowerfulpoison ==$5 {poison=poison ORS $2}
/Flying/ && mostpowerfulflying <$5 {mostpowerfulflying=$5+0;flying = $2;next}
/Flying/ &&mostpowerfulflying ==$5 {flying=flying ORS $2}
/Normal/ && mostpowerfulnormal <$5 {mostpowerfulnormal=$5+0;normal = $2;next}
/Normal/ &&mostpowerfulnormal ==$5 {fire=normal ORS $2}
/Dragon/ && mostpowerfuldragon <$5 {mostpowerfuldragon=$5+0;dragon = $2;next}
/Dragon/ &&mostpowerfuldragon ==$5 {dragon=dragon ORS $2}
/bug/ && mostpowerfulbug <$5 {mostpowerfulbug=$5+0;bug = $2;next}
/bug/ &&mostpowerfulbug ==$5 {bug=bug ORS $2}
/Electric/ && mostpowerfulelectric <$5 {mostpowerfulelectric =$5+0;electric = $2;next}
/Electric/ &&mostpowerfulelectric ==$5 {electric = electric ORS $2}
/Ground/ && mostpowerfulground <$5 {mostpowerfulground=$5+0;ground = $2;next}
/Ground/ &&mostpowerfulground ==$5 {ground=ground ORS$2}
/Fairy/ && mostpowerfulfairy <$5 {mostpowerfulfairy=$5+0;fairy = $2;next}
/Fairy/ &&mostpowerfulfairy == $5 {fairy = fairy ORS$2}
/Fighting/ && mostpowerfulfighting<$5 {mostpowerfulfighting=$5+0;fighting = $2;next}
/Fighting/ &&mostpowerfulfighting ==$5 {fighting =fighting ORS$2}
/Psychic/ && mostpowerfulpsychic <$5 {mostpowerfulpsychic=$5+0;psychic = $2;next}
/Psychic/ &&mostpowerfulpsychic ==$5 {psychic=psychic ORS $2}
/Steel/ && mostpowerfulsteel<$5 {mostpowerfulsteel=$5+0;steel = $2;next}
/Steel/ &&mostpowerfulsteel==$5 {steel=steel ORS $2}
/Ice/ && mostpowerfulice<$5 {mostpowerfulice=$5+0;ice = $2;next}
/Ice/ &&mostpowerfulice==$5 {ice=ice ORS $2}
/Dark/ && mostpowerfuldark<$5 {mostpowerfuldark=$5+0;dark = $2;next}
/Dark/ &&mostpowerfuldark==$5 {dark=dark ORS $2}

/Fire/ {numfire += 1}
/Fire/ {totalfire += $5}
/Fire/{numfire+=1}
/Water/{totalwater+=$5}
/Water/{numwater+=1}
/Grass/{totalgrass+=$5}
/Grass/{numgrass+=1}
/Flying/{totalflying+=$5}
/Flying/{numflying+=1}
/Dragon/{totaldragon+=$5}
/Dragon/{numdragon+=1}
/Bug/{totalbug+=$5}
/Bug/{numbug+=1}
/Normal/{totalnormal+=$5}
/Normal/{numnormal+=1}
/Electric/{totalelectric+=$5}
/Electric/{numelectric+=1}
/Poison/{totalpoison+=$5}
/Poison/{numpoison+=1}
/Ground/{totalground+=$5}
/Ground/{numground+=1}
/Ice/{totalice+=$5}
/Ice/{numice+=1}
/Fairy/{totalfairy+=$5}
/Fairy/{numfairy+=1}
/Fighting/{totalfighting+=$5}
/Fighting/{numfighting+=1}
/steel/{totalsteel+=$5}
/steel/{numsteel+=1}
/Dark/{numdark+=1}
/Dark/{totaldark+=$5}
/Psychic/{numpsychic+=1}
/Psychic/{totalpsychic+=$5}
/Rock/{numrock+=1}
/Rock/{totalrock+=$5}

END {
	print "The overall most powerful pokemon are:\n" name
	print "And these pokemon have a power of:" mostPower "\n\n"
	print "hp:" hpsum/numofrows
	print "attack:" attsum/numofrows
	print "defense:" defsum/numofrows
	print "special attack:" spattack/numofrows
	print "special defense:" spdefsum/numofrows
	print "speed:"specialsum/numofrows
	print "most powerful Grass pokemon are:\n" grass " with " mostpowerfulgrass "\n"
	print "most powerful Fire pokemon are:\n" fire" with "mostpowerfulfire"\n"
	print "most powerful Water pokemon are:\n" water" with "mostpowerfulwater"\n"
	print "most powerful Ice pokemon are:\n" ice" with "mostpowerfulice"\n"
	print "most powerful Flying pokemon are:\n" flying" with "mostpowerfulflying"\n"
	print "most powerful Dragon pokemon are:\n" dragon" with "mostpowerfuldragon"\n"
	print "most powerful Poison pokemon are:\n" poison" with "mostpowerfulpoison"\n"
	print "most powerful Bug pokemon are:\n" bug" with "mostpowerfulbug"\n"
	print "most powerful Normal pokemon are:\n" normal" with "mostpowerfulnormal"\n"
	print "most powerful Electric pokemon are:\n" electric" with "mostpowerfulelectric"\n"
	print "most powerful Ground pokemon are:\n" ground" with "mostpowerfulground"\n"
	print "most powerful Fairy pokemon are:\n" fairy" with "mostpowerfulfairy"\n"
	print "most powerful Fighting pokemon are:\n" fighting" with "mostpowerfulfighting"\n"
	print "most powerful Steel pokemon are:\n" steel" with "mostpowerfulsteel"\n"
	print "most powerful Rock pokemon are:\n" rock" with "mostpowerfulrock"\n"
	print "most powerful Dark pokemon are:\n" dark" with "mostpowerfuldark"\n"
	print "The average power of grass pokemon is " totalgrass/numgrass
	print "The average power of fire pokemon is "totalfire/numfire
	print "The average power of water pokemon is "totalwater/numwater
	print "The average power of ice pokemon is "totalice/numice
	print "The average power of flying pokemon is "totalflying/numflying
	print "The average power of dragon pokemon is "totaldragon/numdragon
	print "The average power of normal pokemon is "totalnormal/numnormal
	print"The average power of electric pokemon is "totalelectric/numelectric
	print"The average power of fairy pokemon is "totalfairy/numfairy
	print"The average power of fighting pokemon is "totalfighting/numfighting
	print"The average power of psychic pokemon is "totalpsychic/numpsychic
	print"The average power of steel pokemon is "totalsteel/numsteel
	print"The average power of rock pokemon is "totalrock/numrock
}
