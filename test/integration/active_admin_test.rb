# frozen_string_literal: true

require 'spec_helper'

class ActiveAdminTest < ActionDispatch::IntegrationTest
  let(:admin) { admin_users(:admin) }

  it 'should login successfully with correct credentials' do
    post admin_user_session_path @admin
    assert_response :success
  end
end
