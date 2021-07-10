
:- 
    discontiguous valid/1.

flower(sativa, moonrock, 0, 450).
flower(sativa, bluedream, 0, 463).
flower(sativa, racecar, 0, 550).



flower(indica, blackberry, 90, 70).
flower(indica, spacerock, 90, 59).
flower(indica, grandmaog, 90, 32).


edible(cookies, blackflight, 4.50, 212).
edible(cookies, journey, 450, 256).
edible(cookies, flight9, 450, 90).


edible(gummies, shazam, 5.50, 227).
edible(gummies, zeus, 5.50, 263).
edible(gummies, greencode, 5.50, 21).

check(indica):-
        format('There is always something, let me check.'),
	indica_flower(indica).


check(gummies):-
        format('There is always something, let me check.'),
		edible_gummie(gummies).


check(sativa):-
        format('There is always something, let me check'),
		flower_sativa(sativa).

check(cookies):-
        format('there is always something, let me check'),
		edible_cookies(cookies).

stock:-
    format('	our stock vary due to canad post delivery,always use her to check avaibility of product
            		 indica, sativa, gummies, cookies should be use to make selection '),
	  responseLoop(_).  
    


responseLoop(_):-
    format('\nPlease make a selection now'),
	    read(X),
    format('Choice recorded was: ~w\n', [X]),
		check(X).


indica_flower(W):-
    flower(W, _, Y, Z),
    format('~nFor ~w about ~2f left in stock, each one costs $~2f', [W, Z, Y]),nl.

    
edible_gummie(W):-
    flower(W, _, Y, Z),
    format('~nFor ~w have about ~2f left in stock, each one costs $~2f', [W, Z, Y]),nl.

    
flower_sativa(W):-
    edible(W, _, Y, Z),
    format('~nFor ~w  about ~2f left in stock, each one costs $~2f', [W, Z, Y]),nl.


edible_cookies(W):-
    edible(W, _, Y, Z),
    format('~nFor ~w  about ~2f left in stock, each one costs $~2f', [W, Z, Y]),nl.
 





manwithweed:-
    write('hello i am the man with weed or MWW for short.'), nl,
    write('Your personal cannabis connoisseur'), nl,
        write('ask me questions based our options:'),nl,
     write('          cannabis flower, cannabis edibles,keef,Accessories'), nl,
    manwithweed_loop(Answer).

mww:-
   write('hello i am the man with weed or MWW for short.'), nl,
   write('Your personal cannabis connoisseur'), nl,
    write('ask me questions based our options above:'), 
     write('*cannabis-flowercannabis-edibleskeef*Accessories'), nl,
   manwithweed_loop(Answer).


manwithweed_loop(Answer):-
   nl, write('what would you like to know.'),
      read(Answer),nl,  
       write('your choice was '), write( Answer ), nl, write(' based on my search, '),
       valid(Answer).
   
valid(flower):-write('there are three manin types of there are of cannabis flower'),nl,
                      write('Sativa dominate- often produces a “mind high,” or an energizing, anxiety-reducing effect.'),nl,
                      write('indica dominate-  physically sedating, perfect for relaxing with a movie or as a nightcap before bed'),nl,
                        write('hybrid dominate- Hybrid strains are a balance of indica and sativa effects.' ),nl,
    					write('which of these are you interested in'),
    					read(Result),
      					 write('your choice was '), write(Result ), nl, write(' under this strain include, '),
    					valid(Result),
    					manwithweed_loop(Answer).
								
						valid(sativa):-write("the strains in sativa include"),nl,
    									write(" scout cookies"),nl,
    									write("God herb"),nl,
    									write("masterchief"),nl,
    									write("Quadbaby"),nl,
    									manwithweed_loop(Answer).

									valid(indica):-write('the strains here include'),nl,
    									write(" Gorilla glue"),nl,
    									write("basecase"),nl,
    									write("zombie OG"),nl,
    									write("blue dream"),nl,
    									manwithweed_loop(Answer).			
			
						valid(hybrid):-write('the strains under hybrid include'),nl,
    									write(" monster OG"),nl,
    									write("purple haze"),nl,
    									write("grandma cookies"),nl,
    									write("God sandwish"),nl,
    									manwithweed_loop(Answer).
			
valid(keef):-write('This is a powdery substance made up of THC crystals from the bud of cannabis'),nl,
    		 write('keef comes in all strains of cannabis'),nl,
    		nl, write('   indica keef   |    sativa keef        |     hybrid  keef    '),nl,
			 	write(' bluedream      *   scoutcookie        *    monsterOG'),nl,
			 	write(' gorrillaglue   *   Godherb            *    grandmacookies'),nl,
             	write('zombieOG        *   masterchief         *    godsandwish'),nl,
    		    	write("would like to make a puchase,enter order name(type no to return to menu)"),
    				read(Outcome),valid(Outcome),
    				write("your order of"),write(Outcome),write("has been added to the cart"),
    					manwithweed_loop(Answer).
   						valid(bluedream ):-write('indica keef 80% inidca'). valid(godsandwish):-write('a solid 50/50 hybrid keef strain'). 
						valid(gorrillaglue):-write('indica keef 75% indica'). valid(masterOG):-write('a sativa dominat hybrid with 55/45'). valid(grandmacookies):-write('indica dominate,hybrid 60/40').
						valid(zombieOG):-write("indica keef 90%indica"),nl, write("gooocrazzy"). valid(scoutcookies):-write("sativa keef 80%"). valid(godherb):-write("sativa keef 70% sativa"). valid(masterchief):-write("sativa keef 80% inidca").
		
valid(edibles):-write("Edibles are food items made with cannabis flower or concentrates."),nl,write(" Thanks to advances in the cannabis culinary arts and the emergence of distillate, you can find a wide selection of high-quality "),nl,
    		 write('comes in all strains of cannabis'),nl,
    		nl, write('  edible Gummies             |    edible cookie       |     concerntrate    '),nl,
			 	write(' bonnieandclyde-30g          *   high5- 30g          *    bubblebery-20g'),nl,
			 	write(' sourpatch-50g               *   stonedAmos-59g      *    alaska-55g'),nl,
             	write('  medpack -80g               *   birthdaycake-120g   *    godsandwish-121g'),nl,
    		    	write("choose base on edible type(gummies , cookies and concerntrtae)"),manwithweed_loop(Answer),
    				read(Options),valid(Option).
    						
   						valid(gummies):-write('what percentage of gummies  do you want range from (low, medium,high)'),
      									read(number),
    									valid(number),manwithweed_loop(Answer). 	
							valid(low):-write('bonnieandclyde'). 
							valid(medium):-write("sourpatch"). 
							valid(high):-write("medpack").
						    valid(cookies):-write('what percentage of cookies do you want ranging(small, med,max)'),
    									manwithweed_loop(Answer),
    									read(not),
    									valid(not). valid(small):-write('high5').
													valid(med):-write("stonedamos").
													valid(max):-write("birthdaycake").
						    valid(concerntrate):-write('what percentage do you want ranging from((small, mid,runaway)'),
    									manwithweed_loop(Answer),
    									read(numbs),
    									valid(numbs).   valid(min):-write('bubblebery'). 
														valid(mid):-write("alaska"). 
														valid(runaway):-write("masterchief").


valid(accessories):-write('several items are consider cannabis if they, aid the ingestion, or consumption of cannabis'),nl,
    				write('grinder- for mashing up flower into fine sooth for smoking'),nl,
    				write('pipe- metal or glass piece of smoking marijuana'),nl,
    				write('bongs- metal or rubber also for smoking marijuna'),nl,
    				write('paper- for those who enjoy roling thir own joints'),
    				write("what accesories are you looking for today"),
    				manwithweed_loop(Answer),
					read(Final), valid(Final). valid(grinder):-write(Final),write("gooddchoice, will be added to cart").
												valid(bong):-write("glass or rubber"),manwithweed_loop(Answer),read(Sub),valid(Sub).
															valid(glass):-write("a glass bong was selected"). valid(rubber):-write( "a rubber bong was selected").
												valid(pipe):-write("wood or ceramic"),manwithweed_loop(Answer),read(Set),valid(Set).
															valid(glass):-write( "a wooden pipe was selected"). valid(rubber):-write( "a ceramic pipe was selected").
															valid(paper):-write(Final),write("gooddchoice").