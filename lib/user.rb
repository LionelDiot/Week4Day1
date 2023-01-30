class User

  @@all_users=[]
  
  attr_accessor :email, :age

  def initialize (email,age)
    @email = email
    @age = age 
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(test_email)
    @@all_users.each { |user| 
    return user if (user.email == test_email) }
  end
end
