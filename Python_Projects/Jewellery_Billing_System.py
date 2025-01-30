status = True
gram2 = 0
name = input("Enter your Name : ")
gender = input("Enter gender : ")
age = int(input("Enter your age : "))
product_list = []
while status:
    product = input("Enter product : ")
    product_list.append(product)
    gram = int(input("Enter product gram : "))
    gram2 += gram
    choice = input("do you want to add more products ? yes or no : ")
    if choice == "yes" or choice == "y":
        status = True
    else : 
        status = False
gold_price = 6825
total_rate = gold_price * gram2
making_charg = 845
total_charg = making_charg * gram2

total_amount = total_rate + total_charg
print(f"----------your bill------------")
print(f"Name : {name}")
print(f"Gender : {gender}")
print(f"Age = {age}")
print(f"Your product : {product_list}")
print(f"Your product Gram : {gram2}/g")
print(f"Current gold price : {gold_price}"), print(f"----------------------------------------------")
print(f"Total gold rate : {total_rate}"), print(f"  ")
print(f"Making charges : {making_charg}/g")
print(f"Total making charges : {total_charg}"), print(f"------------------------------------")
print(f"Total Amount : {total_amount}")

if gender == "male" or gender == "Male" :
    if age >= 65:
        if total_amount > 21000 and total_amount < 31000 : 
            discount =  total_amount * 0.20
            print("Discount : 20%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 31000 and total_amount < 51000 :
            discount = total_amount * 0.30
            print("Discount : 30%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 51000 :
            discount = total_amount * 0.35
            print("Discount : 35%"), print(f"Discount Amount : {discount}")
    else:
        if total_amount > 21000 and total_amount < 31000 : 
            discount =  total_amount * 0.10
            print("Discount : 10%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 31000 and total_amount < 51000 :
            discount = total_amount * 0.20
            print("Discount : 20%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 51000 :
            discount = total_amount * 0.25
            print("Discount : 25%"), print(f"Discount Amount : {discount}")       
else:
    if age >= 65:
        if total_amount > 21000 and total_amount < 31000 : 
            discount =  total_amount * 0.25
            print("Discount : 25%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 31000 and total_amount < 51000 :
            discount = total_amount * 0.35
            print("Discount : 35%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 51000 :
            discount = total_amount * 0.40
            print("Discount : 40%"), print(f"Discount Amount : {discount}")
    else:
        if total_amount > 21000 and total_amount < 31000 : 
            discount =  total_amount * 0.15
            print("Discount : 15%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 31000 and total_amount < 51000 :
            discount = total_amount * 0.25
            print("Discount : 25%"), print(f"Discount Amount : {discount}")
        elif total_amount >= 51000 :
            discount = total_amount * 0.30
            print("Discount : 30%"), print(f"Discount Amount : {discount}")
            
total_net_amount = total_amount - discount

print("-------------------------------------")  
print(f"Total net amount = {total_net_amount}Rs.")