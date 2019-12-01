require 'etc'

class AccountProtectionProxy
  def initialize(subject, owner_name)
    @subject = subject
    @owner_name = owner_name
  end

  def method_missing(name, *args)
    check_access
    @subject.send(name, *args)
  end

  def check_access
    if Etc.getlogin != owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end
