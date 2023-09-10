
Days = int(input("Days to rent: "))

# day rent 2000
if Days <=7 :

    Day_rent = Days * 2000

    print ("Days: " , Days)
    print ("-------------------------------")
    print("Total rent is: " , Day_rent)


# week rent 10000
elif Days < 30 :
    Weeks = Days // 7  # to get weeks --> ex: 17 //7 =2
    leftDays = Days % 7  # to get days after weeks --> ex : 17 % 7 = 3

    Weeks_rent = Weeks * 10000
    leftDays_rent = leftDays * 2000

    Total = Weeks_rent + leftDays_rent

    print ("Weeks: " , Weeks)
    print ("Days: " , leftDays)
    print ("-------------------------------")
    print("Total rent is: " , Total)



# month rent 40000
elif Days >= 30 :
    Months = Days // 30  # to get months --> ex: 59//30 = 1
    leftDays1 = Days % 30  # to get days after months  --> ex 59%30 = 29
    leftWeeks = leftDays1 // 7  # to get number of weeks --> ex 29//7 = 4
    leftDays2 = leftDays1 % 7  # to get days after weeks --> ex 29%7 = 1

    Months_rent = Months * 40000
    leftWeeks_rent = leftWeeks * 10000
    leftDays2_rent = leftDays2 * 2000

    Total = Months_rent + leftWeeks_rent + leftDays2_rent

    print ("Months: " , Months)
    print ("Weeks: " , leftWeeks)
    print ("Days: " , leftDays2)
    print ("-------------------------------")
    print("Total rent is: " , Total)
