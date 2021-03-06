--해당 테이블은 테스트 계정에만 있기 때문에 개발자가 실수로 운영db설정을 해도 해당 sql이 정상적으로 실행되지 않으면서 이루에 등장하는 sql이 실행되지 않는다. 
-- DatabasePopulatorUtils.execute(populator, datasource)
select * from not_exists_in_prd;

--users 테이블 전체 지우기
--delete users;		  --복구가 가능(아카이브 로그를 남긴다.)
truncate table users; --복구가 불가능(아카이브 로그를 남기지 않는다.)

Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('brown','홍길동','c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44',to_date('2019/08/08','YYYY/MM/DD'),'가나다','대흥동','영민빌딩','34340',null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('cony','코니','c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44',to_date('2019/08/13','YYYY/MM/DD'),'토끼',null,null,null,'cony.png','e:\upload\2019\09\f9ea3b7d-33ff-43a7-b4f7-82f8579d45d8.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('sally','샐리','c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44',to_date('2019/08/13','YYYY/MM/DD'),'병아리',null,null,null,'sally.png','e:\upload\2019\08\7b630556-d154-4a75-9ec9-75cc3d943545.png','/upload/2019/08/sally.png');
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('james','제임스','james1234',to_date('2019/08/13','YYYY/MM/DD'),'사람',null,null,null,'james.png','e:\upload\2019\09\cfadce12-c583-4e6c-8932-98d5ca8c8ab6.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('moon','문','moon1234',to_date('2019/08/13','YYYY/MM/DD'),'달',null,null,null,'moon.png','e:\upload\2019\09\51be5ea8-7197-4d8e-9365-c4c44e8a353f.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid1','xusernm1','xuserid1pass',to_date('2019/08/03','YYYY/MM/DD'),'xuseralais1',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid2','xusernm2','xuserid2pass',to_date('2019/07/24','YYYY/MM/DD'),'xuseralais2',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid3','xusernm3','xuserid3pass',to_date('2019/07/14','YYYY/MM/DD'),'xuseralais3',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid4','xusernm4','xuserid4pass',to_date('2019/07/04','YYYY/MM/DD'),'xuseralais4',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid5','xusernm5','xuserid5pass',to_date('2019/06/24','YYYY/MM/DD'),'xuseralais5',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid6','xusernm6','xuserid6pass',to_date('2019/06/14','YYYY/MM/DD'),'xuseralais6',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid7','xusernm7','xuserid7pass',to_date('2019/06/04','YYYY/MM/DD'),'xuseralais7',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid8','xusernm8','xuserid8pass',to_date('2019/05/25','YYYY/MM/DD'),'xuseralais8',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid9','xusernm9','xuserid9pass',to_date('2019/05/15','YYYY/MM/DD'),'xuseralais9',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid10','xusernm10','xuserid10pass',to_date('2019/05/05','YYYY/MM/DD'),'xuseralais10',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid11','xusernm11','xuserid11pass',to_date('2019/04/25','YYYY/MM/DD'),'xuseralais11',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid12','xusernm12','xuserid12pass',to_date('2019/04/15','YYYY/MM/DD'),'xuseralais12',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid13','xusernm13','xuserid13pass',to_date('2019/04/05','YYYY/MM/DD'),'xuseralais13',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid14','xusernm14','xuserid14pass',to_date('2019/03/26','YYYY/MM/DD'),'xuseralais14',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid15','xusernm15','xuserid15pass',to_date('2019/03/16','YYYY/MM/DD'),'xuseralais15',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid16','xusernm16','xuserid16pass',to_date('2019/03/06','YYYY/MM/DD'),'xuseralais16',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid17','xusernm17','xuserid17pass',to_date('2019/02/24','YYYY/MM/DD'),'xuseralais17',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid18','xusernm18','xuserid18pass',to_date('2019/02/14','YYYY/MM/DD'),'xuseralais18',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid19','xusernm19','xuserid19pass',to_date('2019/02/04','YYYY/MM/DD'),'xuseralais19',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid20','xusernm20','xuserid20pass',to_date('2019/01/25','YYYY/MM/DD'),'xuseralais20',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid21','xusernm21','xuserid21pass',to_date('2019/01/15','YYYY/MM/DD'),'xuseralais21',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid22','xusernm22','xuserid22pass',to_date('2019/01/05','YYYY/MM/DD'),'xuseralais22',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid23','xusernm23','xuserid23pass',to_date('2018/12/26','YYYY/MM/DD'),'xuseralais23',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid24','xusernm24','xuserid24pass',to_date('2018/12/16','YYYY/MM/DD'),'xuseralais24',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid25','xusernm25','xuserid25pass',to_date('2018/12/06','YYYY/MM/DD'),'xuseralais25',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid26','xusernm26','xuserid26pass',to_date('2018/11/26','YYYY/MM/DD'),'xuseralais26',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid27','xusernm27','xuserid27pass',to_date('2018/11/16','YYYY/MM/DD'),'xuseralais27',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid28','xusernm28','xuserid28pass',to_date('2018/11/06','YYYY/MM/DD'),'xuseralais28',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid29','xusernm29','xuserid29pass',to_date('2018/10/27','YYYY/MM/DD'),'xuseralais29',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid30','xusernm30','xuserid30pass',to_date('2018/10/17','YYYY/MM/DD'),'xuseralais30',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid31','xusernm31','xuserid31pass',to_date('2018/10/07','YYYY/MM/DD'),'xuseralais31',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid32','xusernm32','xuserid32pass',to_date('2018/09/27','YYYY/MM/DD'),'xuseralais32',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid33','xusernm33','xuserid33pass',to_date('2018/09/17','YYYY/MM/DD'),'xuseralais33',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid34','xusernm34','xuserid34pass',to_date('2018/09/07','YYYY/MM/DD'),'xuseralais34',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid35','xusernm35','xuserid35pass',to_date('2018/08/28','YYYY/MM/DD'),'xuseralais35',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid36','xusernm36','xuserid36pass',to_date('2018/08/18','YYYY/MM/DD'),'xuseralais36',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid37','xusernm37','xuserid37pass',to_date('2018/08/08','YYYY/MM/DD'),'xuseralais37',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid38','xusernm38','xuserid38pass',to_date('2018/07/29','YYYY/MM/DD'),'xuseralais38',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid39','xusernm39','xuserid39pass',to_date('2018/07/19','YYYY/MM/DD'),'xuseralais39',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid40','xusernm40','xuserid40pass',to_date('2018/07/09','YYYY/MM/DD'),'xuseralais40',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid41','xusernm41','xuserid41pass',to_date('2018/06/29','YYYY/MM/DD'),'xuseralais41',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid42','xusernm42','xuserid42pass',to_date('2018/06/19','YYYY/MM/DD'),'xuseralais42',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid43','xusernm43','xuserid43pass',to_date('2018/06/09','YYYY/MM/DD'),'xuseralais43',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid44','xusernm44','xuserid44pass',to_date('2018/05/30','YYYY/MM/DD'),'xuseralais44',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid45','xusernm45','xuserid45pass',to_date('2018/05/20','YYYY/MM/DD'),'xuseralais45',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid46','xusernm46','xuserid46pass',to_date('2018/05/10','YYYY/MM/DD'),'xuseralais46',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid47','xusernm47','xuserid47pass',to_date('2018/04/30','YYYY/MM/DD'),'xuseralais47',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid48','xusernm48','xuserid48pass',to_date('2018/04/20','YYYY/MM/DD'),'xuseralais48',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid49','xusernm49','xuserid49pass',to_date('2018/04/10','YYYY/MM/DD'),'xuseralais49',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid50','xusernm50','xuserid50pass',to_date('2018/03/31','YYYY/MM/DD'),'xuseralais50',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid51','xusernm51','xuserid51pass',to_date('2018/03/21','YYYY/MM/DD'),'xuseralais51',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid52','xusernm52','xuserid52pass',to_date('2018/03/11','YYYY/MM/DD'),'xuseralais52',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid53','xusernm53','xuserid53pass',to_date('2018/03/01','YYYY/MM/DD'),'xuseralais53',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid54','xusernm54','xuserid54pass',to_date('2018/02/19','YYYY/MM/DD'),'xuseralais54',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid55','xusernm55','xuserid55pass',to_date('2018/02/09','YYYY/MM/DD'),'xuseralais55',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid56','xusernm56','xuserid56pass',to_date('2018/01/30','YYYY/MM/DD'),'xuseralais56',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid57','xusernm57','xuserid57pass',to_date('2018/01/20','YYYY/MM/DD'),'xuseralais57',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid58','xusernm58','xuserid58pass',to_date('2018/01/10','YYYY/MM/DD'),'xuseralais58',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid59','xusernm59','xuserid59pass',to_date('2017/12/31','YYYY/MM/DD'),'xuseralais59',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid60','xusernm60','xuserid60pass',to_date('2017/12/21','YYYY/MM/DD'),'xuseralais60',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid61','xusernm61','xuserid61pass',to_date('2017/12/11','YYYY/MM/DD'),'xuseralais61',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid62','xusernm62','xuserid62pass',to_date('2017/12/01','YYYY/MM/DD'),'xuseralais62',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid63','xusernm63','xuserid63pass',to_date('2017/11/21','YYYY/MM/DD'),'xuseralais63',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid64','xusernm64','xuserid64pass',to_date('2017/11/11','YYYY/MM/DD'),'xuseralais64',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid65','xusernm65','xuserid65pass',to_date('2017/11/01','YYYY/MM/DD'),'xuseralais65',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid66','xusernm66','xuserid66pass',to_date('2017/10/22','YYYY/MM/DD'),'xuseralais66',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid67','xusernm67','xuserid67pass',to_date('2017/10/12','YYYY/MM/DD'),'xuseralais67',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid68','xusernm68','xuserid68pass',to_date('2017/10/02','YYYY/MM/DD'),'xuseralais68',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid69','xusernm69','xuserid69pass',to_date('2017/09/22','YYYY/MM/DD'),'xuseralais69',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid70','xusernm70','xuserid70pass',to_date('2017/09/12','YYYY/MM/DD'),'xuseralais70',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid71','xusernm71','xuserid71pass',to_date('2017/09/02','YYYY/MM/DD'),'xuseralais71',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid72','xusernm72','xuserid72pass',to_date('2017/08/23','YYYY/MM/DD'),'xuseralais72',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid73','xusernm73','xuserid73pass',to_date('2017/08/13','YYYY/MM/DD'),'xuseralais73',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid74','xusernm74','xuserid74pass',to_date('2017/08/03','YYYY/MM/DD'),'xuseralais74',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid75','xusernm75','xuserid75pass',to_date('2017/07/24','YYYY/MM/DD'),'xuseralais75',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid76','xusernm76','xuserid76pass',to_date('2017/07/14','YYYY/MM/DD'),'xuseralais76',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid77','xusernm77','xuserid77pass',to_date('2017/07/04','YYYY/MM/DD'),'xuseralais77',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid78','xusernm78','xuserid78pass',to_date('2017/06/24','YYYY/MM/DD'),'xuseralais78',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid79','xusernm79','xuserid79pass',to_date('2017/06/14','YYYY/MM/DD'),'xuseralais79',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid80','xusernm80','xuserid80pass',to_date('2017/06/04','YYYY/MM/DD'),'xuseralais80',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid81','xusernm81','xuserid81pass',to_date('2017/05/25','YYYY/MM/DD'),'xuseralais81',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid82','xusernm82','xuserid82pass',to_date('2017/05/15','YYYY/MM/DD'),'xuseralais82',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid83','xusernm83','xuserid83pass',to_date('2017/05/05','YYYY/MM/DD'),'xuseralais83',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid84','xusernm84','xuserid84pass',to_date('2017/04/25','YYYY/MM/DD'),'xuseralais84',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid85','xusernm85','xuserid85pass',to_date('2017/04/15','YYYY/MM/DD'),'xuseralais85',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid86','xusernm86','xuserid86pass',to_date('2017/04/05','YYYY/MM/DD'),'xuseralais86',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid87','xusernm87','xuserid87pass',to_date('2017/03/26','YYYY/MM/DD'),'xuseralais87',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid88','xusernm88','xuserid88pass',to_date('2017/03/16','YYYY/MM/DD'),'xuseralais88',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid89','xusernm89','xuserid89pass',to_date('2017/03/06','YYYY/MM/DD'),'xuseralais89',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid90','xusernm90','xuserid90pass',to_date('2017/02/24','YYYY/MM/DD'),'xuseralais90',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid91','xusernm91','xuserid91pass',to_date('2017/02/14','YYYY/MM/DD'),'xuseralais91',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid92','xusernm92','xuserid92pass',to_date('2017/02/04','YYYY/MM/DD'),'xuseralais92',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid93','xusernm93','xuserid93pass',to_date('2017/01/25','YYYY/MM/DD'),'xuseralais93',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid94','xusernm94','xuserid94pass',to_date('2017/01/15','YYYY/MM/DD'),'xuseralais94',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid95','xusernm95','xuserid95pass',to_date('2017/01/05','YYYY/MM/DD'),'xuseralais95',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid96','xusernm96','xuserid96pass',to_date('2016/12/26','YYYY/MM/DD'),'xuseralais96',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid97','xusernm97','xuserid97pass',to_date('2016/12/16','YYYY/MM/DD'),'xuseralais97',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid98','xusernm98','xuserid98pass',to_date('2016/12/06','YYYY/MM/DD'),'xuseralais98',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid99','xusernm99','xuserid99pass',to_date('2016/11/26','YYYY/MM/DD'),'xuseralais99',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid100','xusernm100','xuserid100pass',to_date('2016/11/16','YYYY/MM/DD'),'xuseralais100',null,null,null,null,null,null);

commit;

select * from not_exists_in_prd;

truncate table postBoard;
Insert into POSTBOARD (BOARDSEQ,USERID,BOARDNM,BOARDUSAGE,BOARD_DT) values (1,'brown','게시판','N',to_date('2019/09/20','YYYY/MM/DD'));
Insert into POSTBOARD (BOARDSEQ,USERID,BOARDNM,BOARDUSAGE,BOARD_DT) values (2,'brown','게시판','Y',to_date('2019/09/20','YYYY/MM/DD'));
Insert into POSTBOARD (BOARDSEQ,USERID,BOARDNM,BOARDUSAGE,BOARD_DT) values (3,'brown','자유게시판','Y',to_date('2019/09/20','YYYY/MM/DD'));
Insert into POSTBOARD (BOARDSEQ,USERID,BOARDNM,BOARDUSAGE,BOARD_DT) values (4,'brown','QnA게시판','Y',to_date('2019/09/20','YYYY/MM/DD'));

commit;

select * from not_exists_in_prd;

truncate table post;
Insert into POST (POSTSEQ,USERID,BOARDSEQ,PARENTSEQ,POSTTITLE,POST_DT,POSTDEL,GN) values (16,'brown',4,null,'QnA게시판 첫번째',to_date('2019/09/20','YYYY/MM/DD'),'Y',16);
Insert into POST (POSTSEQ,USERID,BOARDSEQ,PARENTSEQ,POSTTITLE,POST_DT,POSTDEL,GN) values (17,'brown',4,16,'QnA게시판 첫번째 답글',to_date('2019/09/20','YYYY/MM/DD'),'Y',16);
Insert into POST (POSTSEQ,USERID,BOARDSEQ,PARENTSEQ,POSTTITLE,POST_DT,POSTDEL,GN) values (18,'brown',3,null,'자유게시판 첫번째',to_date('2019/09/20','YYYY/MM/DD'),'Y',18);
Insert into POST (POSTSEQ,USERID,BOARDSEQ,PARENTSEQ,POSTTITLE,POST_DT,POSTDEL,GN) values (19,'brown',3,18,'자유게시판 첫번재 답글',to_date('2019/09/20','YYYY/MM/DD'),'Y',18);
Insert into POST (POSTSEQ,USERID,BOARDSEQ,PARENTSEQ,POSTTITLE,POST_DT,POSTDEL,GN) values (20,'brown',4,16,'QnA게시판 두번째 답글',to_date('2019/09/20','YYYY/MM/DD'),'Y',16);
Insert into POST (POSTSEQ,USERID,BOARDSEQ,PARENTSEQ,POSTTITLE,POST_DT,POSTDEL,GN) values (21,'brown',4,17,'QnA게시판 첫번째 답글의 답글',to_date('2019/09/20','YYYY/MM/DD'),'Y',16);

commit;

select * from not_exists_in_prd;

truncate table attafile;
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (7,7,'ryan.png','e:\upload\2019\08\0bf880e0-c78c-49de-8411-d8ce5179d766.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (8,7,'sally.png','e:\upload\2019\08\a612292f-c46d-4f6d-871b-767d12f92830.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (10,8,'pom.png','alfjdlskalfkssldfj.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (12,9,'ryan.png','e:\upload\2019\08\0bf880e0-c78c-49de-8411-d8ce5179d766.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (13,9,'sally.png','e:\upload\2019\08\a612292f-c46d-4f6d-871b-767d12f92830.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (15,10,'pom.png','alfjdlskalfkssldfj.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (18,12,'ryan.png','e:\upload\2019\08\0bf880e0-c78c-49de-8411-d8ce5179d766.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (19,12,'sally.png','e:\upload\2019\08\a612292f-c46d-4f6d-871b-767d12f92830.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (21,13,'pom.png','alfjdlskalfkssldfj.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (23,14,'ryan.png','e:\upload\2019\09\b2f4d1b6-bdbb-498f-918e-6c226f6a0907.png');
Insert into ATTAFILE (ATTASEQ,POSTSEQ,ATTAFILENAME,ATTAREALFILENAME) values (24,16,'noimage.png','e:\upload\2019\09\195465dc-8058-44ed-9207-9c5d101cb51d.png');

commit;

select * from not_exists_in_prd;

truncate table comments;

Insert into COMMENTS (COMMSEQ,POSTSEQ,COMMWRITER,COMMDEL,COMMCONT,COMM_DT) values (1,14,'brown','Y','댓글입니다',to_date('2019/09/20','YYYY/MM/DD'));
Insert into COMMENTS (COMMSEQ,POSTSEQ,COMMWRITER,COMMDEL,COMMCONT,COMM_DT) values (2,16,'brown','Y','댓글입니다',to_date('2019/09/20','YYYY/MM/DD'));
Insert into COMMENTS (COMMSEQ,POSTSEQ,COMMWRITER,COMMDEL,COMMCONT,COMM_DT) values (3,17,'brown','Y','댓글입니다',to_date('2019/09/20','YYYY/MM/DD'));
Insert into COMMENTS (COMMSEQ,POSTSEQ,COMMWRITER,COMMDEL,COMMCONT,COMM_DT) values (4,18,'brown','Y','댓글입니다',to_date('2019/09/20','YYYY/MM/DD'));

commit;