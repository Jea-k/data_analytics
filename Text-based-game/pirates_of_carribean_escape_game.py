#using dictionaries

#print title of the game
print("""
=================================================
|| PIRATES OF THE CARRIBEAN - SPARROW'S ESCAPE||
=================================================
""")
#defining player name 
player_name = input('''Ahoy, weary adventurer!Enter your name
''').upper().strip()

#intro message of the game
print(f'''
Hi {player_name} This is I, the one and only Captain Jack Sparrow,
making an unexpected appearance in this game of mysteries and danger.Savvy?
Picture this: Four ships, dancing upon the waves, each one is a world of it's own!
Sail from one ship to the other to uncover the hidden clues and 
unlock the path to your well-deserved freedom
I shall be your companion on this escapade,But remember,matey,nothing comes without a price.
The challenges that lie ahead will test your bravery, and only those with clever minds
and daring spirits shall prevail.
So, buckle up for a grand adventure,for together we shall 
navigate the treacherous path to freedom!!

''')
#There are 4 ships in this game. The player has to move from one ship to another
#Each ship has a unique name and puzzles. one of the ships holds the path to freedom.
#defining intro messages of the ships
black_pearl_intro = '''\nBy moonlight you will be transformed into a skeleton, devoid of flesh and blood.\nThe only way to break free is to find the Pirate Code hidden in the ship\n'''
flying_dutchman_intro = '''\nThe infamous ship cursed to sail the sea \nfor eternity. You are trapped with Davy Jones, a creature as mysterious as the depths of oceans,\nholds sway over this ghostly ship. But, fear not, there\'s a way out!\nFind the goddess Tia and convince her,to share a clue that will aid us in escaping this ship\n'''
cutler_prison_intro = '''\nA cold and unforgiving place \nbuild to crush the spirit of even the bravest souls.\nBut fear not, where there is a Sparrow, there\'s a way out.\nSend a signal to Will Turner,a skilled blacksmith with the knowledge \nof hidden passeges to escape the prison\n'''
sparrow_pearl_intro = '''\nWelcome, my hearty to the gateway of FREEDOM!!\nYou\'ve stumbled upon the very ship that sails you to your grand escape.\nMay the winds carry you toward new horizons.\nAnd who knows? Perhaps our paths shall cross again in future escapades\n'''

#definining the puzzles
pirate_code = '''Before you, lie two intriguing boxes, each with it's own secrets.
        Choose one wisely,for it shall decide your destiny!
        1. Chest of Secrets
        2. Curiosity Casket 
        '''
pirate_code_puzzle ={'Chest of Secrets'.lower():{'message':'\nWell, well, me hearty! You\'ve unlocked the mysteries of the Pirate Code.\nIt appears there be another room that holds secrets untold, awaiting our daring souls.' , 'exit': 0 },
                     'Curiosity Casket'.lower():{'message':'\nAh,\U0001F61E my dear friend, It seems our quest for escape took an unexpected turn.\nAlas, the path you chose led not to salvation but to death.\nRest well, my hearty, you shall forever be remembered as the daring soul \nwho dared to dance with danger!!\n\n*****Your quest has ended*****', 'exit': 1 }
                     }

goddess_clue = '''Choose the right code word to find the goddess Tia!
        1. Enchantress Call
        2. Bloodmoon Banshee
        '''
goddess_clue_puzzle = {'Enchantress Call'.lower():{'message':'\nAhoy! my clever comrade! You have unlocked the clue that can lead us away \nfrom the clutches of the accursed Flying Dutchman!' , 'exit': 0 } ,
                       'Bloodmoon Banshee'.lower():{'message':'\nAh,\U0001F61E my dear friend, It seems our quest for escape took an unexpected turn.\nAlas, the path you chose led not to salvation but to death.\nRest well, my hearty, you shall forever be remembered as the daring soul \nwho dared to dance with danger!!\n\n*****Your quest has ended*****','exit': 1 }
                        }

blacksmith_clue = ('''Choose the right signal to summon our dear Will Turner!
        1. Tattered Call
        2. Smokey Siren
        ''')
blacksmith_clue_puzzle = {'Tattered Call'.lower():{'message':'\nAhoy matey! You\'ve chosen the signal that speaks the language of our dear Will Turner.\nHe is here to help.' , 'exit' : 0 } ,
                          'Smokey Siren'.lower():{'message':'\nAh,\U0001F61E my dear friend, It seems our quest for escape took an unexpected turn.\nAlas, the path you chose led not to salvation but to death.\nRest well, my hearty, you shall forever be remembered as the daring soul \nwho dared to dance with danger!!\n\n*****Your quest has ended*****', 'exit': 1 }
                        }

#defining dictionaries
ships = {'Black Pearl'.lower(): { 'ship_intro': black_pearl_intro, 'ship_puzzle': { 'puzzle_intro': pirate_code, 'puzzle': pirate_code_puzzle } }, 
         'Flying Dutchman'.lower(): { 'ship_intro': flying_dutchman_intro, 'ship_puzzle': { 'puzzle_intro': goddess_clue, 'puzzle': goddess_clue_puzzle } },  
         'Cutler Prison'.lower(): { 'ship_intro' :cutler_prison_intro, 'ship_puzzle':{ 'puzzle_intro': blacksmith_clue, 'puzzle': blacksmith_clue_puzzle } },
         'Sparrow Pearl'.lower(): { 'ship_intro' :sparrow_pearl_intro }}

#asking user for input
target = input('''So my brave soul, where would you like to go?\nChoose wisely,for the ship you select will lead us to our grand adventure,Savvy? 
                1. Black Pearl
                2. Flying Dutchman
                3. Cutler Prison
                4. Sparrow Pearl
                ''').lower()

#main loop
while target != 'Sparrow Pearl'.lower():
    if target not in ships: #break when the input is invalid
        print('''Ah,\U0001F61E my friend, it seems you've picked the wrong choice.
                  Try again!!\n''')
        break
    else: 
        print(f'\nYou have entered into The {target.upper()}!!') 
        if target in ships:
            print(ships[target]['ship_intro'])
        #current_ship = ships[target]
        find_pirate_code = input(ships[target]['ship_puzzle']['puzzle_intro']).lower()
        if find_pirate_code in ships[target]['ship_puzzle']['puzzle']:
            print(ships[target]['ship_puzzle']['puzzle'][find_pirate_code]['message'])
            if ships[target]['ship_puzzle']['puzzle'][find_pirate_code]['exit'] == 0:
                target = input('''So my brave soul, where would you like to go?\nChoose wisely,for the ship you select will lead us to our grand adventure,Savvy? 
                1. Black Pearl
                2. Flying Dutchman
                3. Cutler Prison
                4. Sparrow Pearl
                ''').lower()
                if target not in ships:
                    print('''Ah,\U0001F61E my friend, it seems you've picked the wrong choice.
                  Try again!!\n''')
                    break
            else:
                break
        else:
            print('''Ah,\U0001F61E my friend, it seems you've picked the wrong choice.
            Try again!!'''.strip())
            break
if target == 'Sparrow Pearl'.lower():
    print(f'\nYou have entered into The {target.upper()}!!') 
    print(ships[target]['ship_intro'])
    print(('\U0001F44B')*5)
 

