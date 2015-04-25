namespace :app do
   desc "Check DB for overdue bills, create dummy Overdue bills as placeholders"
   task overDue: :environment do
       time = Time.new
       Bill.find_each do | bill |
            #if bill duedate has passed and it is a valid bill (not dummy/has reminder dates set)
            if (time > bill.dueDate && bill.reminder1 != NULL)
                
                 @bill = Bill.new(bill_params) #copy bill with same parameters but without reminders set
                 
                #update next Due Date 
                if (bill.dueDate.day < 28) 
                    @newDueDate = bill.dueDate + 1.month
                elsif (bill.dueDate.day == 28 && bill.month == 2)
                    @newDueDate =  bill.dueDate + 1.months + 3.days
                    
                elsif (bill.dueDate.day == 29)
                    if (bill.month != 1)
                        @newDueDate = bill.dueDate + 1.month
                    else 
                        @newDueDate = bill.dueDate + 1.month - 1.days 
                    end
                    
                elsif (bill.dueDate.day == 30)
                    if (bill.month != 1)
                        @newDueDate = bill.dueDate + 1.days + 1.month
                    else 
                        @newDueDate = bill.dueDate + 1.month - 2.days
                    end
                    
                elsif (bill.dueDate.day == 31)
                    if (bill.month != 1)
                        @newDueDate = bill.dueDate - 1.days + 1.month
                    else 
                        @newDueDate = bill.dueDate + 1.month - 3.days
                    end    
                else
                    #ERROR
                    
                end
                
                #update reminder 1
                if (bill.reminder1 != NULL)
                    if (bill.reminder1 < 28) 
                    @newDueDate = bill.reminder1 + 1.month
                    elsif (bill.reminder1.day == 28 && bill.reminder1.month == 2)
                    @newDueDate =  bill.reminder1 + 1.months + 3.days
                    end
                    
                    elsif (bill.reminder1.day == 29)
                        if (bill.reminder.month != 1)
                        @newDueDate = bill.reminder1 + 1.month
                        else 
                        @newDueDate = bill.reminder1 + 1.month - 1.days 
                        end
                    
                    elsif (bill.reminder1.day == 30)
                        if (bill.reminder1.month != 1)
                        @newDueDate = bill.reminder1 + 1.days + 1.month
                        else 
                        @newDueDate = bill.reminder1 + 1.month - 2.days
                        end
                    
                    elsif (bill.reminder1.day == 31)
                        if (bill.reminder1.month != 1)
                        @newDueDate = bill.reminder1 - 1.days + 1.month
                        else 
                        @newDueDate = bill.reminder1 + 1.month - 3.days
                        end    
                    else
                        #ERROR
                    
                end
                
                #update reminder 2
                if (bill.reminder2 != NULL)
                    if (bill.reminder2 < 28) 
                    @newDueDate = bill.reminder2 + 1.month
                    elsif (bill.reminder2.day == 28 && bill.reminder2.month == 2)
                    @newDueDate =  bill.reminder2 + 1.months + 3.days
                    end
                    
                    elsif (bill.reminder2.day == 29)
                        if (bill.reminder.month != 1)
                        @newDueDate = bill.reminder2 + 1.month
                        else 
                        @newDueDate = bill.reminder2 + 1.month - 1.days 
                        end
                    
                    elsif (bill.reminder2.day == 30)
                        if (bill.reminder2.month != 1)
                        @newDueDate = bill.reminder2 + 1.days + 1.month
                        else 
                        @newDueDate = bill.reminder2 + 1.month - 2.days
                        end
                    
                    elsif (bill.reminder2.day == 31)
                        if (bill.reminder2.month != 1)
                        @newDueDate = bill.reminder2 - 1.days + 1.month
                        else 
                        @newDueDate = bill.reminder2 + 1.month - 3.days
                        end    
                    else
                        #ERROR
                    
                end
                
                Bill.update(x,y,z,x2,) #need parameters
            end
        end
    end
end