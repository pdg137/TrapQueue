require 'spec_helper'

describe UsersController do
  let(:user) { Fabricate(:user) }
  
  describe "GET#index" do
    context "if not logged in" do
      before do
        get "index"
      end
      
      it { should redirect_to(new_user_session_path) }
    end
    
    context "if logged in" do
      before do
        sign_in(user)
        get "index"
      end
      
      it { should respond_with(:success) }
    end
  end
end
