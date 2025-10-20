ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :fullName, :phoneNumber, :email, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:fullName, :phoneNumber, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :fullName, :phoneNumber, :email, :notes

  index do
    
  end

  form do |f|
    f.inputs do
      f.input :fullName
      f.input :phoneNumber
      f.input :email
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :fullName
      row :phoneNumber
      row :email
      row :notes
      row :image do |customer|
        image_tag url_for(customer.image) if customer.image.attached?
      end
    end
  end

end
