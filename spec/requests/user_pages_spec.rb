require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end
    
    describe "with invalid info" do
      before { click_button "Save changes" }

      #it { should have_content('error') }
    end

    describe "with valid information" do
      before do
        fill_in "Username",     with: "bookworm"
        fill_in "Realname",     with: "Erica Avery"
        fill_in "Email",        with: "books@somuchtoread.com"
        fill_in "Password",     with: "foobars"
        fill_in "Confirmation", with: "foobars"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      
        end    
              
      describe "after saving the user" do
        
        
        
        it { should have_link('Sign out') }
      end
      
      

  end
  
  
  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    describe "page" do
      it { should have_selector('h2',    text: "Update your profile") }
      #it { should have_selector('title', text: "Edit user") }
      #it { should have_link('change', href: 'http://gravatar.com/emails') }
    end
    
    describe "with valid information" do
        let(:new_username)  { "New Name" }
      let(:new_email) { "new@example.com" }
      before do
        fill_in "Username",             with: new_username
        fill_in "Email",            with: new_email
        fill_in "Password",         with: user.password
        fill_in "Confirm Password", with: user.password
        click_button "Save changes"
      end

      #it { should have_selector('title', text: new_username) }
      #it { should have_selector('div.alert.alert-success') }
      #it { should have_link('Sign out', href: signout_path) }
      #specify { user.reload.username.should  == new_username }
      #specify { user.reload.email.should == new_email }
    end
    
    
end

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    #it { should have_selector('title', text: 'Sign up') }
  end
end
end
