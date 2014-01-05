class Game < ActiveRecord::Base
  has_one :board, dependent: :destroy
  has_many :tokens, dependent: :destroy
  has_many :messages, dependent: :destroy
  #has_many :users

  def self.secure_room_code
     SecureRandom.hex
  end

  def reset
    send("reset_#{self.name}")
  end

  def reset_checkers
    GameBuilder.build_checkers(self)
  end

  def reset_backgammon
    GameBuilder.build_backgammon(self)
  end

  def reset_chess
    GameBuilder.build_chess(self)
  end

  def reset_chinese_checkers
    GameBuilder.build_chinese_checkers(self)
  end

  def reset_shut_the_box
    GameBuilder.build_shut_the_box(self)
  end

  def self.delete
    Game.where("created_at <= ?", Chronic.parse("one week ago")).destroy
    #games from one week ago or older
  end

end
