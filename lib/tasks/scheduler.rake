desc "Automated mailer on upcoming due payments"
task :send_reminders => :environment do
  DueNotificationMailer.notify_due
end
