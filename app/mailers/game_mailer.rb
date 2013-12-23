class GameMailer < ActionMailer::Base
  def game_email(game, email)
    mail(to: email.strip,
      from: 'gametableco@gmail.com',
      body: "Hi, your friend invited you to watch/play a game of #{game.name.capitalize}. The link is gametable.co/games/#{game.secure_room_code}",
      content_type: "text/html",
      subject: "Invitation to Game Table Game" 
    )
  end

end