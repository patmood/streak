require 'spec_helper'

describe ItemsController do

  before(:each) do
    @user = User.create(
        name: "testuser",
        uid: 123,
        provider: "twitter",
        globalstreak: 3
      )
    @item_incomplete = @user.items.create(
        description: "Do this",
        donetoday: false,
        localstreak: 5,
        maxstreak: 10
      )
    @item_complete = @user.items.create(
        description: "Done",
        donetoday: true,
        localstreak: 5,
        maxstreak: 10
      )
  end

  describe '#index' do
    # context 'when user is logged in' do
    #   before(:each) do
    #     session[:user_id] = @user.id
    #   end

    #   get :index
    #   pending

    # end
    pending
  end

  describe '#new' do
    pending
  end

  describe '#create' do
    pending
  end

  describe '#destroy' do
    pending
  end

  describe '#update' do
    pending
  end

end
