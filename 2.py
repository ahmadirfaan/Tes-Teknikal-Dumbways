from datetime import date 
import datetime
  
def betweenDays(date1, date2): 
        while True:
            if (date1 > date2):
                break
            print(date1)
            date1 += datetime.timedelta(days=1)
      
date1 = date(2019, 2, 26) 
date2 = date(2019, 3, 30) 
betweenDays(date1,date2)