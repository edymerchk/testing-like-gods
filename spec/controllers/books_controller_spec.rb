

describe BooksController do

  describe "GET #index" do
    let(:book) { create(:book) }
    it "shows a list of @books" do
      get :index
      expect(assigns(:books)).to eq [book]
    end
    it "renders the index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "POST #create " do

    context "with valid attributes" do
      it "saves the new book in the db" do
        expect{
          post :create, book: attributes_for(:book)
        }.to change(Book, :count).by(1)
      end
      it "redirects to the index book page" do
        post :create, book: attributes_for(:book)
        expect(response).to  redirect_to books_path
      end
    end

    context "with invalid attributes" do
      it "does not save the book in the database" do
        expect{
          post :create,
          book: attributes_for(:book).except(:title)
          }.to_not change(Book, :count)
      end
    end
  end
end
