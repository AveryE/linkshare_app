require "spec_helper"

describe "Bookmarks" do
    

    describe "Index page" do
        it "should have the content 'Welcome to Linkshare'" do
            visit '/bookmarks'
            page.should have_content('Welcome to Linkshare')
        end
        
        it "should have the content 'All bookmarks shared'" do
            visit '/bookmarks'
            page.should have_content('All bookmarks shared')
        end

    end
    
        describe "New page" do

            it "should have the content 'Add a new bookmark'" do
            visit '/new'
            page.should have_content('Add a new bookmark')
        end
    end
    
end

