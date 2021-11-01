class UserController < ApplicationController 
    def user_info
        @user=User.find(params["id"])
    end
end
