class BatchEmailSenderJob < ApplicationJob
  queue_as :default

  def perform(*args)
    for i in 1..100
      SendEmailJob.perform_now("#{i}@gmail.com")
    end
  end
end
