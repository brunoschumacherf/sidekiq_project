class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(email)
    sleep 10
    puts "email enviado: #{email}"
  end
end
