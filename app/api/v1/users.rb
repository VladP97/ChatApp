module API
  module V1
    class Users < Grape::API

      resource :users do
        desc "Return all users"
        get do
          Users.all
        end

        desc "Return a user"
        params do
          requires :id, type: String, desc: "ID of the user"
        end
        get ":id" do

        end

        desc "Register a new user"
        params do
          requires :name, type: String, desc: "Username"
          requires :email, type: String, desc: "User email"
          requires :password, type: String, desc: "User password"
        end
        post "/register" do
          binding.pry
          encrypted_password = PasswordService.encrypt_password(params['password'])
          User.create(name: params['name'], email: params['email'], password_encrypted: encrypted_password)
        end
      end
    end
  end
end