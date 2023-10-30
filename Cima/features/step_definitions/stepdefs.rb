Given('There s a signed up User on the sign in page') do
    visit new_user_registration_path

    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"

    click_button "Sign up"
end

When('User clicks on the sign in button') do
    visit home_path
    click_link "Add info"
end

When('the user submits the sign in form') do
    click_on "Create Info"
end

When('the user enters all the credentials') do
    fill_in "info_username", with: "testerfck"
    fill_in "info_nome", with: "John"
    fill_in "info_foto", with: "https://static.vecteezy.com/system/resources/thumbnails/002/318/271/small/user-profile-icon-free-vector.jpg"
    fill_in "info_bio", with: "This is a test bio"
    fill_in "info_certificazione", with: "Certified"
    fill_in "info_tipo", with: "1"
end

Then('User should be able to access his account page') do
    expect(page).to have_link('Log Out', href: destroy_user_session_path)
end

When('the user clicks on create new post') do
    post new_post_path, params: { user_id: current_user.id }
end

When('the user fils all the fields') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('the user submits the form') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user has his post on the feed below') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('User should see the feed') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('the user clicks on retwitt') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('the user goes to the author page') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('the user follows the author') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user is able to unfollow') do
  pending # Write code here that turns the phrase above into concrete actions
end