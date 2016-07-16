
# name / building / address / itstype / itsexplain / costs
# string / string / string / integer / text / integer
# 1(1호관) | 2(2호관) | 3(4호관) | 4(5호관) | 5(6호관) | 6(7호관) | 7(C호관) | 8(9호관) | 9(60주년기념관) |
# 10(하이테크센터) | 11(체육관) | 12(평생교육원) | 13(학군단) | 14(정석학술정보관) | 15(대운동장) | 16(농구장) | 17(벤처창업관) | 18(창업보육센터)
# 1.식당 2.남휴 / 여휴 3.휴게실(앉아있기 좋은곳) 4.스터디룸 5.인쇄실 6.샤워실 / 체육관

#1호관 종류별로
Totalrest.create!(name: "1호관 무엇인가", building: 1, address:"2층 어딘가",
                     itstype:1, itsexplain:"국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...",costs:"하나에 100원")
Totalrest.create!(name: "1호관 무엇인가", building: 1, address:"2층 어딘가",
                      itstype:2, itsexplain:"다. 공짜다국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외....",costs:"하나에 100원")
Totalrest.create!(name: "1호관 무엇인가", building: 1, address:"2층 어딘가",
                       itstype:3, itsexplain:"다. 국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...공짜다.",costs:"하나에 100원")
Totalrest.create!(name: "1호관 무엇인가", building: 1, address:"2층 어딘가",
                        itstype:4, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")
Totalrest.create(name: "1호관 무엇인가", building: 1, address:"2층 어딘가",
                         itstype:5, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")
Totalrest.create(name: "1호관 무엇인가", building: 1, address:"2층 어딘가",
                          itstype:6, itsexplain:"국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...다. 공짜다.",costs:1)

Totalrest.create(name: "2호관 무엇인가", building: 2, address:"2층 어딘가",
                           itstype:2, itsexplain:"다. 공짜국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외....",costs:1)
Totalrest.create(name: "3호관 무엇인가", building: 3, address:"2층 어딘가",
                            itstype:2, itsexplain:"다. 공짜국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...다.",costs:"하나에 100원")
Totalrest.create(name: "5호관 무엇인가", building: 4, address:"2층 어딘가",
                             itstype:2, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")
Totalrest.create(name: "6호관 무엇인가", building: 5, address:"2층 어딘가",
                              itstype:2, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")
Totalrest.create(name: "7호관 무엇인가", building: 6, address:"2층 어딘가",
                               itstype:2, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")
Totalrest.create(name: "C호관 무엇인가", building: 7, address:"2층 어딘가",
                              itstype:2, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")
Totalrest.create(name: "9호관 입니다.", building: 8, address:"2층 어딘가",
                       itstype:2, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")
Totalrest.create(name: "60주년 기념관", building: 9, address:"2층 어딘가",
                itstype:2, itsexplain:"다. 공국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외...짜다.",costs:"하나에 100원")



Totalrest.create(name: "IT cafe", building: 10, address:"고층부 1층 120호 옆",
                  itstype:3, itsexplain:"컴퓨터와 휴식공간이 있다. 테이블은 10개정도 있는것 같고 개인이 앉을수 있는 공간도 있다. 학기중에 가면 핫한 곳이다. 겨울에 가면 따뜻하고 여름에 가면 춥다. 하텍의 만남의 광장. 아카로 오라고 하면 여기다.",costs:"무료이용")
Totalrest.create(name: "하이테크샤워실", building: 10, address:"저층부 5층",
                  itstype:6, itsexplain:"샤워실이다. 2개의 샤워 공간이 있다. 비누도 있고 드라이기도 있다. 수건은없다. 만들어진지 별로 안되서 청결한 편이다.",costs:"무료이용")
Totalrest.create(name: "스터디룸 1204 / 1406호", building: 10, address:"12층 엘베 앞 / 14층 화장실 앞",
              itstype:4, itsexplain:"빔 / 책상 / 전원 등이 모두 구비되어 있는 학생 스터디실이다. 컴퓨터공학과 사무실(10층)에서 기안을 내면 사용할수 있다. 한 그룹당 하루 최대 3시간 이용을 할 수 있다. 주말 사용도 기안을 내야한다.",costs:"무료이용")
Totalrest.create(name: "프린터실", building: 10, address:"2층 자판기 옆",
                    itstype:5, itsexplain:"사람이 많다. 학기중에는 10분전에 가면 오래 기다릴수 있으니 미리미리 뽑는것이 좋다",costs:"흑백 40원 칼라 100원?")
Totalrest.create(name: "여자휴게실", building: 10, address:"1층 IT카페 앞",
                  itstype:2, itsexplain:"여자가 아니여서..잘모림......",costs:"무료이용")
