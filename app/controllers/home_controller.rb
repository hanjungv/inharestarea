require 'mailgun'
class HomeController < ApplicationController
  def index
  end



  def write
    @rest = Totalrest.all
    @po_id = params[:post_id]
    @rooms = ["1호관", "2호관", "4호관" , "5호관", "6호관", "7호관" , "C호관", "9호관", "60주년기념관",
    "하이테크센터", "체육관", "평생교육원", "학군단", "정석학술정보관", "대운동장", "농구장", "벤처창업관", "창업보육센터"]
  end



  def addval

    total = Totalrest.new
    total.name = params[:servname]
    total.building=params[:servbuilding]
    total.address=params[:servaddr]
    total.itstype=params[:servtype] #그 휴게 시설의 속성
    total.itsexplain=params[:servexplain] # 어떻게 사용할수 있는지 등 조건을 넣어줌
    total.costs=params[:servcost] #비용이 얼마나 드는가?
    total.save

    redirect_to "/home/index"
  end



  #footer
  def emailsend
    @emailsender = params[:emailsender]
    @emailcontent = params[:emailmessage]

    mg_client = Mailgun::Client.new("key-7deeff1d41a305f9f58c09a0875254a8")

    message_params =  {
                       from: @emailsender,
                       to:   'hanjungv@gmail.com',
                       subject: @emailcontent,
                       text:    @emailcontent
                      }

    result = mg_client.send_message('sandbox26b79ff589344c698b5c3cf747823d47.mailgun.org', message_params).to_h!

    message_id = result['id']
    message = result['message']
    redirect_to '/home/index'
  end
end
