min  = int(input("Enter your exercise minuts : "))

if min > 0 and min < 60 :
    print("Sedentary")
elif min >= 60 and min <= 149 :
    print("Moderately Active")
elif min >= 150 and min <= 299 :
    print("Active")
else:
    print("Very Active")
    
    