# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: library_api/book.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "LibraryAPI.Book" do
    optional :id, :int32, 1
    optional :author, :string, 2
    optional :title, :string, 3
  end
end

module LibraryAPI
  Book = Google::Protobuf::DescriptorPool.generated_pool.lookup("LibraryAPI.Book").msgclass
end
