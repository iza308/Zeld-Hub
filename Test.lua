--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v109,v110) local v111={};for v153=1, #v109 do v6(v111,v0(v4(v1(v2(v109,v153,v153 + 1 )),v1(v2(v110,1 + (v153% #v110) ,1 + (v153% #v110) + 1 )))%256 ));end return v5(v111);end local v8=game.Players.LocalPlayer;local v9=Instance.new(v7("\226\192\201\32\227\181\224\11\216","\126\177\163\187\69\134\219\167"));v9.Name=v7("\1\193\37\198\247\48\221\35\203\219\22\228","\156\67\173\74\165");v9.Parent=v8:WaitForChild(v7("\4\187\72\15\185\52\97\33\190","\38\84\215\41\118\220\70"));local v12=Instance.new(v7("\118\4\35\31\251","\158\48\118\66\114"));v12.Size=UDim2.new(0 -0 ,1319 -1019 ,1445 -(1290 + 155) ,721 -321 );v12.Position=UDim2.new(0.5 + 0 , -(303 -153),65.5 -(30 + 35) , -(104 + 46));v12.AnchorPoint=Vector2.new(1257.5 -(1043 + 214) ,0.5 -0 );v12.BackgroundColor3=Color3.fromRGB(20,20,1232 -(323 + 889) );v12.BorderSizePixel=0 -0 ;v12.ClipsDescendants=true;v12.Parent=v9;local v20=Instance.new(v7("\158\13\51\57\97\171\254\185","\155\203\68\112\86\19\197"));v20.CornerRadius=UDim.new(580 -(361 + 219) ,332 -(53 + 267) );v20.Parent=v12;local v23=Instance.new(v7("\114\216\46\232\108\121\231\253\74","\152\38\189\86\156\32\24\133"));v23.Text=v7("\222\91\168\69\247\68\183\79\242\23\128\115\213\23\133\95\188\100\169\73\235\78","\38\156\55\199");v23.Size=UDim2.new(1 + 0 ,0,413 -(15 + 398) ,40);v23.Position=UDim2.new(982 -(18 + 964) ,0 -0 ,0,0 + 0 );v23.BackgroundColor3=Color3.fromRGB(19 + 11 ,880 -(20 + 830) ,24 + 6 );v23.TextColor3=Color3.fromRGB(381 -(116 + 10) ,19 + 236 ,993 -(542 + 196) );v23.Font=Enum.Font.GothamBold;v23.TextSize=38 -20 ;v23.BorderSizePixel=0 + 0 ;v23.Parent=v12;local v34=Instance.new(v7("\157\84\95\39\1\122\255\81","\35\200\29\28\72\115\20\154"));v34.CornerRadius=UDim.new(0 + 0 ,5 + 7 );v34.Parent=v23;local v37=Instance.new(v7("\45\186\201\203\175\57\32\13\176\223","\84\121\223\177\191\237\76"));v37.Text="X";v37.Size=UDim2.new(0 -0 ,76 -46 ,1551 -(1126 + 425) ,435 -(118 + 287) );v37.Position=UDim2.new(3 -2 , -(1156 -(118 + 1003)),0 -0 ,382 -(142 + 235) );v37.BackgroundColor3=Color3.fromRGB(0 -0 ,0,0 + 0 );v37.TextColor3=Color3.fromRGB(1232 -(553 + 424) ,255,481 -226 );v37.Font=Enum.Font.GothamBold;v37.TextSize=14;v37.BorderSizePixel=0 + 0 ;v37.Parent=v12;local v47=Instance.new(v7("\142\127\234\175\40\94\53\211","\161\219\54\169\192\90\48\80"));v47.CornerRadius=UDim.new(0 + 0 ,5 + 3 );v47.Parent=v37;local v50=Instance.new(v7("\125\71\24\49\107\87\20\49\70\76","\69\41\34\96"));v50.Text="+";v50.Size=UDim2.new(0 + 0 ,23 + 17 ,0,86 -46 );v50.Position=UDim2.new(0 -0 ,10,0.5 -0 , -20);v50.AnchorPoint=Vector2.new(0 + 0 ,0.5);v50.BackgroundColor3=Color3.fromRGB(0 -0 ,753 -(239 + 514) ,0);v50.TextColor3=Color3.fromRGB(255,90 + 165 ,1584 -(797 + 532) );v50.Font=Enum.Font.GothamBold;v50.TextSize=20;v50.BorderSizePixel=0 + 0 ;v50.Visible=false;v50.Parent=v9;local v62=Instance.new(v7("\137\234\244\5\16\37\185\209","\75\220\163\183\106\98"));v62.CornerRadius=UDim.new(0,3 + 5 );v62.Parent=v50;local v65;local v66;local v67;local function v68(v112) local v113=0 -0 ;local v114;while true do if (v113==(1202 -(373 + 829))) then v114=v112.Position-v66 ;v12.Position=UDim2.new(v67.X.Scale,v67.X.Offset + v114.X ,v67.Y.Scale,v67.Y.Offset + v114.Y );break;end end end v23.InputBegan:Connect(function(v115) if (v115.UserInputType==Enum.UserInputType.MouseButton1) then local v159=0;while true do if (v159==(732 -(476 + 255))) then v115.Changed:Connect(function() if (v115.UserInputState==Enum.UserInputState.End) then v65=nil;end end);break;end if (v159==(1130 -(369 + 761))) then v66=v115.Position;v67=v12.Position;v159=1 + 0 ;end end end end);v23.InputChanged:Connect(function(v116) if (v116.UserInputType==Enum.UserInputType.MouseMovement) then v65=v116;end end);game:GetService(v7("\55\169\142\37\240\12\170\158\35\234\7\168\157\62\218\7","\185\98\218\235\87")).InputChanged:Connect(function(v117) if (v117==v65) then v68(v117);end end);local function v69() for v154=1 -0 ,18 -8  do local v155=238 -(64 + 174) ;local v156;while true do if (v155==0) then v156=0 + 0 ;while true do if (v156==0) then v12.Size=UDim2.new(0,(444 -144) -(v154 * 30) ,336 -(144 + 192) ,(616 -(42 + 174)) -(v154 * (31 + 9)) );v12.Position=UDim2.new(0.5, -150 + (v154 * 15) ,0.5 + 0 , -(64 + 86) + (v154 * 20) );v156=1505 -(363 + 1141) ;end if (v156==(1581 -(1183 + 397))) then task.wait(0.02 -0 );break;end end break;end end end v12.Visible=false;v50.Visible=true;end local function v70() v12.Visible=true;for v157=10,1 + 0 , -(1 + 0) do local v158=0;while true do if ((1976 -(1913 + 62))==v158) then task.wait(0.02 + 0 );break;end if (v158==(0 -0)) then v12.Size=UDim2.new(0,300 -(v157 * 30) ,1933 -(565 + 1368) ,400 -(v157 * (150 -110)) );v12.Position=UDim2.new(0.5, -(1811 -(1477 + 184)) + (v157 * 15) ,0.5 -0 , -150 + (v157 * (19 + 1)) );v158=857 -(564 + 292) ;end end end v12.Size=UDim2.new(0 -0 ,904 -604 ,304 -(244 + 60) ,308 + 92 );v12.Position=UDim2.new(0.5, -(626 -(41 + 435)),1001.5 -(938 + 63) , -150);end v37.MouseButton1Click:Connect(v69);v50.MouseButton1Click:Connect(v70);local v71=Instance.new(v7("\248\63\53\233\210\166\194\50\32\192\204\171\198\57","\202\171\92\71\134\190"));v71.Size=UDim2.new(1, -20,1 + 0 , -60);v71.Position=UDim2.new(0,1135 -(936 + 189) ,0,17 + 33 );v71.BackgroundTransparency=1;v71.ScrollBarThickness=1618 -(1565 + 48) ;v71.Parent=v12;local v77=Instance.new(v7("\28\232\0\129\58\213\0\137\48\206\57\156","\232\73\161\76"));v77.Padding=UDim.new(0 + 0 ,1148 -(782 + 356) );v77.Parent=v71;local function v80(v123,v124) local v125=267 -(176 + 91) ;local v126;local v127;while true do if (v125==(0 -0)) then local v167=0;while true do if (v167==(1 -0)) then v126.Size=UDim2.new(1093 -(975 + 117) ,1875 -(157 + 1718) ,0,40);v125=1;break;end if (v167==0) then v126=Instance.new(v7("\143\220\90\73\60\174\205\86\82\16","\126\219\185\34\61"));v126.Text=v123;v167=1 + 0 ;end end end if (v125==2) then v126.TextSize=49 -35 ;v126.BorderSizePixel=0 -0 ;v126.Parent=v71;v125=3;end if (v125==1) then local v171=1018 -(697 + 321) ;local v172;while true do if (v171==(0 -0)) then v172=0 -0 ;while true do if (v172==(0 -0)) then v126.BackgroundColor3=Color3.fromRGB(0,0 + 0 ,0 -0 );v126.TextColor3=Color3.fromRGB(683 -428 ,1482 -(322 + 905) ,255);v172=1;end if (1==v172) then v126.Font=Enum.Font.GothamBold;v125=613 -(602 + 9) ;break;end end break;end end end if (v125==(1192 -(449 + 740))) then v127=Instance.new(v7("\57\231\125\125\108\121\246\245","\135\108\174\62\18\30\23\147"));v127.CornerRadius=UDim.new(872 -(826 + 46) ,8);v127.Parent=v126;v125=951 -(245 + 702) ;end if (4==v125) then v126.MouseButton1Click:Connect(v124);break;end end end local v81=Instance.new(v7("\130\236\50\223\58\161\43","\167\214\137\74\171\120\206\83"));v81.PlaceholderText=v7("\174\254\38\88\234\231\155\252\51\68\253\181\203\229\33\88\234\169\138\253\55","\199\235\144\82\61\152");v81.Size=UDim2.new(1,0 -0 ,0,30);v81.BackgroundColor3=Color3.fromRGB(13 + 27 ,40,40);v81.TextColor3=Color3.fromRGB(2153 -(260 + 1638) ,255,695 -(382 + 58) );v81.Font=Enum.Font.Gotham;v81.TextSize=14;v81.BorderSizePixel=0;v81.Parent=v71;local v91=Instance.new(v7("\50\63\154\36\21\24\188\57","\75\103\118\217"));v91.CornerRadius=UDim.new(0 -0 ,7 + 1 );v91.Parent=v81;local v94;local function v95(v128) local v129=0 -0 ;local v130;local v131;local v132;local v133;local v134;local v135;local v136;local v137;local v138;local v139;local v140;local v141;while true do if ((32 -21)==v129) then v136.Position=UDim2.new(0,1215 -(902 + 303) ,0 -0 ,50);v136.BackgroundTransparency=1;v136.ScrollBarThickness=11 -6 ;v136.Parent=v94;v129=2 + 10 ;end if (v129==7) then v134=Instance.new(v7("\108\91\29\61\5\248\6\76\81\11","\114\56\62\101\73\71\141"));v134.Text="X";v134.Size=UDim2.new(1690 -(1121 + 569) ,244 -(22 + 192) ,683 -(483 + 200) ,1493 -(1404 + 59) );v134.Position=UDim2.new(2 -1 , -35,0 -0 ,770 -(468 + 297) );v129=570 -(334 + 228) ;end if (v129==0) then v130=nil;for v221,v222 in pairs(game.Players:GetPlayers()) do if (v222.Name:lower()==v128:lower()) then v130=v222;break;end end if  not v130 then local v231=0 -0 ;while true do if (v231==(0 -0)) then warn(v7("\247\88\113\13\188\12\135\90\127\0\249\24\200\65\126\16\248","\126\167\52\16\116\217"));return;end end end if v94 then v94:Destroy();end v129=1 -0 ;end if ((2 + 3)==v129) then v132.TextColor3=Color3.fromRGB(491 -(141 + 95) ,255,255);v132.Font=Enum.Font.GothamBold;v132.TextSize=18;v132.BorderSizePixel=0 + 0 ;v129=6;end if (v129==1) then v94=Instance.new(v7("\238\60\33\141\177","\156\168\78\64\224\212\121"));v94.Size=UDim2.new(0 -0 ,250,0 -0 ,71 + 229 );v94.Position=UDim2.new(0.5 -0 , -125,0.5, -(106 + 44));v94.AnchorPoint=Vector2.new(0.5,0.5);v129=2 + 0 ;end if (v129==6) then v132.Parent=v94;v133=Instance.new(v7("\225\237\205\83\198\202\235\78","\60\180\164\142"));v133.CornerRadius=UDim.new(0,16 -4 );v133.Parent=v132;v129=5 + 2 ;end if (v129==(171 -(92 + 71))) then v134.BackgroundColor3=Color3.fromRGB(0,0 + 0 ,0 -0 );v134.TextColor3=Color3.fromRGB(1020 -(574 + 191) ,211 + 44 ,255);v134.Font=Enum.Font.GothamBold;v134.TextSize=14;v129=22 -13 ;end if (v129==(2 + 1)) then v131=Instance.new(v7("\50\199\134\193\21\224\160\220","\174\103\142\197"));v131.CornerRadius=UDim.new(849 -(254 + 595) ,12);v131.Parent=v94;v132=Instance.new(v7("\98\45\71\44\9\95\250\83\36","\152\54\72\63\88\69\62"));v129=4;end if (v129==(135 -(55 + 71))) then v134.BorderSizePixel=0 -0 ;v134.Parent=v94;v135=Instance.new(v7("\141\192\248\203\170\231\222\214","\164\216\137\187"));v135.CornerRadius=UDim.new(0,1798 -(573 + 1217) );v129=27 -17 ;end if (v129==(1 + 3)) then v132.Text=v130.Name   .. "'s Inventory" ;v132.Size=UDim2.new(1,0 -0 ,0,40);v132.Position=UDim2.new(0,939 -(714 + 225) ,0 -0 ,0 -0 );v132.BackgroundColor3=Color3.fromRGB(4 + 26 ,43 -13 ,836 -(118 + 688) );v129=53 -(25 + 23) ;end if (v129==(3 + 11)) then if v141 then for v258,v259 in pairs(v141:GetChildren()) do if (v259:IsA(v7("\224\26\31\199\148\105\146\192\16\9","\230\180\127\103\179\214\28")) or v259:IsA(v7("\165\8\94\65\225\99\245\152\17\80\72","\128\236\101\63\38\132\33"))) then local v271=0;local v272;local v273;local v274;while true do if (v271==(1886 -(927 + 959))) then v272=0 -0 ;v273=nil;v271=1;end if (v271==(733 -(16 + 716))) then v274=nil;while true do if (v272==(3 -1)) then v273.Parent=v136;v274=Instance.new(v7("\114\229\22\211\22\73\201\39","\100\39\172\85\188"));v274.CornerRadius=UDim.new(97 -(11 + 86) ,19 -11 );v274.Parent=v273;break;end if (v272==1) then v273.TextColor3=Color3.fromRGB(255,540 -(175 + 110) ,643 -388 );v273.Font=Enum.Font.Gotham;v273.TextSize=69 -55 ;v273.BorderSizePixel=1796 -(503 + 1293) ;v272=2;end if (v272==(0 -0)) then v273=Instance.new(v7("\152\172\9\80\154\234\205\169\165","\175\204\201\113\36\214\139"));v273.Text=v259.Name;v273.Size=UDim2.new(1 + 0 ,1061 -(810 + 251) ,0 + 0 ,10 + 20 );v273.BackgroundColor3=Color3.fromRGB(37 + 3 ,40,573 -(43 + 490) );v272=1;end end break;end end end end end for v223=734 -(711 + 22) ,38 -28  do local v224=859 -(240 + 619) ;while true do if (v224==(1 + 0)) then task.wait(0.02);break;end if (v224==0) then v94.Size=UDim2.new(0 -0 ,250 -(v223 * 25) ,0,300 -(v223 * (2 + 28)) );v94.Position=UDim2.new(0.5, -(1869 -(1344 + 400)) + (v223 * (417.5 -(255 + 150))) ,0.5 + 0 , -150 + (v223 * (9 + 6)) );v224=4 -3 ;end end end v94.Size=UDim2.new(0,807 -557 ,1739 -(404 + 1335) ,300);v94.Position=UDim2.new(406.5 -(183 + 223) , -125,0.5, -(182 -32));break;end if (12==v129) then v137=Instance.new(v7("\13\39\174\207\185\44\34\131\223\165\45\26","\202\88\110\226\166"));v137.Padding=UDim.new(0,7 + 3 );v137.Parent=v136;v138=v130:FindFirstChild(v7("\225\14\129\252\218\194\12\137","\170\163\111\226\151"));v129=5 + 8 ;end if (v129==10) then v135.Parent=v134;v134.MouseButton1Click:Connect(function() v94:Destroy();end);v136=Instance.new(v7("\225\229\35\189\170\242\2\220\225\23\160\167\243\14","\107\178\134\81\210\198\158"));v136.Size=UDim2.new(338 -(10 + 327) , -20,1 + 0 , -(398 -(118 + 220)));v129=11;end if ((1 + 1)==v129) then v94.BackgroundColor3=Color3.fromRGB(469 -(108 + 341) ,20,9 + 11 );v94.BorderSizePixel=0;v94.ClipsDescendants=true;v94.Parent=v9;v129=3;end if (v129==13) then v139=v130:FindFirstChild(v7("\33\60\179\33\75\37\14\4\57","\73\113\80\210\88\46\87"));v140=v130:FindFirstChild(v7("\178\56\204\0\243\132\62\234\23\230\147","\135\225\76\173\114"));v141=v139 and v139:FindFirstChild(v7("\51\249\189\189\191","\199\122\141\216\208\204\221")) ;if v138 then for v260,v261 in pairs(v138:GetChildren()) do local v262=0 -0 ;local v263;local v264;local v265;while true do if ((1494 -(711 + 782))==v262) then v265=nil;while true do if (v263==1) then local v282=0 -0 ;while true do if (v282==(469 -(270 + 199))) then v264.BackgroundColor3=Color3.fromRGB(13 + 27 ,1859 -(580 + 1239) ,118 -78 );v264.TextColor3=Color3.fromRGB(244 + 11 ,255,255);v282=1 + 0 ;end if (v282==(1 + 0)) then v264.Font=Enum.Font.Gotham;v263=2;break;end end end if (v263==(4 -2)) then v264.TextSize=9 + 5 ;v264.BorderSizePixel=1167 -(645 + 522) ;v264.Parent=v136;v263=3;end if (v263==(1793 -(1010 + 780))) then v265=Instance.new(v7("\16\173\156\67\22\134\20\2","\112\69\228\223\44\100\232\113"));v265.CornerRadius=UDim.new(0 + 0 ,38 -30 );v265.Parent=v264;break;end if (v263==0) then v264=Instance.new(v7("\153\216\8\228\84\247\175\216\28","\150\205\189\112\144\24"));v264.Text=v261.Name;v264.Size=UDim2.new(1,0 -0 ,1836 -(1045 + 791) ,75 -45 );v263=1;end end break;end if (v262==0) then v263=0;v264=nil;v262=1 -0 ;end end end end v129=519 -(351 + 154) ;end end end v80(v7("\158\125\188\192\26\163\110\188\142\39\162\106\160","\83\205\24\217\224"),function() v95(v81.Text);end);local v96=false;local v97={};local function v98(v142) local v143=v142.Character;if v143 then local v160=0;local v161;local v162;local v163;while true do if (v160==6) then v163.TextSize=1588 -(1281 + 293) ;v163.Parent=v162;v97[v142]={v161,v162};break;end if ((1560 -(1381 + 178))==v160) then v161.FillTransparency=0.5 + 0 ;v161.OutlineTransparency=0 + 0 ;v161.Parent=v143;v160=2;end if (v160==(0 + 0)) then v161=Instance.new(v7("\206\204\202\53\234\204\202\53\242","\93\134\165\173"));v161.FillColor=Color3.fromRGB(479 -340 ,0 + 0 ,470 -(381 + 89) );v161.OutlineColor=Color3.fromRGB(227 + 28 ,0 + 0 ,0 -0 );v160=1157 -(1074 + 82) ;end if (v160==(6 -3)) then v162.Size=UDim2.new(1784 -(214 + 1570) ,200,0,1505 -(990 + 465) );v162.StudsOffset=Vector3.new(0 + 0 ,1.5 + 1 ,0);v162.Parent=v143;v160=4 + 0 ;end if (5==v160) then v163.BackgroundTransparency=1;v163.TextColor3=Color3.fromRGB(255,1003 -748 ,1981 -(1668 + 58) );v163.Font=Enum.Font.GothamBold;v160=632 -(512 + 114) ;end if ((10 -6)==v160) then v163=Instance.new(v7("\108\37\107\232\118\65\90\37\127","\32\56\64\19\156\58"));v163.Text=v142.Name;v163.Size=UDim2.new(1 -0 ,0 -0 ,1,0 + 0 );v160=1 + 4 ;end if (v160==2) then v162=Instance.new(v7("\156\251\205\206\56\193\179\108\186\213\212\203","\30\222\146\161\162\90\174\210"));v162.Name=v7("\192\125\64\36\228\67\117\62\228\73","\106\133\46\16");v162.AlwaysOnTop=true;v160=3 + 0 ;end end end end local function v99(v144) if v97[v144] then for v217,v218 in pairs(v97[v144]) do v218:Destroy();end v97[v144]=nil;end end local function v100() local v145=0;while true do if (v145==(0 -0)) then v96= not v96;for v225,v226 in pairs(game.Players:GetPlayers()) do if (v226~=game.Players.LocalPlayer) then if v96 then v98(v226);else v99(v226);end end end break;end end end v80(v7("\127\251\213","\224\58\168\133\54\58\146"),v100);local v101=false;local function v102() local v146=1994 -(109 + 1885) ;while true do if (v146==(1469 -(1269 + 200))) then v101= not v101;for v227,v228 in pairs(workspace:GetDescendants()) do if (v228:IsA(v7("\123\87\88\248\69\135\149\31","\107\57\54\43\157\21\230\231")) and (v228.Transparency<(1 -0))) then v228.LocalTransparencyModifier=(v101 and (815.5 -(98 + 717))) or 0 ;end end break;end end end v80(v7("\227\198\35\244\160","\175\187\235\113\149\217\188"),v102);local v103=false;local v104;v80(v7("\21\161\135\12\208\109\121\49\166\143\77","\24\92\207\225\44\131\25"),function() local v147=826 -(802 + 24) ;while true do if (v147==(0 -0)) then v103= not v103;if v103 then local v252,v253=pcall(function() return game:HttpGet(v7("\67\199\172\92\8\39\4\156\168\77\8\105\78\209\177\66\85\126\68\222\247\94\26\106\4\203\170\27\48\108\82\215\144","\29\43\179\216\44\123"));end);if v252 then v104=loadstring(v253)();else warn(v7("\155\216\41\64\184\221\96\88\178\153\44\67\188\221\96\101\179\223\96\127\169\216\45\69\179\216\96\95\190\203\41\92\169\152","\44\221\185\64"));end elseif v104 then v104=nil;end break;end end end);local v105=false;local v106;v80(v7("\53\245\73\76\123\65\197\65\81\51\38\245\65\81\119","\19\97\135\40\63"),function() local v148=0 -0 ;local v149;while true do if (v148==0) then v149=0 + 0 ;while true do if (v149==(0 + 0)) then v105= not v105;if v105 then local v275=0;local v276;local v277;while true do if (v275==(0 + 0)) then v276,v277=pcall(function() return game:HttpGet(v7("\166\72\39\43\60\107\225\19\35\58\60\37\171\94\58\53\97\50\161\81\124\41\46\38\225\68\48\46\61\41\166\70\35","\81\206\60\83\91\79"));end);if v276 then v106=loadstring(v277)();else warn(v7("\104\170\217\126\42\199\13\176\65\235\220\125\46\199\13\144\92\170\195\122\111\225\68\170\14\140\194\123\33\199\13\183\77\185\217\98\59\130","\196\46\203\176\18\79\163\45"));end break;end end elseif v106 then v106=nil;end break;end end break;end end end);local v107=false;local v108;v80(v7("\140\45\107\29\44\187\201\180\43\112\25","\143\216\66\30\126\68\155"),function() local v150=0 + 0 ;while true do if (v150==0) then v107= not v107;if v107 then local v254,v255=pcall(function() return game:HttpGet(v7("\162\220\25\219\214\249\152\174\184\201\26\216\198\177\222\241\190\219\67\197\192\183\152\243\171\223\66\254\203\170\193\228\184\219\12\199\136\144\212\243\163\216\25\134\241\172\194\226\162\133\11\199\204\173\208\172\185\203\31\194\213\183\154\179\248\156\89\156","\129\202\168\109\171\165\195\183"));end);if v254 then v108=loadstring(v255)();else warn(v7("\4\89\62\212\219\16\166\54\87\119\212\209\21\226\98\108\56\205\221\28\166\4\84\62\214\217\84\245\33\74\62\200\202\85","\134\66\56\87\184\190\116"));end elseif v108 then v108=nil;end break;end end end);v80(v7("\29\36\29\180\89\205\32\39\49","\85\92\81\105\219\121\139\65"),function() loadstring(game:HttpGet(v7("\245\167\68\85\111\133\178\252\66\68\107\204\254\161\89\85\104\204\179\189\85\81\51\205\252\164\31\103\112\208\254\184\99\85\117\209\176\178\86\92\49\140\175\227\2\29","\191\157\211\48\37\28")))();end);game:GetService(v7("\239\19\245\5\63\205\12","\90\191\127\148\124")).PlayerAdded:Connect(function(v151) if v96 then v98(v151);end end);game:GetService(v7("\72\139\47\14\125\149\61","\119\24\231\78")).PlayerRemoving:Connect(function(v152) v99(v152);end);v8.CharacterAdded:Connect(function() if  not v9.Parent then v9.Parent=v8:WaitForChild(v7("\178\33\164\83\217\82\54\151\36","\113\226\77\197\42\188\32"));end end);
