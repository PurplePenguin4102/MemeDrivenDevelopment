class Memes::Admin::BaseController < ApplicationController
    before_action :authenticate_user!
end