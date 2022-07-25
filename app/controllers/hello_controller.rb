class HelloController < ApplicationController
  protect_from_forgery

  def index
    if request.post?
      @title = 'Result'
      @msg = 'you typed: ' + params['input1'] + '.'
      @value = params['input1']
    else
      @title = 'Index'
      @msg = 'type text...' 
      @value = params['input1']#''
    end
    p [@title,@msg,@value]
  end
end

 
      #render html: html.html_safe
      #@title = "View Sample"
      #@msg = "fooooo"
