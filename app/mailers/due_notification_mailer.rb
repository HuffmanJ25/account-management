class DueNotificationMailer < ApplicationMailer

   def notify_due
# Change to more accurate admin user
     @admin = AdminUser.first.email

     @accounts = Account.all
     @accounts.each do |a|
       if a.due == Date.today + 10.days
         puts a.amount
         @a = a
         mail( to: 'huffmanj25@gmail.com', subject: a.customer + " Upcoming Payment")
       end
     end
   end
end
