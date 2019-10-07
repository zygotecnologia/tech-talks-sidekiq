class User < ApplicationRecord

  def send_welcome_email
    # synchronoous sending
    UsersMailer.welcome(id).deliver_now

    # asynchronous sending using sidekiq delayed extensions
    # UsersMailer.delay.welcome(id)

    # scheduling the email using sidekiq delayed extensions
    # UsersMailer.delay_until(1.hour.from_now).welcome(id)

    # delaying the email for some time using sidekiq delayed extensions
    # UsersMailer.delay_for(1.hour).welcome(id)
  end
end
