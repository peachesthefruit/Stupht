# require 'rails_helper'

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to specify the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator.  If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails.  There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.
# #
# # Compared to earlier versions of this generator, there is very limited use of
# # stubs and message expectations in this spec.  Stubs are only used when there
# # is no simpler way to get a handle on the object needed for the example.
# # Message expectations are only used when there is no simpler way to specify
# # that an instance is receiving a specific message.

# RSpec.describe Api::V1::UsersController, :type => :controller do

#   # This should return the minimal set of attributes required to create a valid
#   # User. As you add validations to User, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     FactoryGirl.build(:user).as_json
#   }

#   let(:invalid_attributes) {
#     {email: nil, name: 123}
#   }

#   let(:new_attributes) {
#     FactoryGirl.build(:user, email: 'new@mail.com').as_json
#   }

#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # UsersController. Be sure to keep this updated too.
#   let(:valid_session) { {} }

#   describe "GET index" do
#     it "assigns all Users as @Users" do
#       user = FactoryGirl.create(:user)
#       get :index, params: {}, session: valid_session
#       expect(assigns(:users).to_a).to eq([user])
#     end
#   end

#   describe "GET show" do
#     it "assigns the requested user as @user" do
#       user = FactoryGirl.create(:user)
#       get :show, params: {:id => user.id}, session: valid_session
#       expect(assigns(:user)).to eq(user)
#     end
#   end

#   describe "PATCH update" do
#     it "assigns the requested user as @user" do
#       user = FactoryGirl.create(:user)
#       patch :update, params: {:id => user.id, :user => valid_attributes}, session: valid_session
#       expect(assigns(:user)).to eq(user)
#     end
#   end

#   describe "POST create" do
#     describe "with valid params" do
#       it "creates a new User without a Post" do
#         expect {
#           post :create, params: {:user => valid_attributes}, session: valid_session
#         }.to change(User, :count).by(1)
#       end

#       it "creates a new User with a Post" do
#         user = FactoryGirl.build(:user)
#         user_post = FactoryGirl.build(:post)
#         user.posts.push(user_post)

#         expect {
#           post :create, params: {:user => user.as_json}, session: valid_session
#         }.to change(User, :count).by(1)

#         expect(assigns(:user).as_json).to include(:posts)
#       end

#       it "assigns a newly created user as @user" do
#         post :create, params: {:user => valid_attributes}, session: valid_session
#         expect(assigns(:user)).to be_a(User)
#         expect(assigns(:user)).to be_persisted
#       end
#     end

#     describe "with invalid params" do
#       it "assigns a newly created but unsaved user as @user" do
#         post :create, params: {:user => invalid_attributes}, session: valid_session
#         expect(assigns(:user)).to be_a_new(User)
#       end
#     end
#   end

#   describe "PUT update" do
#     describe "with valid params" do

#       it "updates the requested user" do
#         user = User.create! valid_attributes
#         put :update, params: {:id => user.id, :user => new_attributes}, session: valid_session
#         user.reload
#         expect(assigns(:user)).to eq(user)
#       end

#       it "assigns the requested user as @user" do
#         user = User.create! valid_attributes
#         put :update, params: {:id => user.id, :user => valid_attributes}, session: valid_session
#         expect(assigns(:user)).to eq(user)
#       end
#     end

#     describe "with invalid params" do
#       it "assigns the user as @user" do
#         user = User.create! valid_attributes
#         put :update, params: {:id => user.id, :user => invalid_attributes}, session: valid_session
#         expect(assigns(:user)).to eq(user)
#       end
#     end
#   end

#   describe "DELETE destroy" do
#     it "destroys the requested user" do
#       user = User.create! valid_attributes
#       expect {
#         delete :destroy, params: {:id => user.id}, session: valid_session
#       }.to change(User, :count).by(-1)
#     end
#   end

# end