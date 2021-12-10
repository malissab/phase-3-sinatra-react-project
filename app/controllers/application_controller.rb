class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #get sneakers and include reviews and users
  
  get '/sneakers' do
  
    sneakers = Sneaker.all

    sneakers.to_json(include: { reviews: { include: :user } })
    
  end


  #submits a post

  post '/sneakers' do
    sneaker = Sneaker.create({name:params[:name], brand:params[:brand], 
      release_date:params[:release_date], resell_value:params[:resell_value]})

      sneaker.to_json(include: { reviews: { include: :user } })

  end

  #deletes a post

  delete "/sneakers/:id" do
    sneaker = Sneaker.find(params[:id])
    sneaker.destroy
    {message: 'post deleted!'}.to_json
  end 


  get '/reviews' do
  
    Review.all.to_json
    
  end


  get '/users' do
  
    User.all.to_json
    
  end


end
