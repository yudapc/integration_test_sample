require "./spec_helper"

feature "Widget management" do
  scenario "User creates a new widget" do
    visit "http://www.boxgue.com/chords"
    fill_in "q", :with => "peterpan\n"
    fill_in "q", :with => "sunset\n"
    fill_in "q", :with => "superman\n"
    fill_in "q", :with => "kerispatih\n"
    fill_in "q", :with => "kangen\n"
    fill_in "q", :with => "munajad cinta\n"
    fill_in "q", :with => "dewa\n"
    fill_in "q", :with => "fimeo\n"
    fill_in "q", :with => "bon jovi\n"
    fill_in "q", :with => "dangdut\n"
    fill_in "q", :with => "nike\n"
    fill_in "q", :with => "dewi dewi\n"
    fill_in "q", :with => "salahku\n"

    for i in 20000..22000
      visit "http://www.boxgue.com/main/read/#{i}"
      puts "#{i}\n"
      sleep 1
    end
    # click_button "Create Widget"
    #
    # expect(page).to have_text("Widget was successfully created.")
  end
end
