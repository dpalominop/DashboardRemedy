ActiveAdmin.register Platform do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :name, :description, :ip, employee_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
    index :title => "Platforms" do
        selectable_column
        id_column
        column :name
        column :ip
        actions
    end

    filter :name
    filter :ip

    form do |f|
        f.inputs "Platform Details" do
            f.input :name
            f.input :description
            f.input :ip
            f.input :employee_ids, as: :tags, collection: Employee.all, :label => 'Employees'
        end
        f.actions
    end

    show do
        panel "Employees" do
            table_for platform.employees do
                column :username
                column :name
                column :document
            end
        end
    end

    sidebar "Employee Details", only: :show do
        attributes_table_for platform do
            row :name
            row :description
            row :ip
        end
    end
end
