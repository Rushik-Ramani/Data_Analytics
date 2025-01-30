import random # importing random module

game_options = ["ROCK","PAPER","SCISSOR"] # creating list which is creating 3 elements

computer = random.choice(game_options)
user_choice = input("Enetr your choice : ").upper()
print(f"User choice : {user_choice}")
print(f"Computer choice : {computer}")

if user_choice == "ROCK" and computer == "PAPER" or user_choice == "PAPER" and computer == "SCISSOR" or user_choice == "SCISSOR" and computer == "ROCK" :
    print("******* Computer won ********")
elif user_choice == "PAPER" and computer == "ROCK" or user_choice == "SCISSOR" and computer == "PAPER" or user_choice == "ROCK" and computer == "SCISSOR":
    print("******* You won *******")
else :
    print("****** Tie ******")