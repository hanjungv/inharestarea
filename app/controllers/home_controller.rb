require 'mailgun'
class HomeController < ApplicationController
  def index
  end



  def write
    @rest = Totalrest.all
    @po_id = params[:post_id]
    @rooms = ["1호관", "2호관", "4호관" , "5호관", "6호관", "7호관" , "C호관", "9호관", "60주년기념관",
    "하이테크센터", "정석학술정보관", "학생회관", "서호관", "나빌레관", "로스쿨관", "학군단", "평생교육원", "기타"]
  end

  def typewrite
    @rest = Totalrest.all
    @po_id = params[:post_id]

    @types =["","식당", "남휴 / 여휴","휴게실(앉아있기 좋은곳)","스터디룸","인쇄실","샤워실 / 체육관"]
    @rooms = ["1호관", "2호관", "4호관" , "5호관", "6호관", "7호관" , "C호관", "9호관", "60주년기념관",
    "하이테크센터", "정석학술정보관", "학생회관", "서호관", "나빌레관", "로스쿨관", "학군단", "평생교육원", "기타"]
  end



  def addval
    if current_user.id != 1
      redirect_to "/"
    end
    total = Totalrest.new
    total.name = params[:servname]
    total.building=params[:servbuilding]
    total.address=params[:servaddr]
    total.itstype=params[:servtype] #그 휴게 시설의 속성
    total.itsexplain=params[:servexplain] # 어떻게 사용할수 있는지 등 조건을 넣어줌
    total.costs=params[:servcost] #비용이 얼마나 드는가?
    total.whois=params[:whois] #누가 제보했는가?

    uploader = MachineUploader.new
    uploader.store!(params[:pic])
    total.image_url = uploader.url

    total.save

    redirect_to "/"
  end


  def editdata
    if current_user.id != 1
      redirect_to "/"
    end
    @rest = Totalrest.all
  end

  def destroy
    @one_post = Totalrest.find(params[:id]) #찾아서 지운다.
    @one_post.destroy
    redirect_to '/home/editdata'
  end

  def real_update
    if current_user.id != 1
      redirect_to "/"
    end
    total = Totalrest.find(params[:post_id])
    total.name = params[:servname]
    total.building=params[:servbuilding]
    total.address=params[:servaddr]
    total.itstype=params[:servtype] #그 휴게 시설의 속성
    total.itsexplain=params[:servexplain] # 어떻게 사용할수 있는지 등 조건을 넣어줌
    total.costs=params[:servcost] #비용이 얼마나 드는가?
    total.whois=params[:whois] #누가 제보했는가?

    uploader = MachineUploader.new
    uploader.store!(params[:pic])
    total.image_url = uploader.url

    total.save

    redirect_to "/home/editdata"
  end


  def update_view
    @one_post = Totalrest.find(params[:post_id])
  end

  def admin_page
    unless user_signed_in?
      redirect_to "/users/sign_in"
    else
      if current_user.id != 1
        redirect_to "/"
      end
    end
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
