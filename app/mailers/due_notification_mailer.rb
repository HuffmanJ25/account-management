class DueNotificationMailer < ApplicationMailer

 def notify_due
   puts "hello"
   Account.each do |account|
     if Date.new(@account.due) < Date.new - 10.days
       mail_to :admin.email, subject: "A Due Payment is Soon!"
     end
   end
 end

end
