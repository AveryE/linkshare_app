require "spec_helper"

describe "Bookmarks" do

    describe "Index page" do
        before { visit root_path }

        it { should have_selector('h1', text: 'Listing bookmarks') }
    
    end
    
    describe "New page" do
        before { visit new_path }
    
        it { should have_selector("h1", text: "New Bookmark") }

    end
    
    describe "Home page" do

        it "should have the content 'Listing bookmarks'" do
            visit '/bookmarks'
    page.should have_content('Listing bookmarks')
  end
end
    
end
