module TwoFer
  def initialize
    self.name = 'you'
  end

  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end
end
