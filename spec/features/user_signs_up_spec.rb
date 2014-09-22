feature "user signs Up" do
  scenario "with correct credentials, Happy Path" do
    visit '/'
    click_link 'Sign Up'
    fill_in "First name", with: "Adam"
    fill_in "Last name", with: "Keesecker"
    fill_in "Email", with: "adamkeesecker@gmail.com"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "password1"
    click_button "Sign Up"
    current_path.should == root_path
  end
  scenario "but skipped password" do
    visit '/'
    click_link 'Sign Up'
    fill_in "First name", with: "Adam"
    fill_in "Last name", with: "Keesecker"
    fill_in "Email", with: "adamkeesecker@gmail.com"
    click_button "Sign Up"
    page.should have_content "Password can't be blank"
  end
  scenario "but skipped email" do
    visit '/'
    click_link 'Sign Up'
    fill_in "First name", with: "Adam"
    fill_in "Last name", with: "Keesecker"
    fill_in "Password", with: "password1"
    fill_in "Password confirmation", with: "password1"
    click_button "Sign Up"
    page.should have_content "Email can't be blank"
  end
end
