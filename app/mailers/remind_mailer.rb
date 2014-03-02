class RemindMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remind_mailer.content.subject
  #
  def content(address, name)
    @greeting = "Hi! #{name}"

    mail to: address, subject: '謝謝你報名參加TKU Hackathon，提醒您活動時間是2014/3/29'
  end
end
