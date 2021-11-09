=begin 

Description:
Create a 2-Player math game where players take turns to answer simple math addition problems. 
A new math question is generated for each turn by picking two numbers between 1 and 20. 
The player whose turn it is is prompted the question and must answer correctly or lose a life.

Both players start with 3 lives. 
They lose a life if they mis-answer a question. 
At the end of every turn, the game should output the new scores for both players, 
so players know where they stand.

The game doesn’t end until one of the players loses all their lives. 
At this point, the game should announce who won and what the other player’s score is.

=================================================================================================
Task 1
Extract Nouns for Classes
- Player
- Games
- Question

Task 2
Write Roles for each Classes
Player: Play the game, take turns to answer simple math addition problems.
Games: Give the question to each player, deduct the lifes when player answers incorrectly
Question: Math question given to each player

State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)

What information is relevant to each class?
What will they need in order to be initialized?
What public methods will be defined on them?
Which class will contain the game loop (where each instance of the loop is the other players turn)?
Which class should manage who the current_player is?
Which class(es) will contain user I/O and which will not have any?

=end