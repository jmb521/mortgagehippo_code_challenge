class ApiUsersController < ApplicationController
   


   def create
     @user = ApiUser.create()
     format.json(@user)
   end

   def index

   end



end
