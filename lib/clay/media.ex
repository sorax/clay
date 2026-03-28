defmodule Clay.Media do
  use Ash.Domain, otp_app: :clay

  resources do
    resource Clay.Media.Book do
      define :create_book, action: :create
      define :read_books, action: :read
      define :get_book_by_id, action: :read, get_by: :id
      define :update_book, action: :update
      define :destroy_book, action: :destroy
    end
  end
end
