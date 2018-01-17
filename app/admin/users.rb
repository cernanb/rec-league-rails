ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :first_name, :last_name, :captain, :password, team_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    inputs 'User' do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :captain
      input :team_ids, collection: Team.all.collect {|x| [x.name, x.id]}, as: :select, multiple: true, input_html: { class: "chosen-input",  style: "width: 700px;"}
    end
    f.actions
    f.semantic_errors
  end
end
