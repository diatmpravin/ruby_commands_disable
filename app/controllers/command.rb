Cast::App.controllers :command do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index do
    @command = params[:command]
    @result =  `#{@command}`
    render 'command/index'
  end

  get :new do
    @day = 'Today'
    render 'command/new'  
  end

  post :create do

  end

end
