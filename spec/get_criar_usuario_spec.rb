require_relative "routes/usuarios"

describe "GET / Usuarios" do
  context "Novo usuario" do
    before(:all) do
      @result = Usuarios.new.criar(payload)
    end

    it "valida status code" do
      expect(result.code).to eql 200
    end
  end
end
