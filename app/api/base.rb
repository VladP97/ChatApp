module API
  class Base < Grape::API
    mount API::V1::Base => '/v1'
  end
end