require 'spec_helper'

feature 'User buttons' do

  scenario 'Should have a login link when user is not logged in' do
    visit root_path

    click_link('Se connecter')
    current_path.should == new_user_session_path
  end


  scenario 'Has a logout link when user is logged in' do
    sign_in
    visit root_path

    click_link('Se déconnecter')
    current_path.should == root_path
  end

  scenario 'Has a profile link when user is logged in' do
    sign_in
    visit root_path

    click_link('Mon profil')
    current_path.should == edit_user_registration_path
  end
end