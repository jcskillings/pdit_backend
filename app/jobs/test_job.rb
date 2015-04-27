class TestJob < ActiveJob::Base
  #queue_as :default

  #def perform(*args)
    # Do something later
  #end
  
  def perform
    # put you scheduled code here
    # Comments.deleted.clean_up...
    easy = SMSEasy::Client.new

    # Deliver a simple message.
    easy.deliver("6086301294", "sprint", "test jobs!" + "https://paidit-kyleschenk1.c9.io")
  end
end
