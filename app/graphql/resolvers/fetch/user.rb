class Resolvers::Fetch::User < Resolvers::BaseResolver
  argument :id, Integer, required: true
  description "Find a User by ID"
  type Types::UserType, null: true

  def resolve(args)
    User.find(args[:id])
  end
end
