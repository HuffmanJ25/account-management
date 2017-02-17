desc "Automated mailer on upcoming due payments"
task :send_reminders => :environment do
  DueNotificationMailer.notify_due(admin).deliver if Date.new(@account.due) < Date.new - 10.days
end
