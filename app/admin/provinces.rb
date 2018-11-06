ActiveAdmin.register Province do
  permit_params :tax_rate, :gst, :hst
end
