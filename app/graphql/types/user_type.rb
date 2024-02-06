# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description "A user"
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :name, String
    field :full_name, String,camelize: false
    field :first_name, String,camelize: false
    field :last_name, String,camelize: false
    field :email, String
  end
end
