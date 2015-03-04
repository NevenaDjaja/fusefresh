require 'spec_helper'

describe "admin interface" do

	describe "main admin page" do
		subject {page}

		before do
			User.create(
				email: 'user@example.com',
				password: 'secret',
				password_confirmation: 'secret'
			)

			# visit root_path click_link 'Sign In' 
			# fill_in 'Email', with: 'user@example.com' 
			# fill_in 'Password', with: 'secret' 
			# click_button 'Sign In'
		end

		it "should accesss admin path" do
			visit root_path
			current_path.should eq admin_path
		end

		# it "should have content 'Administration'" do
		# 	within 'h1' do
		# 		page.should have_content 'Administration'
		# 	end
		# 	page.should have_content 'Manage Users'
		# 	page.should have_content 'Manage Articles'
		# end
	end	
end