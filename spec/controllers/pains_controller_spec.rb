# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe PainsController, type: :controller do
  login_user
  # This should return the minimal set of attributes required to create a valid
  # Pain. As you add validations to Pain, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip('Add a hash of attributes valid for your model')
  }

  let(:invalid_attributes) {
    skip('Add a hash of attributes invalid for your model')
  }

  describe 'GET #index' do
    it 'returns a success response' do
      Pain.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      pain = Pain.create! valid_attributes
      get :show, params: { id: pain.to_param }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      pain = Pain.create! valid_attributes
      get :edit, params: { id: pain.to_param }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Pain' do
        expect {
          post :create, params: { pain: valid_attributes }
        }.to change(Pain, :count).by(1)
      end

      it 'redirects to the created pain' do
        post :create, params: { pain: valid_attributes }
        expect(response).to redirect_to(Pain.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { pain: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        skip('Add a hash of attributes valid for your model')
      }

      it 'updates the requested pain' do
        pain = Pain.create! valid_attributes
        put :update, params: { id: pain.to_param, pain: new_attributes }
        pain.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the pain' do
        pain = Pain.create! valid_attributes
        put :update, params: { id: pain.to_param, pain: valid_attributes }
        expect(response).to redirect_to(pain)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        pain = Pain.create! valid_attributes
        put :update, params: { id: pain.to_param, pain: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested pain' do
      pain = Pain.create! valid_attributes
      expect {
        delete :destroy, params: { id: pain.to_param }
      }.to change(Pain, :count).by(-1)
    end

    it 'redirects to the pains list' do
      pain = Pain.create! valid_attributes
      delete :destroy, params: { id: pain.to_param }
      expect(response).to redirect_to(pains_url)
    end
  end
end
