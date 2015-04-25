namespace :app do
   desc "Check DB for Bills that need an email/txt send as a reminder"
   task checkSend: :environment do
       time = Time.new
       Bill.find_each do | bill |
            if (time > bill.dueDate) #send first reminder
                if (time.month == bill.reminder1.month)
                    if (time.day == bill.reminder1.day)
                        if(time.hour > bill.reminder1.hour)
                            if(Bill.category.length > 3)
                                @userC = User.find(bill.user_id)
                                #seperate cat catagory -> cat1, cat2, cat3, cat4
                                @userC.notiftype do |notif_type|
                                    if (notiftype.name == cat1 ||  
                                       notiftype.name == cat2 || 
                                       notiftype.name == cat3 || 
                                       notiftype.name == cat4)
                                        if (notiftype.type == email)
                                           UserMailer.reminder_email(bill, notiftype.destination).deliver
                                        elsif (notiftype.type == text)
                                           #create client
                                           easy = SMSEasy::Client.new 
                                           #Send SMS notification
                                           easy.deliver(notiftype.destination, notiftype.carrier, "Bill Reminder from Paidit /n" + bill.name + " is due: "+ bill.dueDate)
                                           
                                        end
                                    end       
                                end
                            end    
                        end  
                    
                    end
                end
                
                                
           elsif (time > Bill.reminder2) #send second reminder
                if (time.month == bill.reminder1.month)
                    if (time.day == bill.reminder1.day)
                        if(time.hour > bill.reminder1.hour)
                            if(Bill.category.length > 3)
                                @userC = User.find(bill.user_id)
                                #seperate cat catagory -> cat1, cat2, cat3, cat4
                                @userC.notiftype do |notif_type|
                                    if (notiftype.name == cat1 ||  
                                       notiftype.name == cat2 || 
                                       notiftype.name == cat3 || 
                                       notiftype.name == cat4)
                                        if (notiftype.type == email)
                                           UserMailer.reminder_email(bill, notiftype.destination).deliver
                                        elsif (notiftype.type == text)  
                                           #create client
                                           easy = SMSEasy::Client.new 
                                           #Send SMS notification
                                           easy.deliver(notiftype.destination, notiftype.carrier,  "Bill Reminder from Paidit /n" + bill.name + " is due: "+ bill.dueDate)
                                        end
                                    end       
                                end
                            end    
                        end  
                    
                    end
                end
                       
                                           
           elsif (time > Bill.reminder1) #send final reminder
                if (time.month == bill.reminder1.month)
                    if (time.day == bill.reminder1.day)
                        if(time.hour > bill.reminder1.hour)
                            if(Bill.category.length > 3)
                                @userC = User.find(bill.user_id)
                                #seperate cat catagory -> cat1, cat2, cat3, cat4
                                @userC.notiftype do |notif_type|
                                    if (notiftype.name == cat1 ||  
                                       notiftype.name == cat2 || 
                                       notiftype.name == cat3 || 
                                       notiftype.name == cat4)
                                        if (notiftype.type == email)
                                           UserMailer.reminder_email(bill, notiftype.destination).deliver
                                        elsif (notiftype.type == text)  
                                           #create client
                                           easy = SMSEasy::Client.new 
                                           #Send SMS notification
                                           easy.deliver(notiftype.destination, notiftype.carrier, 
                                           "Bill Reminder from Paidit /n" + bill.name + " is due: "+ bill.dueDate)
                                        end
                                    end       
                                end
                            end    
                        end  
                    
                    end
                end
                       
                    
            
            else
            end
        end
   end
end