class HelloController < ApplicationController
  #protect_from_forgery
  layout "hello"
  def index
    @header = "layout sample"
    @footer = "copyright abc 2022."
    @title  = "New Layout"
    @msg    = "this is sample page"
  end
end





"
class HelloController < ApplicationController
  protect_from_forgery
  def index
    t = request.post?
    p t
    if t
      @title = 'Result'
      @msg = 'you typed: ' + params['input1'] + '.'
      @value = params['input1']
    else
      @title = 'Index'
      @msg = 'type text...' 
      @value = params['input1']
    end
      p [@title,@msg,@value]
  end
end
"