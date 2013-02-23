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
    
end
