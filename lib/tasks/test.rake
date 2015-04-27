namespace :crono do
  desc 'Update all tables'
  task :hello => :environment do
    easy = SMSEasy::Client.new

      # Deliver a simple message.
      easy.deliver('6086301294', 'sprint', "welcome to paidit!" + "https://paidit-kyleschenk1.c9.io")
  end
end