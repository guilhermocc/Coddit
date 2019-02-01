class UserMailer < ApplicationMailer
  helper ApplicationHelper
  before_action :load_post

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify.subject
  #
  def notify
    @greeting = "Hi"

    mail to: params[:user], subject: "New Post in Coddit!"
  end


  private

  def load_post
    @post = params[:post]
  end
end
