
# name / building / address / itstype / itsexplain / costs
# string / string / string / integer / text / integer
# 1호관 | 2호관 | 4호관 | 5호관 | 6호관 | 7호관 | C호관 | 9호관 | 60주년기념관 |
# 하이테크센터 | 체육관 | 평생교육원 | 학군단 | 정석학술정보관 | 대운동장 | 농구장 | 벤처창업관 | 창업보육센터
# 1.식당 2.남휴 / 여휴 3.휴게실(앉아있기 좋은곳) 4.스터디룸 5.인쇄실 6.샤워실 / 체육관
Totalrest.create(name: "IT cafe", building: "하이테크센터", address:"고층부 1층 120호 옆",
                    itstype:"3", itsexplain:"컴퓨터와 휴식공간이 있다. 공짜다.",costs:"0")
Totalrest.create(name: "하이테크샤워실", building: "하이테크센터", address:"저층부 5층",
                    itstype:"3", itsexplain:"샤워실이다. 2개의 샤워 공간이 있다. 비누도 있고 드라이기도 있다. 수건은없다.",costs:"0")
Totalrest.create(name: "IpsumLorem", building: "1호관", address:"2층 어딘가",
                     itstype:"4", itsexplain:"다. 공짜다.",costs:"1")
Totalrest.create(name: "OTTO", building: "60주년기념관", address:"3층 어딘가",
                    itstype:"4", itsexplain:"컴퓨터와 휴식공간이 있다. 공짜다.",costs:"2")
