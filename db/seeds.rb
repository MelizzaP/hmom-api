Admin.create(
  {
    :email => ENV['GMAIL'],
    :password => ENV['HMOM_PWORD'],
    :password_validation => ENV['HMOM_PWORD']
  }
)
