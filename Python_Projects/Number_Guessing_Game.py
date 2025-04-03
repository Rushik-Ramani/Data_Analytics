import random                # importing random module
computer = random.randint(1,100)  # using of randint function it will generat random number between 1 to 100 
status = True  # while loop initlization 
print("========| WELCOME TO NUMBER GUESSING GAME |========"),print()
print("""               | Rulse |
1. You have only 10 attempts to guess correct number
2. You guess the number between 1 to 100 
3. If you guess correct number then you will enter in Second level
        """),print()
for i in range(1,10):  # while loop condition it will run untill status is True
    while status:
        if i <= 8:  
            user = int(input("Enter Your Guess (1 to 100) : "))  # accept dynamic value from user 
            if user < computer :     # condition for if user guess number is above computer guess
                print("HINT : Guess Upper Number")  # display hint message
            elif user > computer:    # condition for if user guess number is below computer guess
                print("HINT : Guess Lower Number")  # display bhint message
            else :                   # when both the contion are fail it will execute else part 
                print("************** CONGRATULATION , YOU WON THE GAME **************")     # display you won messaage
                print("******************** You Finished LEVEL-1 *********************")
                choice = input("Do You Want To Play level-2 : yes or no : ")  # accept answer for continu this program 
                if choice == "yes":
                    print("""               | Rulse |
1. You have only 8 attempts to guess correct number
2. You guess the number between 100 to 200 
3. If you guess correct number then you will enter in last level
                          """),print()
                    computer = random.randint(100,200)
                    for n in range(1,8):                # while loop condition it will run untill status is True                      
                            if n <= 6:  
                                user = int(input("Enter Your Guess (100 to 2400) : "))  # accept dynamic value from user 
                                if user < computer :     # condition for if user guess number is above computer guess
                                    print("HINT : Guess Upper Number")   # display hint message
                                elif user > computer:    # condition for if user guess number is below computer guess
                                    print("HINT : Guess Lower Number")   # display bhint message
                                else :                   # when both the contion are fail it will execute else part 
                                    print("************** CONGRATULATION , YOU WON THE GAME **************")     # display you won messaage
                                    print("******************** You Finished LEVEL-2 *********************")
                                    choice = input("### Do You Want To Play level-3 : yes or no : ")   # accept answer for continu this program 
                                    if choice == "yes":
                                        print("""                  | Rulse |
1. You have only 6 attempts to guess correct number
2. You guess the number between 100 to 300 
3. If you guess correct number then you won the game
                                                """),print()
                                        computer = random.randint(100,300)
                                        for r in range(1,6):                # while loop condition it will run untill status is True
                                            while status:
                                                if r <= 4:   
                                                    user = int(input("Enter Your Guess (100 to 300) : "))  # accept dynamic value from user
                                                    if user < computer :     # condition for if user guess number is above computer guess
                                                        print("HINT : Guess Upper Number")  # display hint message
                                                    elif user > computer:    # condition for if user guess number is below computer guess
                                                        print("HINT : Guess Lower Number")  # display bhint message
                                                    else :                   # when both the contion are fail it will execute else part 
                                                        print("************** CONGRATULATION , YOU WON THE GAME **************")     # display you won messaage
                                                        print("******************** You Finished LEVEL-3 *********************")
                                                    r += 1
                                                else :
                                                    print(f"Game Over : The Correct Number is : {computer}")  # display Game over message
                                                    status = False       # while loop termination
                                    else:
                                        status = False       # while loop termination
                                        print("******************** Bye Bye... *********************")
                                n += 1
                            else:
                                print(f"Game Over : The Correct Number is : {computer}")  # display Game over message
                                status = False       # while loop termination
                else :
                    status = False       # while loop termination  
                    print("******************** Bye Bye... *********************")
            i += 1 
        else : 
            print(f"Game Over : The Correct Number is : {computer}")  # display Game over message
            status = False       # while loop termination  