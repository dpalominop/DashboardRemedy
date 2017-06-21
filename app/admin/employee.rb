ActiveAdmin.register Employee do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :username, :name, :document, platform_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

    index :title => "Employees" do
        selectable_column
        id_column
        column :username
        column :name
        column :document
        actions
    end

    filter :username
    filter :name
    filter :document

    form do |f|
        f.inputs "Employee Details" do
            f.input :username
            f.input :name
            f.input :document
            f.input :platform_ids, as: :check_boxes, collection: Platform.all, :label => 'Platforms'
        end
        f.actions
    end

    show do
        panel "Platforms" do
            table_for employee.platforms do
                column :name
                column :description
                column :ip
            end
        end
    end

    sidebar "Employee Details", only: :show do
        attributes_table_for employee do
            row :username
            row :name
            row :document
        end
    end
end
