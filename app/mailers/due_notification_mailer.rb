class DueNotificationMailer < ApplicationMailer

 def notify_due
   if Date.new(@account.due) < Date.new - 10.days
     @account = account
     @admin = admin_users
     mail_to :admin.email, subject: "A Due Payment is Soon!"
   end
 end

end
