# frozen_string_literal: true

# Fetches a list of members
class Resolvers::Fetch::Users < Resolvers::BaseResolver
  # include PaginationAndFiltersSupport

  # visibility_role :list
  # visibility_pundit_class MemberPolicy

  # valid_sort_columns ["users.created_at"]
  # default_sort [{"column" => "users.created_at", "direction" => "desc"}]

  # paginated true

  # argument :active, Boolean, required: false
  # argument :channel_partner_id, String, required: false
  # argument :country, String, required: false
  # argument :created_after, Types::DateType, required: false
  # argument :created_before, Types::DateType, required: false
  # argument :customer_id, String, required: false
  # argument :customer_name, String, required: false
  # argument :customer_or_employer_or_peo, String, required: false
  # argument :name_or_email, String, required: false
  # argument :verified, Boolean, required: false

  # filters({
  #   active: {field: "users.active", joins: :user},
  #   channel_partner_id: {type: :scope, scope: :with_channel_partner_id},
  #   country: {field: "covered_lives.country", joins: :covered_life},
  #   created_after: {type: :scope, scope: :created_after},
  #   created_before: {type: :scope, scope: :created_before},
  #   customer_id: {field: "cohorts.customer_id", joins: :cohort},
  #   customer_name: {type: :ilike, field: "customers.name", joins: {cohort: :customer}},
  #   customer_or_employer_or_peo: {type: :scope, scope: :from_customer_or_employer_or_peo},
  #   name_or_email: {type: :scope, scope: :like_name_or_email},
  #   verified: {field: "verified"}
  # })

  description "Find users"
  type [Types::UserType], null: true

  def resolve()
    User.all
  end
  
end
