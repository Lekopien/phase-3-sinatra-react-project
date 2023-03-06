class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Karibu shingapi!" }.to_json
  end

  #Get 
  get "/budget" do
    budgets = Budget.all
    budgets.to_json(include: :expenses)

  end
end

  #Post
  post "/budget" do
    request_body = JSON.parse(request.body.read)
    budget = Budget.new(request_body)
    if budget.save
      status 201
      budget.to_json
    else
      status 422
      { errors: budget.errors }.to_json
    end
#   #Patch

#   #Delete
#   # Define the delete budget route
# delete "/budget/:id" do
#   id = params[:id]
#   budget = Budget.find_by(id: id)
#   if budget.nil?
#     status 404
#     { error: "Budget with id #{id} not found" }.to_json
#   else
#     budget.destroy
#     status 204
#   end
# end
# end
