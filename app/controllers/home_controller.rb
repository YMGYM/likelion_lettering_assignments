class HomeController < ApplicationController
  def index
    
  end
  
  def write
      @post = Letter.new
      @post.teachertitle = params["teachertitle"]
      @post.yourname = params["yourname"]
      @post.myname = params["myname"]
      @post.greet = params["greet"]
      @post.whatdo = params["whatdo"]
      @post.pasthappen = params["pasthappen"]
      @post.pastdo = params["pastdo"]
      @post.nowchange = params["nowchange"]
      @post.nowhappen = params["nowhappen"]
      @post.addition = params["addition"]
      @post.finishword = params["finishword"]
      @post.studenttite = params["studenttitle"]
      @post.pass = params["pass"]
      @post.save
      redirect_to "/list"
  end
  
  def show
    @post = Letter.where(id: params["id"]).first
  end
  
  def edit
    @post = Letter.find(params["id"])
  end
  
  def update
      post= Letter.where(id: params["id"]).first
      post.teachertitle = params["teachertitle"]
      post.yourname = params["yourname"]
      post.myname = params["myname"]
      post.greet = params["greet"]
      post.whatdo = params["whatdo"]
      post.pasthappen = params["pasthappen"]
      post.pastdo = params["pastdo"]
      post.nowchange = params["nowchange"]
      post.nowhappen = params["nowhappen"]
      post.addition = params["addition"]
      post.finishword = params["finishword"]
      post.studenttite = params["studenttitle"]
      post.pass = params["pass"]
      post.save
      redirect_to "/show/" + post.id.to_s
  end
    
  def delete
    @post = Letter.where(id: params["id"]).first
    @post.destroy
    
    redirect_to "/list"
  end
  
  def list
    @post = Letter.all
  end
  
  def editcheck
    @post = Letter.find(params["id"])
  end
  
  def deletecheck
    @post = Letter.find(params[:id])
  end
  
  def checkvalueedit
    post = Letter.find(params[:id])
    
    ck = params["check"]
    if ck == post.pass.to_s
      redirect_to "/edit/" + params[:id].to_s
    else
      redirect_to "/wrong/" + params[:id].to_s
    end
  end
  
  def checkvaluedelete
    post = Letter.find(params[:id])
    
    if params["check"] == post.pass.to_s
      redirect_to "/delete/" + params[:id].to_s
    else
      redirect_to "/wrong/" + params[:id].to_s
    end
  end
  
  def mainpage
  end
  
  def wrong
    @post = Letter.find(params[:id])
  end
end
