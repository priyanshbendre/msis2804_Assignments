def print_cal(month,weekday,month_end_dates,start_day):
	k=0
	for i in month:
		print("")
		print("\t {}".format(i))
		dates = 1

		for j in weekday:
			print(j,end = " ")
		print("")
		
		print("{}".format('   ')*start_day, end="") #__________________________
		
		while dates != month_end_dates[k]+1:
			if start_day%7 == 0:
				start_day = 0
				print("")
			
			if dates<10:
				print (" {}".format(dates), end=" ")
			else:
				print ("{}".format(dates), end=" ")
			dates += 1
			start_day += 1
		k+=1

def leap_year(year):
	if year % 4 == 0:
		if year % 100 == 0:
			if year % 400 == 0:
				return True
			else:
				return False
		else:
			return True
	else:
		return False

if __name__ == '__main__':
	#USER INPUT ___________________________________________User Input for year and start day in Jan
	year = 2020 #input year for which you want to create the calendar
	start_day = "We" #input first 3 letters of the weekday with capital 1st letter
	#----------------------------------------------------------------------------------------------
	
	month = ["Jan", "Feb", "Mar", "April", "May", "Jun","Jul", "Aug","Sep","Oct", "Nov", "Dec"]
	weekday = ["Su","Mo","Tu","We","Th","Fr","Sa"]
	month_end_dates = [31,28,31,30,31,30,31,31,30,31,30,31]
	start_day = weekday.index(start_day)
	#print (start_day) 
	
	if leap_year(year):
		month_end_dates[1] = 29

	print_cal(month,weekday,month_end_dates, start_day)