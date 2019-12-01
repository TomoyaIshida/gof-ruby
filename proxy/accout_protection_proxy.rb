require 'etc'

class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def deposit(amount)
    check_access
    return @subject.deposit(amount)
  end

  def withdraw(amount)
    check_access
    return @subject.withdraw(amount)
  end

  def balance
    check_access
    return @subject.balance
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end

account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

# プロキシーを使うことでBankAcountオブジェクトから検証ロジックを分離できる
# これによりセキュリティー指針が変わった時にプロキシーの変更だけで済ませることができる
proxy = AccountProtectionProxy.new(account, current_user)
proxy.deposit(50)
proxy.withdraw(10)
