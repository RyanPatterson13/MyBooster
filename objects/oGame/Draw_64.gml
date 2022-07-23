/*
//Debug drawings of pull list contents
draw_set_color(c_blue)
draw_text(100,50,string(ds_list_size(global.upcards)))


if (ds_list_size(global.list) == 10)
{
	draw_set_color(c_blue)
	draw_text(100,100,string(ds_list_find_value(global.list, 0)))
	draw_text(150,100,string(ds_list_find_value(global.list, 1)))
	draw_text(200,100,string(ds_list_find_value(global.list, 2)))
	draw_text(250,100,string(ds_list_find_value(global.list, 3)))
	draw_text(300,100,string(ds_list_find_value(global.list, 4)))
	draw_text(350,100,string(ds_list_find_value(global.list, 5)))
	draw_text(400,100,string(ds_list_find_value(global.list, 6)))
	draw_text(450,100,string(ds_list_find_value(global.list, 7)))
	draw_text(500,100,string(ds_list_find_value(global.list, 8)))
	draw_set_color(c_red)
	draw_text(550,100,string(ds_list_find_value(global.list, 9)))
	draw_text(700,350,string(global.card_depth))
}
*/

//Draw titles for settings and collection screens
if (room == rSettings)
{
	draw_set_color(c_black)

	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)	

	draw_text(288,176,"Sound Effects")
	draw_text(288,272,"Music")
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)	
}

//Draw pack total in collection
if (room == rCollection1 || room == rCollection2 || room == rCollection3 || 
	room == rCollection4 || room == rCollection5 || room == rCollection6 || 
	room == rCollection7 || room == rCollection8 || room == rCollection9 || 
	room == rCollection10 || room == rCollection11 || room == rCollection12 || 
	room == rCollection13 || room == rCollection14 || room == rCollection15 || 
	room == rCollection16 || room == rCollection17 || room == rCollection18 || 
	room == rCollection19 || room == rCollection20)
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	draw_set_color(c_black)
	draw_text(600,350,"Total Packs Opened:")
	draw_text(675,380,string(global.collection_array[0]))
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)	
		
	draw_text(720,430,"Page:")

	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}

if (room == rCollection1)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 1-6
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"1/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Humble Farmer")
		draw_text(288,196,"Dewdrop")
		draw_text(512,196,"Steam Gekko")
		draw_text(704,196,"Mountain Bird")
		draw_text(288,420,"Spirit Moose")
		draw_text(512,420,"Eerie Night")
		
		draw_text(96,214,"#1 Pulled: " + string(global.collection_array[1]))
		draw_text(288,214,"#2 Pulled: " + string(global.collection_array[2]))
		draw_text(512,214,"#3 Pulled: " + string(global.collection_array[3]))
		draw_text(704,214,"#4 Pulled: " + string(global.collection_array[4]))
		draw_text(288,438,"#5 Pulled: " + string(global.collection_array[5]))
		draw_text(512,438,"#6 Pulled: " + string(global.collection_array[6]))

		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection2)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 7-12
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"2/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 7")
		draw_text(288,196,"Name 8")
		draw_text(512,196,"Name 9")
		draw_text(704,196,"Name 10")
		draw_text(288,420,"Name 11")
		draw_text(512,420,"Name 12")
		
		draw_text(96,214,"#7 Pulled: " + string(global.collection_array[7]))
		draw_text(288,214,"#8 Pulled: " + string(global.collection_array[8]))
		draw_text(512,214,"#9 Pulled: " + string(global.collection_array[9]))
		draw_text(704,214,"#10 Pulled: " + string(global.collection_array[10]))
		draw_text(288,438,"#11 Pulled: " + string(global.collection_array[11]))
		draw_text(512,438,"#12 Pulled: " + string(global.collection_array[12]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection3)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 13-18
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"3/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 13")
		draw_text(288,196,"Name 14")
		draw_text(512,196,"Name 15")
		draw_text(704,196,"Name 16")
		draw_text(288,420,"Name 17")
		draw_text(512,420,"Name 18")
		
		draw_text(96,214,"#13 Pulled: " + string(global.collection_array[13]))
		draw_text(288,214,"#14 Pulled: " + string(global.collection_array[14]))
		draw_text(512,214,"#15 Pulled: " + string(global.collection_array[15]))
		draw_text(704,214,"#16 Pulled: " + string(global.collection_array[16]))
		draw_text(288,438,"#17 Pulled: " + string(global.collection_array[17]))
		draw_text(512,438,"#18 Pulled: " + string(global.collection_array[18]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection4)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 19-24
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"4/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 19")
		draw_text(288,196,"Name 20")
		draw_text(512,196,"Name 21")
		draw_text(704,196,"Name 22")
		draw_text(288,420,"Name 23")
		draw_text(512,420,"Name 24")
		
		draw_text(96,214,"#19 Pulled: " + string(global.collection_array[19]))
		draw_text(288,214,"#20 Pulled: " + string(global.collection_array[20]))
		draw_text(512,214,"#21 Pulled: " + string(global.collection_array[21]))
		draw_text(704,214,"#22 Pulled: " + string(global.collection_array[22]))
		draw_text(288,438,"#23 Pulled: " + string(global.collection_array[23]))
		draw_text(512,438,"#24 Pulled: " + string(global.collection_array[24]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection5)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 25-30
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"5/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 25")
		draw_text(288,196,"Name 26")
		draw_text(512,196,"Name 27")
		draw_text(704,196,"Name 28")
		draw_text(288,420,"Name 29")
		draw_text(512,420,"Name 30")
		
		draw_text(96,214,"#25 Pulled: " + string(global.collection_array[25]))
		draw_text(288,214,"#26 Pulled: " + string(global.collection_array[26]))
		draw_text(512,214,"#27 Pulled: " + string(global.collection_array[27]))
		draw_text(704,214,"#28 Pulled: " + string(global.collection_array[28]))
		draw_text(288,438,"#29 Pulled: " + string(global.collection_array[29]))
		draw_text(512,438,"#30 Pulled: " + string(global.collection_array[30]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection6)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 31-36
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"6/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 31")
		draw_text(288,196,"Name 32")
		draw_text(512,196,"Name 33")
		draw_text(704,196,"Name 34")
		draw_text(288,420,"Name 35")
		draw_text(512,420,"Name 36")
		
		draw_text(96,214,"#31 Pulled: " + string(global.collection_array[31]))
		draw_text(288,214,"#32 Pulled: " + string(global.collection_array[32]))
		draw_text(512,214,"#33 Pulled: " + string(global.collection_array[33]))
		draw_text(704,214,"#34 Pulled: " + string(global.collection_array[34]))
		draw_text(288,438,"#35 Pulled: " + string(global.collection_array[35]))
		draw_text(512,438,"#36 Pulled: " + string(global.collection_array[36]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection7)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 37-42
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"7/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 37")
		draw_text(288,196,"Name 38")
		draw_text(512,196,"Name 39")
		draw_text(704,196,"Name 40")
		draw_text(288,420,"Name 41")
		draw_text(512,420,"Name 42")
		
		draw_text(96,214,"#37 Pulled: " + string(global.collection_array[37]))
		draw_text(288,214,"#38 Pulled: " + string(global.collection_array[38]))
		draw_text(512,214,"#39 Pulled: " + string(global.collection_array[39]))
		draw_text(704,214,"#40 Pulled: " + string(global.collection_array[40]))
		draw_text(288,438,"#41 Pulled: " + string(global.collection_array[41]))
		draw_text(512,438,"#42 Pulled: " + string(global.collection_array[42]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection8)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 43-48
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"8/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 43")
		draw_text(288,196,"Name 44")
		draw_text(512,196,"Name 45")
		draw_text(704,196,"Name 46")
		draw_text(288,420,"Name 47")
		draw_text(512,420,"Name 48")
		
		draw_text(96,214,"#43 Pulled: " + string(global.collection_array[43]))
		draw_text(288,214,"#44 Pulled: " + string(global.collection_array[44]))
		draw_text(512,214,"#45 Pulled: " + string(global.collection_array[45]))
		draw_text(704,214,"#46 Pulled: " + string(global.collection_array[46]))
		draw_text(288,438,"#47 Pulled: " + string(global.collection_array[47]))
		draw_text(512,438,"#48 Pulled: " + string(global.collection_array[48]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection9)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 49-54
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"9/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 49")
		draw_text(288,196,"Name 50")
		draw_text(512,196,"Name 51")
		draw_text(704,196,"Name 52")
		draw_text(288,420,"Name 53")
		draw_text(512,420,"Name 54")
		
		draw_text(96,214,"#49 Pulled: " + string(global.collection_array[49]))
		draw_text(288,214,"#50 Pulled: " + string(global.collection_array[50]))
		draw_text(512,214,"#51 Pulled: " + string(global.collection_array[51]))
		draw_text(704,214,"#52 Pulled: " + string(global.collection_array[52]))
		draw_text(288,438,"#53 Pulled: " + string(global.collection_array[53]))
		draw_text(512,438,"#54 Pulled: " + string(global.collection_array[54]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection10)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 55-60
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"10/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 55")
		draw_text(288,196,"Name 56")
		draw_text(512,196,"Name 57")
		draw_text(704,196,"Name 58")
		draw_text(288,420,"Name 59")
		draw_text(512,420,"Name 60")
		
		draw_text(96,214,"#55 Pulled: " + string(global.collection_array[55]))
		draw_text(288,214,"#56 Pulled: " + string(global.collection_array[56]))
		draw_text(512,214,"#57 Pulled: " + string(global.collection_array[57]))
		draw_text(704,214,"#58 Pulled: " + string(global.collection_array[58]))
		draw_text(288,438,"#59 Pulled: " + string(global.collection_array[59]))
		draw_text(512,438,"#60 Pulled: " + string(global.collection_array[60]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection11)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 61-66
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"11/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 61")
		draw_text(288,196,"Name 62")
		draw_text(512,196,"Name 63")
		draw_text(704,196,"Name 64")
		draw_text(288,420,"Name 65")
		draw_text(512,420,"Name 66")
		
		draw_text(96,214,"#61 Pulled: " + string(global.collection_array[61]))
		draw_text(288,214,"#62 Pulled: " + string(global.collection_array[62]))
		draw_text(512,214,"#63 Pulled: " + string(global.collection_array[63]))
		draw_text(704,214,"#64 Pulled: " + string(global.collection_array[64]))
		draw_text(288,438,"#65 Pulled: " + string(global.collection_array[65]))
		draw_text(512,438,"#66 Pulled: " + string(global.collection_array[66]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection12)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 67-72
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"12/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 67")
		draw_text(288,196,"Name 68")
		draw_text(512,196,"Name 69")
		draw_text(704,196,"Name 70")
		draw_text(288,420,"Name 71")
		draw_text(512,420,"Name 72")
		
		draw_text(96,214,"#67 Pulled: " + string(global.collection_array[67]))
		draw_text(288,214,"#68 Pulled: " + string(global.collection_array[68]))
		draw_text(512,214,"#69 Pulled: " + string(global.collection_array[69]))
		draw_text(704,214,"#70 Pulled: " + string(global.collection_array[70]))
		draw_text(288,438,"#71 Pulled: " + string(global.collection_array[71]))
		draw_text(512,438,"#72 Pulled: " + string(global.collection_array[72]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection13)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 73-78
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"13/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 73")
		draw_text(288,196,"Name 74")
		draw_text(512,196,"Name 75")
		draw_text(704,196,"Name 76")
		draw_text(288,420,"Name 77")
		draw_text(512,420,"Name 78")
		
		draw_text(96,214,"#73 Pulled: " + string(global.collection_array[73]))
		draw_text(288,214,"#74 Pulled: " + string(global.collection_array[74]))
		draw_text(512,214,"#75 Pulled: " + string(global.collection_array[75]))
		draw_text(704,214,"#76 Pulled: " + string(global.collection_array[76]))
		draw_text(288,438,"#77 Pulled: " + string(global.collection_array[77]))
		draw_text(512,438,"#78 Pulled: " + string(global.collection_array[78]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection14)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 79-84
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"14/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 79")
		draw_text(288,196,"Name 80")
		draw_text(512,196,"Name 81")
		draw_text(704,196,"Name 82")
		draw_text(288,420,"Name 83")
		draw_text(512,420,"Name 84")
		
		draw_text(96,214,"#79 Pulled: " + string(global.collection_array[79]))
		draw_text(288,214,"#80 Pulled: " + string(global.collection_array[80]))
		draw_text(512,214,"#81 Pulled: " + string(global.collection_array[81]))
		draw_text(704,214,"#82 Pulled: " + string(global.collection_array[82]))
		draw_text(288,438,"#83 Pulled: " + string(global.collection_array[83]))
		draw_text(512,438,"#84 Pulled: " + string(global.collection_array[84]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection15)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 85-90
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"15/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 85")
		draw_text(288,196,"Name 86")
		draw_text(512,196,"Name 87")
		draw_text(704,196,"Name 88")
		draw_text(288,420,"Name 89")
		draw_text(512,420,"Name 90")
		
		draw_text(96,214,"#85 Pulled: " + string(global.collection_array[85]))
		draw_text(288,214,"#86 Pulled: " + string(global.collection_array[86]))
		draw_text(512,214,"#87 Pulled: " + string(global.collection_array[87]))
		draw_text(704,214,"#88 Pulled: " + string(global.collection_array[88]))
		draw_text(288,438,"#89 Pulled: " + string(global.collection_array[89]))
		draw_text(512,438,"#90 Pulled: " + string(global.collection_array[90]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection16)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 91-96
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"16/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 91")
		draw_text(288,196,"Name 92")
		draw_text(512,196,"Name 93")
		draw_text(704,196,"Name 94")
		draw_text(288,420,"Name 95")
		draw_text(512,420,"Name 96")
		
		draw_text(96,214,"#91 Pulled: " + string(global.collection_array[91]))
		draw_text(288,214,"#92 Pulled: " + string(global.collection_array[92]))
		draw_text(512,214,"#93 Pulled: " + string(global.collection_array[93]))
		draw_text(704,214,"#94 Pulled: " + string(global.collection_array[94]))
		draw_text(288,438,"#95 Pulled: " + string(global.collection_array[95]))
		draw_text(512,438,"#96 Pulled: " + string(global.collection_array[96]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection17)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 97-102
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"17/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 97")
		draw_text(288,196,"Name 98")
		draw_text(512,196,"Name 99")
		draw_text(704,196,"Name 100")
		draw_text(288,420,"Name 101")
		draw_text(512,420,"Name 102")
		
		draw_text(96,214,"#97 Pulled: " + string(global.collection_array[97]))
		draw_text(288,214,"#98 Pulled: " + string(global.collection_array[98]))
		draw_text(512,214,"#99 Pulled: " + string(global.collection_array[99]))
		draw_text(704,214,"#100 Pulled: " + string(global.collection_array[100]))
		draw_text(288,438,"#101 Pulled: " + string(global.collection_array[101]))
		draw_text(512,438,"#102 Pulled: " + string(global.collection_array[102]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection18)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 103-108
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"18/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 103")
		draw_text(288,196,"Name 104")
		draw_text(512,196,"Name 105")
		draw_text(704,196,"Name 106")
		draw_text(288,420,"Name 107")
		draw_text(512,420,"Name 108")
		
		draw_text(96,214,"#103 Pulled: " + string(global.collection_array[103]))
		draw_text(288,214,"#104 Pulled: " + string(global.collection_array[104]))
		draw_text(512,214,"#105 Pulled: " + string(global.collection_array[105]))
		draw_text(704,214,"#106 Pulled: " + string(global.collection_array[106]))
		draw_text(288,438,"#107 Pulled: " + string(global.collection_array[107]))
		draw_text(512,438,"#108 Pulled: " + string(global.collection_array[108]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection19)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 109-114
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"19/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 109")
		draw_text(288,196,"Name 110")
		draw_text(512,196,"Name 111")
		draw_text(704,196,"Name 112")
		draw_text(288,420,"Name 113")
		draw_text(512,420,"Name 114")
		
		draw_text(96,214,"#109 Pulled: " + string(global.collection_array[109]))
		draw_text(288,214,"#110 Pulled: " + string(global.collection_array[110]))
		draw_text(512,214,"#111 Pulled: " + string(global.collection_array[111]))
		draw_text(704,214,"#112 Pulled: " + string(global.collection_array[112]))
		draw_text(288,438,"#113 Pulled: " + string(global.collection_array[113]))
		draw_text(512,438,"#114 Pulled: " + string(global.collection_array[114]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}

if (room == rCollection20)
{
	if (array_length(global.collection_array) == 121)
	{
		//draw the names for cards 115-120
		draw_set_halign(fa_right)
		draw_set_valign(fa_middle)	
		
		draw_text(790,430,"20/20")
		
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		
		draw_text(96,196,"Name 115")
		draw_text(288,196,"Name 116")
		draw_text(512,196,"Name 117")
		draw_text(704,196,"Name 118")
		draw_text(288,420,"Name 119")
		draw_text(512,420,"Name 120")
		
		draw_text(96,214,"#115 Pulled: " + string(global.collection_array[115]))
		draw_text(288,214,"#116 Pulled: " + string(global.collection_array[116]))
		draw_text(512,214,"#117 Pulled: " + string(global.collection_array[117]))
		draw_text(704,214,"#118 Pulled: " + string(global.collection_array[118]))
		draw_text(288,438,"#119 Pulled: " + string(global.collection_array[119]))
		draw_text(512,438,"#120 Pulled: " + string(global.collection_array[120]))
		
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
}