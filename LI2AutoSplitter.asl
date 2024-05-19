state("LEGO Island 2")
{
    int fsmstate : 0x496DF0;
	int loading1 : 0x5D0C60;
	int loading2 : 0x579E5C;
	int facepizza : 0x5950D40;
	int newgametrigger1 : 0x496E08;
	int menucountdown : 0x57446C;
	int menuindex : 0x574464;
	string9 menudesc : 0x5CFC58;
	//DINPUT8.dll+312C8 E key indicator
}

startup
{
    int split = 0;
}

//if (old.fsmstate == 0 && current.fsmstate == 2)
//if (old.fsmstate == 0 && (old.newgametrigger1 == 1 && current.newgametrigger1 == 0))
//if (current.menuindex == 1) && current.menucountdown != 0 && current.menudesc == "START"
// return current.menuindex == 1;

start
{
    if (current.menudesc == "START" && current.menuindex == 1 && current.menucountdown != 0)
	
	{
        return true;
    }
	
}

reset
{
    if (current.fsmstate == 0 && current.fsmstate != old.fsmstate)
	{
        return true;
    }
}

isLoading
{
	return current.loading1 == 1 || current.loading2 == 1;
}

split
{
    if (old.fsmstate == 6 && current.fsmstate == 7)
	{
        return true;
        //Pizza Deliveries
    }
	
	if (old.fsmstate == 10 && current.fsmstate == 11)
	{
        return true;
        //Lost Pages + Whack-A-Bot
    }
	
	if (old.fsmstate == 18 && current.fsmstate == 19)
	{
        return true;
        //Brick Dive
    }
	
	if (old.fsmstate == 23 && current.fsmstate == 24)
	{
        return true;
        //Jousted
    }
	
	if (old.fsmstate == 26 && current.fsmstate == 27)
	{
        return true;
        //Raging Bull
    }
	
	if (old.fsmstate == 35 && current.fsmstate == 36)
	{
        return true;
        //Lost Pages 2 + Snake Pursuit
    }
	
	if (old.fsmstate == 39 && current.fsmstate == 40)
	{
        return true;
        //Whack-A-Snake + Matching Mummies
    }
	
	if (old.fsmstate == 41 && current.fsmstate == 42)
	{
        return true;
        //Desert Speedster
    }
	
	if (old.fsmstate == 44 && current.fsmstate == 45)
	{
        return true;
        //Fishing
    }
	
	if (old.fsmstate == 46 && current.fsmstate == 47)
	{
        return true;
        //Bi-plane
    }
	
	if (old.fsmstate == 48 && current.fsmstate == 49)
	{
        return true;
        //T-Rex Racing
    }
	
	if (old.fsmstate == 49 && current.fsmstate == 50)
	{
        return true;
        //Mr. Hates' Camp
    }
	
	if (old.fsmstate == 58 && current.fsmstate == 59)
	{
        return true;
        //Pages 3 + Brickster Bots
    }
	
	if (old.fsmstate == 60 && current.fsmstate == 61)
	{
        return true;
        //Centrifuge + Parachute Training
    }
	
	if (old.fsmstate == 63 && current.fsmstate == 64)
	{
        return true;
        //Asteroid Belt + Parachute Onto Ogel
    }
	
	if (old.fsmstate == 65 && current.fsmstate == 66)
	{
        return true;
        //Make-A-D-Pizza
    }
	
	if (old.fsmstate == 67 && (old.facepizza == 2 && current.facepizza == 3))
	{
        return true;
        //Brickster's Palace
    }
}

//mov eax, [ecx*4+00896C90]
//00896DF0
//pointer: 00896C90
//Lego Island (c)2001 LEGO Company