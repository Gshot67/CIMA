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
    visit new_post_path
end

When('the user fils all the fields') do
    #fill_in 'post_user_id', with: '1'
    fill_in 'post_titolo', with: 'Titolo del post'
    fill_in 'post_content', with: 'Contenuto del post'
    fill_in 'post_tag', with: 'Tag del post'
    fill_in 'post_topic', with: 'Argomento del post'
    fill_in 'post_lingua', with: 'Lingua del post'

end

When('the user submits the form') do
    click_button 'Create Post'
end

Then('the user has his post on the feed below') do
    users = User.all
    expect(users).not_to be_empty
end

Then('User should see the feed') do
    expect(page).to have_link('Log Out', href: destroy_user_session_path)
end

When('the user clicks on retwitt') do
    post_id = Post.all.first
    visit new_post_path(user_id: 1, editoriale: post_id)
    click_button 'Create Post'
    
end

When('the user goes to the author page') do
    visit info_user_path(user_id: 1)
end

Then('the user is able to follow if author isn t himself') do
    expect(page).not_to have_content('Follow')
end