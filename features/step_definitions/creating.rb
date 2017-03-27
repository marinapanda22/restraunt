When(/^залогинен пользователь с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
	visit('/users/sign_in')
	within("#new_user") do
  	fill_in('Email', with: email)
  	fill_in('Password', with: password)
  	click_button 'Log in'
	end
end

When(/^создаст продукт с данным:$/) do |table|
	visit('/admin/caves/new')
	within ("#new_cafe") do
		fill_in('Title', with: table.hashes[0][:title])
		fill_in('Description', with: table.hashes[0][:description])
		click_button 'Create Cafe'
	end
end

When(/^кафе "([^"]*)" видно в списке всех кафе$/) do |title|
	page.has_xpath?('//a[contains(text(), "#{title}")]')
end

When(/^авторизован пользователь с email "([^"]*)" и паролем "([^"]*)"$/) do |email, password|
 	visit('/users/sign_in')
	within("#new_user") do
  	fill_in('Email', with: email)
  	fill_in('Password', with: password)
  	click_button 'Log in'
	end
end

When(/^нажимает на ссылку "([^"]*)"$/) do |delete|
  visit('/admin/caves')
  click_link(delete, match: :first)
end

When(/^"([^"]*)" пропадает из списка$/) do |title|
  page.should have_no_content(title)
end

