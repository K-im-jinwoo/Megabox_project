# This is an open source class assignment.
## Megabox clone
영화예매사이트를 만들기 위해서 Megabox 사이트를 clone 하였습니다.
Ruby on Rails를 사용해서 구현하였습니다.

![오픈소스 메가박스 ppt](https://user-images.githubusercontent.com/71208129/206074853-e36d4cbc-5b67-4e20-88df-f51d749b0099.jpg)
### 서비스 주요기능
메가박스 웹 페이지의 주 기능인 현재 상영중인 영화의 정보와 영화를 예매하기까지 기능인 영화 선택, 좌석 선택, 예매 기능까지 영화 예매를 위한 페이지를 만드는 것이 목표입니다.
![오픈소스 메가박스 ppt (1)](https://user-images.githubusercontent.com/71208129/206074940-affc0907-efa8-42fe-a1e4-9934270d13d0.jpg)
### Flow Chart
메인페이지부터 시작하여 영화페이지와 영화상세정보페이지까지는 로그인을 하지 않아도 볼 수 있지만 예매를 하기 위한 페이지에 들어가기 위해선 로그인을 해야 들어 갈 수있도록 만들었습니다. 로그인을 하고나면 예매페이지에 들어가 영화와 극장, 시간, 인원 및 좌석을 선택하고 결제 창으로 넘어가 결제를 진행할 수 있습니다.
![오픈소스 메가박스 ppt (2)](https://user-images.githubusercontent.com/71208129/206075002-a588276a-0d16-4d7d-a703-3f331e3b7e33.jpg)
### ERD Diagram 
이러한 DataBase를 관리하기 위해서 admin페이지를 이용하여 관리자가 쉽게 모델에 접근하고 DB를 관리할 수 있게 하였습니다.
![megabox](https://user-images.githubusercontent.com/71208129/202840775-86346b52-46f4-49c6-a4f8-8377797645c0.png)
### tool
![오픈소스 메가박스 ppt (3)](https://user-images.githubusercontent.com/71208129/206075089-b7958f97-82cf-4367-a405-24f61ff983da.jpg)
### Notion
https://cobalt-rotate-153.notion.site/Open-source-Megabox-project-94c4576eb13a46cc80cdc59ae6680cd2

프로젝트를 진행하면서 아쉬웠던 점은 3가지가 있었습니다.
메인페이지와 영화목록 페이지에서 영화를 검색 할 수 있는 기능을 아직 구현하지 못하였습니다.
두번째는 좌석을 예약했을 때 티켓이 구매되어 좌석이 예약은 되지만 웹 페이지에서 예약된 좌석이라고 표시가 되지 않아 예약된 좌석인지 남아있는 좌석인지 구분을 하기가 어렵습니다.
세번째는 예매 도중 영화 선택 -> 극장선택 -> 시간 선택 순으로 넘어갈때 시간 선택 부분에서 아직 영화/극장과 시간을 연결하지 못하였습니다.
네번째는 원하는 기능을 구현하기 위해 구글링을 할 때 어떤 방식으로 진행해야할지에 대한 정보가 부족하여 막힐때가 많아 어려움을 많이 겪었습니다.

