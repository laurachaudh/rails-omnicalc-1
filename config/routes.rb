Rails.application.routes.draw do
  get("/square/new", {:controller => "calc", :action => "square_form" })
  get("/square/results", {:controller => "calc", :action => "square" })

  get("/square_root/new",{:controller => "calc", :action => "square_root_form" } )
  get("/square_root/results",{:controller => "calc", :action => "square_root" } )

  get("/payment/new",{:controller => "calc", :action => "payment_form" } )
  get("/payment/results",{:controller => "calc", :action => "payment" } )

  get("/random/new",{:controller => "calc", :action => "random_form" } )
  get("/random/results",{:controller => "calc", :action => "random" } )
  
end
