describe 'the main page', :js => true do

  it 'will let you create a new game checkers' do
    visit '/'
    click_link 'Checkers'
    expect(page).to have_css("img[src*='checker']")
  end

  it 'will let you create a new game chess' do
    visit '/'
    click_link 'Chess'
    expect(page).to have_css("img[src*='chess']")
  end

  it 'will let you create a new game backgammon' do
    visit '/'
    click_link 'Backgammon'
    expect(page).to have_css("img[src*='backgammon']")
  end

  it 'will let you create a new game checkers' do
    visit '/'
    click_link 'Chinese Checkers'
    expect(page).to have_css("img[src*='cc_yellow']")
  end

end

describe 'the individual(game) show pages general features', :js => true do
  it 'will alert you to enter your name upon entering a game' do
    visit '/'
    click_link 'Checkers'
    expect(page).to have_content('Be sure to enter your screen name!')
  end

  context 'Tokens' do 
    
  end

  
  context 'Menu' do
    it 'has a menu that allows you access to a reset button which resets the game' do
      visit '/'
      click_link 'Checkers'
      expect(page).to have_content('Menu')
    end

    it 'has a menu that allows you to access a home button which directs you to the index page' do
      visit '/'
      click_link 'Checkers'
      expect(page).to have_content('Menu')
      click_link 'Menu'
      click_link 'Home'
      expect(page).to have_content('GameTable')
    end

    it "won't allow you access to neither the home button nor the reset button if you don't click menu" do
      visit '/'
      click_link 'Chess'
      expect(page).to have_content('Menu')
      expect(page).not_to have_content('Home')
      expect(page).not_to have_content('Reset')
    end
  end

  context 'Chat' do
    it 'lets you send messages with whatever username you put in' do
      visit '/'
      click_link 'Backgammon'
      fill_in 'message_name', :with => 'James Tong'
      fill_in 'message_content', :with => 'Hi friends! lets play board games!!'
      click_button 'Send'
      fill_in 'message_content', :with => 'This site is awesome!'
      click_button 'Send'
      expect('#chat').to have(5).things
      #it has 5 things because 2 script tags will always be within this chat by default and we just added 3
    end
  end
end