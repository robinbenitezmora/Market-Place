Rails.application.routes.draw do
  namespece :api, defaults: { format::json } do
    namespece :v1 do
    #We are going to list our resources here
    end
  end
end
