class PasswordService
  def self.encrypt_password(password)
    #message_encryptor.encrypt_and_sign(password)
    message_encryptor.encrypt_and_sign(password)
  end

  def self.decrypt_password(password)
    message_encryptor.decrypt_and_verify(password)
  end

  private

  def self.message_encryptor
    @message_encryptor ||= ActiveSupport::MessageEncryptor.new(ENV['PASSWORD_ENCRIPTION'])
  end
end