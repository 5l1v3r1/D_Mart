import random
import copy
import sys

sys.stdout=open('output.txt','w')


#INSERT INTO Reservation(ID, Name, ReserveDate, RoomNum)

#VALUES(5, '이순신', '2016-02-16', 1108);


# #insert mall
# mall=['seoul','busan','daegu','incheon','guangju','daegeon','ulsan','sejong','jeju']
# mall2=['genggido','gangwondo','chongchungnamdo','chungchungbokdo','jenlanamdo','jenlabokdo','gaengsangnamdo','gaengsangbokdo']
# mall3=mall+mall2
# a=1
# for i in mall3:
#    print('INSERT INTO MALL VALUES (\''+i+'\',\'sangdong\',\'daekhaklo\',\'10gil\',',a,');')
#    a=a+1

#insert category
# cbig=['vegetable','snack_chocolate_serial_bread','fruit_nut']
# v=['potato','lettuce','tofu']
# s=['serial','chcolate','cake']
# f=['apple','tomato_grape','melon']
#
# a=1
# for i in v:
#     print('INSERT INTO CATEGORY VALUES (\''+cbig[0]+'\',\''+i+'\',',a,');'%(stock,mnum,inum,pid,cnum))
#     a=a+1
#
# for i in s:
#     print('INSERT INTO CATEGORY VALUES (\''+cbig[1]+'\',\''+i+'\',',a,');'%(stock,mnum,inum,pid,cnum))
#     a=a+1
#
# for i in f:
#     print('INSERT INTO CATEGORY VALUES (\''+cbig[2]+'\',\''+i+'\',',a,');'%(stock,mnum,inum,pid,cnum))
#     a=a+1

# insert producer_and_location
# for i in range(1,20):
#      print('INSERT INTO PRODUCER_AND_LOCATION VALUES(',i,');'%(stock,mnum,inum,pid,cnum))

#insert item
#mall 17개 매장당 최소 24개이상( 0 최소4개이상 1~5 최소10개이상 100이상 최소 10개이상
#
# ary=[]
# sql=[]
# stock=77777
# mnum=1234 # mall nu,
# inum=9999 #itemnumber
#
# #vege - goguma 1
# cnum=1 #category
#
# pid=0 # random
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'potato100g\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,298);'%(stock,mnum,inum,pid,cnum)
# #print(sql)
# ary.append(sql)
# pid=1 # nonghyup
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'kpotato2kg_box\',%d,%d,\'no\',\'nonghyup\',\'korea\',%d,%d,4990);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=1 # nonghyup
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'honeysweetpotato3/5kg\',%d,%d,\'no\',\'nonghyup\',\'korea\',%d,%d,14900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=2 # matsam
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'venyharukaseetpotato3kg\',%d,%d,\'no\',\'matsam\',\'korea\',%d,%d,15900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=3 #firstlove
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'icesweetfuckpotato\',%d,%d,\'no\',\'firstlove\',\'korea\',%d,%d,23900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=2
# pid=0 #random
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'[990yache]ggatleaf(bong)\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,990);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid =0#random
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'GAPssamche(pack)\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,2980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'GAPchobugaatleaf(bong)\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'GAPkail\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,990);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'youginongchufuleaf&redsangchu\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,1980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=3
# pid=4
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'realtastebeannamul\',%d,%d,\'no\',\'naturalchon\',\'korea\',%d,%d,1180);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=5
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'SOGAsmoothJJIgetofu\',%d,%d,\'no\',\'mix\',\'korea\',%d,%d,1300);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=6
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'jejubeantofu300gx2\',%d,%d,\'no\',\'soybeannature\',\'korea\',%d,%d,3680);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=7
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'koreansukjunamul270g\',%d,%d,\'no\',\'ppec\',\'korea\',%d,%d,2100);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=8
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'realgosotofu1kg\',%d,%d,\'no\',\'soybeannature\',\'korea\',%d,%d,1950);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=4
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'nobrandamondserial630g\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,630);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=9
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'cornflight600g\',%d,%d,\'no\',\'dongse\',\'korea\',%d,%d,4180);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=10
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'chexchogofivegok\',%d,%d,\'no\',\'nongsim\',\'korea\',%d,%d,6280);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=11
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'oreooz500g\',%d,%d,\'no\',\'dongse\',\'korea\',%d,%d,7800);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=12
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'chocoserial570g\',%d,%d,\'no\',\'CRfood\',\'korea\',%d,%d,3980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=5
# pid=13
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'nobranddarkchogo100g\',%d,%d,\'emart\',\'natra\',\'no\',%d,%d,1180);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=14
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'nobrandmilkchogo100g\',%d,%d,\'emart\',\'natra\',\'no\',%d,%d,1180);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=15
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'abcchoco240g\',%d,%d,\'no\',\'lotee\',\'no\',%d,%d,4780);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=16
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'snickersminis\',%d,%d,\'no\',\'marschoco\',\'no\',%d,%d,14500);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=17
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'nutelaandgo52g\',%d,%d,\'FERERASIA\',\'FERRERO\',\'no\',%d,%d,1980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=6
# pid=15
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'castard2bun552g\',%d,%d,\'no\',\'lotte\',\'korea\',%d,%d,6980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=15
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'mongshellkakaocake\',%d,%d,\'no\',\'lotee\',\'korea\',%d,%d,3980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=15
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'mongshellcreamcake\',%d,%d,\'no\',\'lotee\',\'korea\',%d,%d,3980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=18
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'orionoddshocola\',%d,%d,\'no\',\'orion\',\'korea\',%d,%d,4800);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=18
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'chocopinew\',%d,%d,\'no\',\'orion\',\'korea\',%d,%d,5760);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=7
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'lowtansobae\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,7480);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'sunapple1.3kg\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,7480);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=19
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'najube5kg\',%d,%d,\'no\',\'nongup\',\'korea\',%d,%d,12900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'jesuapple\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,13800);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'lowtansoarisuapple\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,7980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=8
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'daechutomato\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,9980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'merugrape\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,15900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'bluegrape\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,12900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=20
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'elbatgoldroadpeache\',%d,%d,\'no\',\'yeongnong\',\'korea\',%d,%d,24800);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'chaltomato\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,11800);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# cnum=9
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'dangdoselmelon\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,7980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'dandoselwatermelon\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,19900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'greenmuskmelon\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,7980);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'sungjurealmelon\',%d,%d,\'no\',\'random\',\'korea\',%d,%d,11900);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
# pid=0
# sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'icewatermelon\',%d,%d,\'no\',\'korea\',\'korea\',%d,%d,7500);'%(stock,mnum,inum,pid,cnum)
# ary.append(sql)
#
# # stock=77777
# # mnum=1234 # mall nu,
# # inum=9999 #itemnumber
# ary2=[]
# ary3=[]
# ary2=ary[:12]
#
# count=1
# for z in range(1,18) :
#     for i in range(0,12) :
#         if i>=1 and i<=2 :
#              pew=ary2[i]
#              pew=pew.replace("1234",str(z))
#              pew=pew.replace("9999",str(count))
#              pew=pew.replace("77777",str(0))
#              #print('case stock 0')
#              print(pew)
#         else :
#             pew = ary2[i]
#             pew = pew.replace("1234", str(z))
#             pew = pew.replace("9999", str(count))
#             pew = pew.replace("77777", str(1))
#             #print('stock 0~300')
#             print(pew)
#         count = count + 1
#
#
#
# ary3=ary[12:45]
#
#
# #print(len(ary))
# #45 개 중  2 개는 전테 스톡 0개 10개는 전테 스톡 10개 되게
# #stcok inum mnum 정해져야함
#
# for z in range(1,18) :
#     for i in range(1,34) :
#         if i>=1 and i<=4 :
#              pew=random.choice(ary3)
#              pew=pew.replace("1234",str(z))
#              pew=pew.replace("9999",str(count))
#              pew=pew.replace("77777",str(0))
#              #print('case stock 0')
#              print(pew)
#         elif i>=5 and i<=14 :
#             pew = random.choice(ary3)
#             pew = pew.replace("1234", str(z))
#             pew = pew.replace("9999", str(count))
#             pew = pew.replace("77777", str(random.randrange(1,6)))
#             #print('case stock 1~5')
#             print(pew)
#         elif i>=15 and i<=24 :
#             pew = random.choice(ary3)
#             pew = pew.replace("1234", str(z))
#             pew = pew.replace("9999", str(count))
#             pew = pew.replace("77777", str(random.randrange(100,301)))
#             #print('case stock 100up')
#             print(pew)
#         else :
#             pew = random.choice(ary3)
#             pew = pew.replace("1234", str(z))
#             pew = pew.replace("9999", str(count))
#             pew = pew.replace("77777", str(random.randrange(0,301)))
#             #print('stock 0~300')
#             print(pew)
#         count = count + 1

#insert customer
# 기본제공 10명, 성별 나이 정보만 추가입력(직업정보제외) 30명, 성별 나이 직업 정보 추가입력 (15명) 10+30+15 = 55
# 전체 고객은 50명이상  고객 주소지 기준 각 도 광역시에 3명이상씩 있어야함 도 광역시
# mall=['seoul','busan','daegu','incheon','guangju','daegeon','ulsan','sejong','jeju']
# mall2=['genggido','gangwondo','chongchungnamdo','chungchungbokdo','jenlanamdo','jenlabokdo','gaengsangnamdo','gaengsangbokdo']
# mall3=mall+mall2
# gender=['boy','girl']
# job=['slave','master','student','professor']
#
# cql=[]
# cry=[]
# z=0
# #sql='INSERT INTO ITEM VALUES(\"2018-10-24\",%d,\'icewatermelon\',%d,%d,\'no\',\'korea\',\'korea\',%d,%d,7500);'%(stock,mnum,inum,pid,cnum)
# for i in range (1,56):
#     if z>16 : z=random.randrange(0,17)
#     if i>=1 and i <=10 :
#         cql = 'INSERT INTO CUSTOMER(CustomerID,Password,Roadname_address,Detailed_address) VALUES(%d,1234,\'%s\',\'20ro\');' % (i, mall3[z])
#         if i%3==0 :
#             z=z+1
#         cry.append(cql)
#         print(cry[i-1])
#     elif i>=11 and i<=40 :
#         cql = 'INSERT INTO CUSTOMER(CustomerID,Password,Age,Gender,Roadname_address,Detailed_address) VALUES(%d,1234,%d,\'%s\',\'%s\',\'20ro\');' % (i,random.randrange(20,40),random.choice(gender), mall3[z])
#         if i % 3 == 0:
#             z = z + 1
#         cry.append(cql)
#         print(cry[i-1])
#     else :
#         cql = 'INSERT INTO CUSTOMER(CustomerID,Password,Age,Gender,Job,Roadname_address,Detailed_address) VALUES(%d,1234,%d,\'%s\',\'%s\',\'%s\',\'20ro\');' % (i, random.randrange(20, 40), random.choice(gender), random.choice(job),mall3[z])
#         if i % 3 == 0:
#             z = z + 1
#         cry.append(cql)
#         print(cry[i-1])

#insert cart
# 상품 10개채운 고객수 5명이상 , 상품 1~9개 채운고객수 10명이상 , 상품 아무것도 안담은놈 30명이상 . 남은 7명 알아서
# icql=[]
# icry=[]
# for i in range(1,56):
#     icql = 'INSERT INTO CART VALUES(\"2018-10-%d\",%d,%d);' % (random.randrange(1,32),i,i)
#     icry.append(icql)
#     print(icry[i-1])

#insert cart_productlist 카트에 담기는 상품 1개를 나타냄
# 상품 10개채운 고객수 5명이상 , 상품 1~9개 채운고객수 10명이상 , 상품 아무것도 안담은놈 30명이상 . 남은 7명 알아서
# 10*5 , 10*(1~9)개 30*0 +@ => 50+(10~90)+@
# cpql=[]
# cpry=[]
# list=[]
#
# for i in  range(0,len(ary)):
#     test=ary[i].split()
#     tt=test[3].split(',')
#     list.append(tt[2])
#     #print(list[i])
#
# count=0
# plz=[]
# for i in range(1,56):
#     if i >=1 and i<=5 :
#         pplz=[]
#         temp=[]
#         temp=copy.deepcopy(list)
#         #print(len(list))
#         #print(len(temp))
#         for z in range(1,11) :
#             text=random.choice(temp)
#             #print(count,text)
#             pplz.append(text)
#             cpql = 'INSERT INTO CART_PRODUCT_LIST VALUES(%s,%d,%d);' % (text,i,i)
#             temp.remove(text)
#             cpry.append(cpql)
#             #print(cpry[count])
#             count=count+1
#     elif i>5 and i<=15 :
#         pplz=[]
#         temp=[]
#         temp = copy.deepcopy(list)
#         #print(len(list))
#         #print(len(temp))
#         for z in range(1,random.randrange(2,10)) :
#             text = random.choice(temp)
#             pplz.append(text)
#             #print(count, text)
#             cpql = 'INSERT INTO CART_PRODUCT_LIST VALUES(%s,%d,%d);' % (text, i, i)
#             temp.remove(text)
#             cpry.append(cpql)
#             #print(cpry[count])
#             count=count+1
#     elif i>15 and i<=22:
#         pplz = []
#         temp=[]
#         temp = copy.deepcopy(list)
#         #print(len(list))
#         #print(len(temp))
#         for z in range(1,random.randrange(11,20)) :
#             text = random.choice(temp)
#             pplz.append(text)
#             #print(count, text)
#             cpql = 'INSERT INTO CART_PRODUCT_LIST VALUES(%s,%d,%d);' % (text, i, i)
#             temp.remove(text)
#             cpry.append(cpql)
#             #print(cpry[count])
#             count=count+1
#     plz.append(pplz)
# for i in range(0,len(plz)) :
#     print(i+1)
#     for z in range(0,len(plz[i])):
#         print(plz[i][z])

#insert in_a_cart 담는 행위에 필요한거므로 안씀 지금
#insert ORDER_
#ORDER_ ,MALL, CUSTOMER 3개에 다 만족하는 데이터 생성 필요
#각매장마다 최소3번 주문기록존재해야함 각 매장ㅁ마다 최소 3명 고객있음 -> 그고객이그매장에서 주문하면됨 ㅇㅋ
#주문0 고객 3 주문7번이상 고객 15명 그외 주문1~10 34 =>3*0 + 7*15 + 34*(1~10)=> 105+(34~340)총 고객수 52 -> 매장당 3명 총 14개
#총 주문 150번이상, 주문할떄마다 물건 1개는 주문해야한다. 각 월별 주문 최소3회 2년갭필요

#일단 매장번호, 고객번호 매칭 후-> 주문 -> 월별 넣기
mall=['seoul','busan','daegu','incheon','guangju','daegeon','ulsan','sejong','jeju']
mall2=['genggido','gangwondo','chongchungnamdo','chungchungbokdo','jenlanamdo','jenlabokdo','gaengsangnamdo','gaengsangbokdo']
mall3=mall+mall2
mnum=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
onum=0
oql=[]
ory=[]
m=1

# print(cpry[0])
# pew=cpry[0].split()
# pp=pew[3].split(',')
# print(pp[2])
# for i in pp:
#     print(i)
# for i in  range(0,len(cpry)):
#     test=cpry[i].split()
#     tt=test[3].split(',')
#     list.append(tt[2])
#     print(list[i])

for i in range(1,23): # 주문을 안한 고객 3~5명되야함 우리 55명중4명이 주문안해서 1~51 52~55번놈이 주문안함
    oql = 'INSERT INTO ORDER_ VALUES(%d,%d,6666,7777,8888);' % (m,i)
    ory.append(oql)
    #print(ory[onum])
    onum=onum+1
    m=m+1
    if m>17: m=1

counting=[15,18,12,14,15,16,18]
rql=[]
rry=[]
onum=0
c=0
for i in range(0,len(ory)):
    if i< 5:
        for z in range(1,11) :
            rql=ory[i]
            rql=rql.replace('8888',str(onum))
            rry.append(rql)
            #print(rry[onum])
            onum=onum+1
    elif i>15:
        cccc=counting[c]
        c = c + 1
        for z in range(0,cccc) :
            rql = ory[i]
            rql = rql.replace('8888', str(onum))
            rry.append(rql)
            # print(rry[onum])
            onum = onum + 1

    else :
        for z in range(0, 1):
            rql = ory[i]
            rql = rql.replace('8888', str(onum))
            rry.append(rql)
            # print(rry[onum])
            onum = onum + 1


#각 월별 주문 최소3회 2년갭필요 2016 . 10 ~ 2018 .10
year=7
month=1
dql=[]
dry=[]

for i in range(0,len(rry)) :
    day='\"201%d-%d-%d\"'%(year,month,random.randrange(1,30))
    dql=rry[i]
    dql=dql.replace('6666',day)
    dql=dql.replace('7777',day)
    dry.append(dql)
    #print(dry[i])
    if(i%7==0): month=month+1
    if(month>12) :
        month=1
        year=year+1
olql=[]
olry=[]
olnum=0
m=1
id=1
counting=[15,18,12,14,15,16]
#insert order_list order기반
#parse procudct

plz=[]
te=[]
pplz=[]
comp=1
pysiba=[['0' for i in range(0)] for z in range(23)]
f=open('temp.txt','r')
ee=f.readlines();
for i in range(0,len(ee)) :
    #print(ee[i])
    rr=ee[i].split();
    pysiba[int(rr[1])].append(rr[0])

# for i in range(1,23) :
#     for z in range(0,len(pysiba[i])):
#         #print(i,pysiba[i][z])


for i in range(0,len(dry)) :
    if i== 10 or i==20 or i==30 or i==40 or i==50:
        id=id+1
        m = m + 1
        if m > 17: m = 1
    elif i==61 or i==61+15 or i==61+15+18 or i==61+15+18+12 or i==61+15+18+12+14 or i== 61+15+18+12+14+15 or i==61+15+18+12+14+15+16 :
        id = id + 1
        m = m + 1
        if m > 17: m = 1
    elif i>50 and i<61 :
        id = id + 1
        m = m + 1
        if m > 17: m = 1
    olql='INSERT INTO ORDER_LIST VALUES(%d,%d,%d,\'%s\');' % (m,id,i,random.choice(pysiba[id]))
    olry.append(olql)
    print(olry[olnum])
    olnum=olnum+1
f.close()