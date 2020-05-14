
/* Assignmnet 1 : Print Calendar using swift
-Priyansh Bendre 
*/

func print_calender()
{
    //________________________________USER INPUT___________________________
    let year=2020 // year
    let start_day = "Tu" //weekday
    //________________________________USER INPUT___________________________



    var k=0
    let month = ["Jan", "Feb", "Mar", "April", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    let weekday = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
    var month_end_dates = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var start_date = weekday.firstIndex(of: start_day)!    

    //Leap Year
    func leap_year(fyear:Int)
    { 
                if ((fyear%4 == 0 && fyear%100 != 0 ) || fyear%400 == 0 )
                {
                    month_end_dates[1] = 29                  
                }
    }

    leap_year(fyear:year)
    // Month printing
    for i in month 
    {
        print("")
        print("\t"+i,year)
        var dates = 1
        
        //Weeks
        for j in weekday
        {
            print(j, terminator:"  ")
        }
        print("")
        
        //dates
        let s = String(repeating: "    ", count: start_date) 
        
        print(s, terminator :"")     
        
        while (dates != month_end_dates[k]+1){
            
            if(start_date%7==0)
            {
                start_date=0;
                print("")
            }
            if(dates < 10)
            {
                 print(" "+String(dates), terminator:"  ")
            }
            else
            {
                print(dates, terminator:"  ")
            }
            dates += 1
            start_date += 1
        }
        k=k+1
    }
}

//Function Call
print_calender()
