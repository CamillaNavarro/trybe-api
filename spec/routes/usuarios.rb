require_relative "routes/base_api"

class Usuarios < BaseApi
  def criar(nome, email, pass, admin)
    payload = { nome: Faker::Name.name, email: Faker::Internet.email, password: "pwd123", administrador: "true" }

    return self.class.post(
             "/usuarios",
             body: payload.to_json,
             hearders: {
               "Content-Type": "application/json",
             },
           )
  end
end
