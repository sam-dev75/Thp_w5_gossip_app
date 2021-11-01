class HomeController < ApplicationController
    def home_page
        @gossips=Gosssip.all 
        users=User.all 
        userLength=users.length 
        randNum=rand(0..userLength)
        @name=users[randNum].first_name
    end 

    def about_us 

    end 

    def contact_us 
        users=User.all 
        getRandom=rand(0..users.length)
        @user=users[getRandom]
    end 

    def welcome 
        @name=params['name']
        
    end 

    def show_gossip 
        
    end

end
