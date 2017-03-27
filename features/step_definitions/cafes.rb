When(/^я перехожу на главную страницу и вижу кнопку "([^"]*)"$/) do |signup|
  visit('/')
  page.assert_text(signup)
end

When(/^нажимаю на кнопку "([^"]*)"$/) do |button|
  click_link(button)
end

When(/^выходит форма регистрации$/) do
	page.has_xpath?('//*[@id="user_email"]')
	page.has_xpath?('//*[@id="user_password"]')
	page.has_xpath?('//*[@id="user_password_confirmation"]')
  # visit('/users/sign_up')
 #  within("#new_user") do
	# fill_in('Email', with: email)
	# fill_in('Password', with: password)
	# fill_in('Password confirmation', with: password_confirmation)
	# # click_button 'Sign up'
 #  end
end
When(/^я заполняю поля email "([^"]*)" и password "([^"]*)" и нажимаю на кнопку "([^"]*)"$/) do |email, password, password_confirmation|
  	fill_in('Email', with: email)
	fill_in('Password', with: password)
	fill_in('Password confirmation', with: password)
	click_button 'Sign up'
end

When(/^вижу на странице email пользователя "([^"]*)"$/) do |email|
  page.assert_text(email)
  # expect(page).to have_content('qwerty@mail.ru')
end

When(/^нажимаю кнопку "([^"]*)"$/) do |button|
  click_link(button)
end

When(/^выходит форма для входа$/) do
  page.has_xpath?('//*[@id="user_email"]')
  page.has_xpath?('//*[@id="user_password"]')
end

When(/^заполняются поля email "([^"]*)" и password "([^"]*)" и я нажимаю на кнопку "([^"]*)"$/) do |email, password, button|
  fill_in('Email', with: email)
  fill_in('Password', with: password)
  click_link(button)
end

When(/^я хочу выйти$/) do
  page.has_xpath?('//*[@id="navbar-collapse"]/ul/ul/li/a')
end

When(/^кликаю кнопку "([^"]*)"$/) do |button|
  click_link(button, match: :first)
end

When(/^выходят кнопки аутентификации$/) do
  page.has_xpath?('//*[@id="navbar-collapse"]/ul/a[1]')
  page.has_xpath?('//*[@id="navbar-collapse"]/ul/a[2]')
end


