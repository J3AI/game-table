class GameBuilder < ActiveRecord::Base

  def self.build_chess(g = nil)

    if g == nil
      g = Game.create(name: "chess", secure_room_code: Game.secure_room_code)
      g.create_board(image: "chess_board.jpg") 
    end

    g.tokens.find_or_create_by(:name => "chess1").update( :x_coordinate => 10,  :y_coordinate => 10,  :image_0 => "chess/Chess_rdt60.png", :image_1 => "chess/Chess_rdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess2").update( :x_coordinate => 90,  :y_coordinate => 10,  :image_0 => "chess/Chess_ndt60.png", :image_1 => "chess/Chess_ndt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess3").update( :x_coordinate => 170, :y_coordinate => 10,  :image_0 => "chess/Chess_bdt60.png", :image_1 => "chess/Chess_bdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess4").update( :x_coordinate => 250, :y_coordinate => 10,  :image_0 => "chess/Chess_qdt60.png", :image_1 => "chess/Chess_qdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess5").update( :x_coordinate => 330, :y_coordinate => 10,  :image_0 => "chess/Chess_kdt60.png", :image_1 => "chess/Chess_kdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess6").update( :x_coordinate => 410, :y_coordinate => 10,  :image_0 => "chess/Chess_bdt60.png", :image_1 => "chess/Chess_bdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess7").update( :x_coordinate => 490, :y_coordinate => 10,  :image_0 => "chess/Chess_ndt60.png", :image_1 => "chess/Chess_ndt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess8").update( :x_coordinate => 570, :y_coordinate => 10,  :image_0 => "chess/Chess_rdt60.png", :image_1 => "chess/Chess_rdt60.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chess9").update( :x_coordinate => 10,  :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess10").update(:x_coordinate => 90,  :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess11").update(:x_coordinate => 170, :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess12").update(:x_coordinate => 250, :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess13").update(:x_coordinate => 330, :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess14").update(:x_coordinate => 410, :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess15").update(:x_coordinate => 490, :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess16").update(:x_coordinate => 570, :y_coordinate => 90,  :image_0 => "chess/Chess_pdt60.png", :image_1 => "chess/Chess_pdt60.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chess17").update(:x_coordinate => 10,  :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess18").update(:x_coordinate => 90,  :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess19").update(:x_coordinate => 170, :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess20").update(:x_coordinate => 250, :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess21").update(:x_coordinate => 330, :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess22").update(:x_coordinate => 410, :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess23").update(:x_coordinate => 490, :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess24").update(:x_coordinate => 570, :y_coordinate => 490, :image_0 => "chess/Chess_plt60.png", :image_1 => "chess/Chess_plt60.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chess25").update(:x_coordinate => 10,  :y_coordinate => 570, :image_0 => "chess/Chess_rlt60.png", :image_1 => "chess/Chess_rlt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess26").update(:x_coordinate => 90,  :y_coordinate => 570, :image_0 => "chess/Chess_nlt60.png", :image_1 => "chess/Chess_nlt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess27").update(:x_coordinate => 170, :y_coordinate => 570, :image_0 => "chess/Chess_blt60.png", :image_1 => "chess/Chess_blt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess28").update(:x_coordinate => 250, :y_coordinate => 570, :image_0 => "chess/Chess_qlt60.png", :image_1 => "chess/Chess_qlt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess29").update(:x_coordinate => 330, :y_coordinate => 570, :image_0 => "chess/Chess_klt60.png", :image_1 => "chess/Chess_klt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess30").update(:x_coordinate => 410, :y_coordinate => 570, :image_0 => "chess/Chess_blt60.png", :image_1 => "chess/Chess_blt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess31").update(:x_coordinate => 490, :y_coordinate => 570, :image_0 => "chess/Chess_nlt60.png", :image_1 => "chess/Chess_nlt60.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chess32").update(:x_coordinate => 570, :y_coordinate => 570, :image_0 => "chess/Chess_rlt60.png", :image_1 => "chess/Chess_rlt60.png", :flippable => false)

    g
  end

  def self.build_checkers(g = nil)
    if g == nil
      g = Game.create(name: "checkers", secure_room_code: Game.secure_room_code)
      g.create_board(image: "chess_board.jpg")
    end

    g.tokens.find_or_create_by(:name => "checkers1").update( :x_coordinate => 90,  :y_coordinate => 10,   :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers2").update( :x_coordinate => 250, :y_coordinate => 10,  :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers3").update( :x_coordinate => 410, :y_coordinate => 10,  :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers4").update( :x_coordinate => 570, :y_coordinate => 10,   :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)

    g.tokens.find_or_create_by(:name => "checkers5").update( :x_coordinate => 10,  :y_coordinate => 90,    :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers6").update( :x_coordinate => 170, :y_coordinate => 90,  :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers7").update( :x_coordinate => 330, :y_coordinate => 90,  :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers8").update( :x_coordinate => 490, :y_coordinate => 90,  :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)

    g.tokens.find_or_create_by(:name => "checkers9").update( :x_coordinate => 90,  :y_coordinate => 170,  :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers10").update(:x_coordinate => 250, :y_coordinate => 170, :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers11").update(:x_coordinate => 410, :y_coordinate => 170, :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers12").update(:x_coordinate => 570, :y_coordinate => 170, :image_0 => "checker_red.png",  :image_1 => "checker_red_king.png", :flippable => true, :state => 0)

    g.tokens.find_or_create_by(:name => "checkers13").update(:x_coordinate => 10,  :y_coordinate => 410, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers14").update(:x_coordinate => 170, :y_coordinate => 410, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers15").update(:x_coordinate => 330, :y_coordinate => 410, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers16").update(:x_coordinate => 490, :y_coordinate => 410, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)

    g.tokens.find_or_create_by(:name => "checkers17").update(:x_coordinate => 90,  :y_coordinate => 490, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers18").update(:x_coordinate => 250, :y_coordinate => 490, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers19").update(:x_coordinate => 410, :y_coordinate => 490, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers20").update(:x_coordinate => 570, :y_coordinate => 490, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)

    g.tokens.find_or_create_by(:name => "checkers21").update(:x_coordinate => 10,  :y_coordinate => 570, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers22").update(:x_coordinate => 170, :y_coordinate => 570, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers23").update(:x_coordinate => 490, :y_coordinate => 570, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)
    g.tokens.find_or_create_by(:name => "checkers24").update(:x_coordinate => 330, :y_coordinate => 570, :image_0 => "checker_black.png", :image_1 => "checker_black_king.png", :flippable => true, :state => 0)


    # 12.times do 
    #   g.tokens.create(name: "checkers", image:"test_token.png",  x_coordinate: 10, y_coordinate:10)
    # end
    # 12.times do 
    #   g.tokens.create(name: "checkers", image:"test2.png", x_coordinate: 0, y_coordinate:0)
    # end
    g
  end

  def self.build_backgammon(g = nil)
    if g == nil
      g = Game.create(name: "backgammon", secure_room_code: Game.secure_room_code)
      g.create_board(image: "backgammon_board.jpg")
    end

    g.tokens.find_or_create_by(:name => "backgammon1").update(:x_coordinate => 35, :y_coordinate => 25, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon2").update(:x_coordinate => 35, :y_coordinate => 75, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )

    g.tokens.find_or_create_by(:name => "backgammon3").update(:x_coordinate => 35, :y_coordinate => 565, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon4").update(:x_coordinate => 35, :y_coordinate => 615, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )

    g.tokens.find_or_create_by(:name => "backgammon5").update(:x_coordinate => 410, :y_coordinate => 25, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon6").update(:x_coordinate => 410, :y_coordinate => 75, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon7").update(:x_coordinate => 410, :y_coordinate => 125, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon8").update(:x_coordinate => 410, :y_coordinate => 175, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon9").update(:x_coordinate => 410, :y_coordinate => 225, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )

    g.tokens.find_or_create_by(:name => "backgammon10").update(:x_coordinate => 410, :y_coordinate => 415, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon11").update(:x_coordinate => 410, :y_coordinate => 465, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon12").update(:x_coordinate => 410, :y_coordinate => 515, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon13").update(:x_coordinate => 410, :y_coordinate => 565, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon14").update(:x_coordinate => 410, :y_coordinate => 615, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )

    g.tokens.find_or_create_by(:name => "backgammon15").update(:x_coordinate => 610, :y_coordinate => 25, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon16").update(:x_coordinate => 610, :y_coordinate => 75, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon17").update(:x_coordinate => 610, :y_coordinate => 125, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )

    g.tokens.find_or_create_by(:name => "backgammon18").update(:x_coordinate => 610, :y_coordinate => 515, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon19").update(:x_coordinate => 610, :y_coordinate => 565, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon20").update(:x_coordinate => 610, :y_coordinate => 615, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )

    g.tokens.find_or_create_by(:name => "backgammon21").update(:x_coordinate => 915, :y_coordinate => 25, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon22").update(:x_coordinate => 915, :y_coordinate => 75, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon23").update(:x_coordinate => 915, :y_coordinate => 125, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon24").update(:x_coordinate => 915, :y_coordinate => 175, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon25").update(:x_coordinate => 915, :y_coordinate => 225, :image_1 => "checker_red.png", :state => 0, :image_0 => "checker_red.png", :flippable => false )

    g.tokens.find_or_create_by(:name => "backgammon26").update(:x_coordinate => 915, :y_coordinate => 415, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon27").update(:x_coordinate => 915, :y_coordinate => 465, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon28").update(:x_coordinate => 915, :y_coordinate => 515, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon29").update(:x_coordinate => 915, :y_coordinate => 565, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )
    g.tokens.find_or_create_by(:name => "backgammon30").update(:x_coordinate => 915, :y_coordinate => 615, :image_1 => "checker_black.png", :state => 0, :image_0 => "checker_black.png", :flippable => false )

    g
  end


  def self.build_chinese_checkers(g = nil)
    if g == nil
      g = Game.create(name: "chinese_checkers", secure_room_code: Game.secure_room_code)
      g.create_board(image: "chinese_checkers.png")
    end
   
    g.tokens.find_or_create_by(:name => "chinese_checkers1").update(:x_coordinate => 255, :y_coordinate => 25,  :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers2").update(:x_coordinate => 255, :y_coordinate => 90,  :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers3").update(:x_coordinate => 255, :y_coordinate => 155, :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers4").update(:x_coordinate => 255, :y_coordinate => 225, :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers5").update(:x_coordinate => 310, :y_coordinate => 55,  :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers6").update(:x_coordinate => 310, :y_coordinate => 120, :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers7").update(:x_coordinate => 310, :y_coordinate => 185, :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers8").update(:x_coordinate => 365, :y_coordinate => 90,  :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers9").update(:x_coordinate => 365, :y_coordinate => 155, :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers10").update(:x_coordinate => 420, :y_coordinate => 120, :image_0 => "cc_purple.png", :image_1 => "cc_purple.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chinese_checkers11").update(:x_coordinate => 530, :y_coordinate => 125, :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers12").update(:x_coordinate => 585, :y_coordinate => 95,  :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers13").update(:x_coordinate => 585, :y_coordinate => 160, :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers14").update(:x_coordinate => 640, :y_coordinate => 60,  :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers15").update(:x_coordinate => 640, :y_coordinate => 125, :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers16").update(:x_coordinate => 640, :y_coordinate => 190, :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers17").update(:x_coordinate => 695, :y_coordinate => 30,  :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers18").update(:x_coordinate => 695, :y_coordinate => 95,  :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers19").update(:x_coordinate => 695, :y_coordinate => 160, :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers20").update(:x_coordinate => 695, :y_coordinate => 220, :image_0 => "cc_blue.png",   :image_1 => "cc_blue.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chinese_checkers21").update(:x_coordinate => 300, :y_coordinate => 755, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers22").update(:x_coordinate => 360, :y_coordinate => 725, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers23").update(:x_coordinate => 305, :y_coordinate => 695, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers24").update(:x_coordinate => 420, :y_coordinate => 695, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers25").update(:x_coordinate => 250, :y_coordinate => 785, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers26").update(:x_coordinate => 365, :y_coordinate => 660, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers27").update(:x_coordinate => 250, :y_coordinate => 725, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers28").update(:x_coordinate => 250, :y_coordinate => 665, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers29").update(:x_coordinate => 305, :y_coordinate => 635, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers30").update(:x_coordinate => 250, :y_coordinate => 600, :image_0 => "cc_brown.png",  :image_1 => "cc_brown.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chinese_checkers31").update(:x_coordinate => 745, :y_coordinate => 505, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers32").update(:x_coordinate => 805, :y_coordinate => 475, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers33").update(:x_coordinate => 745, :y_coordinate => 440, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers34").update(:x_coordinate => 745, :y_coordinate => 380, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers35").update(:x_coordinate => 800, :y_coordinate => 410, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers36").update(:x_coordinate => 860, :y_coordinate => 445, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers37").update(:x_coordinate => 915, :y_coordinate => 410, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers38").update(:x_coordinate => 860, :y_coordinate => 380, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers39").update(:x_coordinate => 805, :y_coordinate => 350, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers40").update(:x_coordinate => 750, :y_coordinate => 315, :image_0 => "cc_green.png",  :image_1 => "cc_green.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chinese_checkers41").update(:x_coordinate => 195, :y_coordinate => 500, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers42").update(:x_coordinate => 195, :y_coordinate => 440, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers43").update(:x_coordinate => 145, :y_coordinate => 465, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers44").update(:x_coordinate => 145, :y_coordinate => 400, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers45").update(:x_coordinate => 200, :y_coordinate => 375, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers46").update(:x_coordinate => 195, :y_coordinate => 310, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers47").update(:x_coordinate => 140, :y_coordinate => 340, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers48").update(:x_coordinate => 90,  :y_coordinate => 370, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers49").update(:x_coordinate => 90,  :y_coordinate => 435, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers50").update(:x_coordinate => 30,  :y_coordinate => 405, :image_0 => "cc_red.png",    :image_1 => "cc_red.png", :flippable => false)

    g.tokens.find_or_create_by(:name => "chinese_checkers51").update(:x_coordinate => 525, :y_coordinate => 690, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers52").update(:x_coordinate => 585, :y_coordinate => 660, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers53").update(:x_coordinate => 635, :y_coordinate => 630, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers54").update(:x_coordinate => 685, :y_coordinate => 600, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers55").update(:x_coordinate => 580, :y_coordinate => 725, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers56").update(:x_coordinate => 635, :y_coordinate => 695, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers57").update(:x_coordinate => 695, :y_coordinate => 665, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers58").update(:x_coordinate => 630, :y_coordinate => 755, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers59").update(:x_coordinate => 690, :y_coordinate => 720, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)
    g.tokens.find_or_create_by(:name => "chinese_checkers60").update(:x_coordinate => 685, :y_coordinate => 790, :image_0 => "cc_yellow.png", :image_1 => "cc_yellow.png", :flippable => false)    #remember to put coordinates in there in the future

    g
  end

  def self.build_shut_the_box(g = nil)
    if g == nil
      g = Game.create(name: "shut_the_box", secure_room_code: Game.secure_room_code)
      g.create_board(image: "blank.png")
    end

    g.tokens.find_or_create_by(:name => "1").update(:y_coordinate => 35, :x_coordinate => -175, :image_1 => "x.png", :state => 0, :image_0 => "1.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "2").update(:y_coordinate => 35, :x_coordinate => -85, :image_1 => "x.png", :state => 0, :image_0 => "2.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "3").update(:y_coordinate => 35, :x_coordinate => 5, :image_1 => "x.png", :state => 0, :image_0 => "3.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "4").update(:y_coordinate => 35, :x_coordinate => 95, :image_1 => "x.png", :state => 0, :image_0 => "4.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "5").update(:y_coordinate => 35, :x_coordinate => 185, :image_1 => "x.png", :state => 0, :image_0 => "5.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "6").update(:y_coordinate => 35, :x_coordinate => 275, :image_1 => "x.png", :state => 0, :image_0 => "6.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "7").update(:y_coordinate => 35, :x_coordinate => 365, :image_1 => "x.png", :state => 0, :image_0 => "7.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "8").update(:y_coordinate => 35, :x_coordinate => 455, :image_1 => "x.png", :state => 0, :image_0 => "8.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "9").update(:y_coordinate => 35, :x_coordinate => 545, :image_1 => "x.png", :state => 0, :image_0 => "9.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "10").update(:y_coordinate => 35, :x_coordinate => 635, :image_1 => "x.png", :state => 0, :image_0 => "10.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "11").update(:y_coordinate => 35, :x_coordinate => 725, :image_1 => "x.png", :state => 0, :image_0 => "11.png", :flippable => true )
    g.tokens.find_or_create_by(:name => "12").update(:y_coordinate => 35, :x_coordinate => 815, :image_1 => "x.png", :state => 0, :image_0 => "12.png", :flippable => true )
    g
  end
end
