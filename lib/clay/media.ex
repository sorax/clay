defmodule Clay.Media do
  @moduledoc """
  Domain for managing books and lists in the media library.
  """

  use Ash.Domain, otp_app: :clay, extensions: [AshPhoenix]

  resources do
    resource Clay.Media.List do
      define :create_list, action: :create

      define :read_lists,
        action: :read,
        default_options: [load: [:books_count, :books_read_count, :books_unread_count]]

      define :get_list_by_id, action: :read, get_by: :id
      define :update_list, action: :update
      define :destroy_list, action: :destroy
    end

    resource Clay.Media.Book do
      define :create_book, action: :create
      define :read_books, action: :read
      define :get_book_by_id, action: :read, get_by: :id
      define :update_book, action: :update
      define :destroy_book, action: :destroy

      define :filter_books, action: :filter, args: [:list_id]
    end
  end
end
