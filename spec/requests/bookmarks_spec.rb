require "spec_helper"

describe "Bookmarks" do

    describe "New page" do

        it "should have the content 'New bookmark'" do
            visit '/new'
            page.should have_content('New bookmark')
        end
    end
    
    describe "Index page" do

        it "should have the content 'Listing bookmarks'" do
            visit '/bookmarks'
            page.should have_content('Listing bookmarks')
        end
    end
    
end

