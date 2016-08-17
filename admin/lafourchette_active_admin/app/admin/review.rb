ActiveAdmin.register Review do
  index do
    selectable_column
    column "Content of the review" do |review|
      link_to review.content, admin_review_path(review)
    end
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :content, :user_id, :restaurant_id

end
