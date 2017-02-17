ActiveAdmin.register Account do

  permit_params :customer, :email, :description,  :amount, :due, :status

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs 'invoce' do
      f.input :customer
      f.input :description
      f.input :email
      f.input :amount
      f.input :due , as: :datepicker, datepicker_options: { min_date: "Date.new",
        max_date: "+2Y", changeMonth: true, changeYear: true, showOtherMonths: true, selectOtherMonths: true }
      f.input :status
    end          # builds an input field for every attribute

    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

end
