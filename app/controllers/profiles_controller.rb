class ProfilesController < ApplicationController

def show
  @products = current_user.products
end

end
