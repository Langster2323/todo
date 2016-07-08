class UserController < ApplicationController
  render User.all.to_json
end
