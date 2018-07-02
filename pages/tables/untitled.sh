#!/bin/sh

PID=`ps -ef |grep "/usr/tomcat/tpermission/bin/" | grep -v grep | awk '{print $2}'`

if [ -n "$PID" ];
        then
                su - root /usr/tomcat/tpermission/bin/shutdown.sh
                rsync /usr/tomcat/tpermission/webapps/permission/ /usr/tomcat/tpermission/webapps/backup/permission/  --delete --exclude=upload -av
                unzip -o /usr/rhm/update/permission.$1.war -d /usr/tomcat/tpermission/webapps/permission/

#find /usr/tomcat/tpermission/webapps/permission/ -type f -name "memcached.properties" | xargs perl -pi -e "s/139.196.148.83/memcached.rhm.com/g"
find /usr/tomcat/tpermission/webapps/permission/ -type f -name "log4j.properties" | xargs perl -pi -e "s/DEBUG/WARN/g"
find /usr/tomcat/tpermission/webapps/permission/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/dbtest.ins.rhm.com/db.ins.rhm.com/g"
find /usr/tomcat/tpermission/webapps/permission/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/db_sso_permission/db_sso_permission/g"
find /usr/tomcat/tpermission/webapps/permission/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/username=root/username=rhmroot/g"
find /usr/tomcat/tpermission/webapps/permission/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/password=root/password=Rhmadminpwd123987/g"
find /usr/tomcat/tpermission/webapps/permission/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/spring.redis.database=.*/spring.redis.database=15/g"

                /bin/kill -9 "$PID"
                sleep 5
                #/usr/tomcat/tpermission/bin/startup.sh
fi

update=`date +%Y-%m-%d_%H:%M:%S`
echo 'permission.'$1'.war date:'$update >> /usr/rhm/update/update_permission.log

su - root /usr/tomcat/tpermission/bin/startup.sh

mysqldump --default-character-set=utf8 -urhmroot -pRhmadminpwd123987 -h aliyun.db.ins.rhm.com db_sso_permission > /usr/rhm/backup/db_sso_permission_$rq.sql
mysqldump --default-character-set=utf8 -uroot -proot -h db.ins.rhm.com rhm_maochao > /usr/rhm/backup/rhm_maochao_$rq.sql




deployMaochao.sh
#!/bin/sh

PID=`ps -ef |grep "/tomcat/tmaochao/bin/" | grep -v grep | awk '{print $2}'`

if [ -n "$PID" ];
        then
                su - root /usr/tomcat/tmaochao/bin/shutdown.sh
                unzip -o /usr/rhm/update/maochao.$1.war -d /usr/tomcat/tmaochao/webapps/maochao/

                #find /usr/tomcat/tmaochao/webapps/maochao/ -type f -regex ".*\.xml\|.*\.js.*\|.*\.properties" | xargs perl -pi -e "s/www.rhm.com/test.rhm.com/g"
                find /usr/tomcat/tmaochao/webapps/maochao/ -type f -regex ".*\.xml\|.*\.js.*\|.*\.properties" | xargs perl -pi -e "s/rhm_cuntao_test/rhm_cuntao/g"

                /bin/kill -9 "$PID"
                sleep 5
                #/usr/tomcat/tmaochao/bin/startup.sh
fi

update=`date +%Y-%m-%d_%H:%M:%S`
echo 'maochao.'$1'.war date:'$update >> /usr/rhm/update/update_maochao.log

su - root /usr/tomcat/tmaochao/bin/startup.sh




chengxgMacBookPro:lib chergen$ mv antlr-2.7.7.jar ../../

chengxgMacBookPro:lib chergen$ mv commons-dbcp-1.4.jar ../../
chengxgMacBookPro:lib chergen$ mv commons-pool-1.6.jar ../../

chengxgMacBookPro:lib chergen$ mv fop-0.94.jar ../../
chengxgMacBookPro:lib chergen$ mv javassist-3.7.ga.jar ../../
chengxgMacBookPro:lib chergen$ mv ognl-2.7.3.jar ../../
chengxgMacBookPro:lib chergen$ mv proxool-0.8.3.jar ../../




#!/bin/sh

PID=`ps -ef |grep "/usr/tomcat/tdform2/bin/" | grep -v grep | awk '{print $2}'`

if [ -n "$PID" ];
        then
                su - root /usr/tomcat/tdform2/bin/shutdown.sh
                rsync /usr/tomcat/tdform2/webapps/dform/ /usr/tomcat/tdform2/webapps/backup/dform/  --delete --exclude=upload -av
                unzip -o /usr/rhm/update/dform.$1.war -d /usr/tomcat/tdform2/webapps/dform/

#find /usr/tomcat/tdform/webapps/dform/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/dbtest.ins.rhm.com/db.ins.rhm.com/g"
#find /usr/tomcat/tdform/webapps/dform/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/username=root/username=rhmroot/g"
#find /usr/tomcat/tdform/webapps/dform/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/password=root/password=Rhmadminpwd123987/g"


                /bin/kill -9 "$PID"
                sleep 5
                #/usr/tomcat/tdform/bin/startup.sh
fi

update=`date +%Y-%m-%d_%H:%M:%S`
echo 'dform.'$1'.war date:'$update >> /usr/rhm/update/update_dform2.log

su - root /usr/tomcat/tdform2/bin/startup.sh

http://vshop.runhemei.com/Wxapi/index.html?id=4015990&sid=4017845
http://vshop.runhemei.com/Wxapi/index.html?id=4015990&amp;sid=4017845
http://vshop.runhemei.com/hhr/wxapi/main.html


ssh -gN -f -R 8806:10.25.0.10:3306 -o TCPKeepAlive=yes swan@119.29.22.172
tanhu1234


SELECT m.member_id,m.openid,m.phonenumber,m.nickname from jform_wifenxiao_member m   into outfile 'all_member_info.csv';


192.168.2.90: 445
192.168.2.96: 445
192.168.2.102: 445
192.168.2.109: 445
192.168.2.111: 445
192.168.2.127: 445
192.168.2.131: 445
192.168.2.163: 445
192.168.2.164: 445
192.168.2.196: 445
192.168.2.203: 445
192.168.2.224: 445
192.168.2.225: 445
192.168.2.248: 445
192.168.2.254: 445
192.168.2.245: 445

use jeecg;

select input.*,output.payment from 
(
select brand, mth, sum(budget) as budget, sum(acutal) as acutal from (
select fee_type, brand, verification_code as mth, verification_budget as budget, verification_acutal as acutal
from jform_income_apply
where fee_type ='月度返利'
union 
select fee_type, brand, verification_code + t.typecode as mth , verification_budget/12 as budget, verification_acutal /12 as acutal 
from jform_income_apply
join t_s_type t on t.typegroupid ='8a9b78ee5c1f70d6015c2078de06005f'
where fee_type ='季度返利'
union 
select fee_type, brand, concat( left(verification_range,4), t.typecode) as mth , verification_budget/12 as budget, verification_acutal /12 as acutal 
from jform_income_apply
join t_s_type t on t.typegroupid ='8a9b78ee5bdc9425015be6eb42da0214'
where fee_type ='年度返利'
) a group by a.mth #order by mth desc limit 12 ;
) input left join 
(
select brand,verification_code as mth, sum(payment) as payment  
from jform_outcome_apply a group by a.verification_code  
) output on input.brand=output.brand and input.mth=output.mth order by input.mth desc limit 12



$ cd "/Applications/Google Chrome.app/Contents/MacOS/"
$ sudo mv "Google Chrome" Google.real
$ sudo printf '#!/bin/bash\ncd "/Applications/Google Chrome.app/Contents/MacOS"\n"/Applications/Google Chrome.app/Contents/MacOS/Google.real" --enable-internal-flash "$@"\n' > Google\ Chrome
$ sudo chmod u+x "Google Chrome"

为核销流程、费用支出流程创建主表单并设置各个流程环节的表单，支持了两个流程十几个节点的业务逻辑处理；
协助开发完成分销价格监管各流程环节，并调整了的淘宝商品的抓取逻辑，增加了抓取的灵活性；
调整村淘积分系统的订单来源为新的润合美企业店铺，并记录客户积分；
初步开发了自营积分系统，对原有积分系统进行重构支持多个公众号；




curr = `date +%Y-%m-%d_%H:%M:%S`
rsync /usr/tomcat/loggc_tmaochao.log /usr/tomcat/logs/loggc_tmaochao.log.$curr
rsync /usr/tomcat/loggc_thhr.log /usr/tomcat/logs/loggc_thhr.log.$curr


www.google-analytics.com


select input.*,output.payment from 
(
select brand, verification_code , 

sum(case when verification_type>'2' then case when fee_type ='月度返利' then goods_acutal else 0 end else case when fee_type ='月度返利' then verification_acutal else 0 end end) as acutal1, 
sum(case when verification_type>'2' then case when fee_type ='季度返利' then goods_acutal else 0 end else case when fee_type ='季度返利' then verification_acutal else 0 end end) as acutal2, 
sum(case when verification_type>'2' then case when fee_type ='年度返利' then goods_acutal else 0 end else case when fee_type ='年度返利' then verification_acutal else 0 end end) as acutal3, 
sum(case when verification_type>'2' then case when fee_type ='特殊活动补贴' then goods_acutal else 0 end else case when fee_type ='特殊活动补贴' then verification_acutal else 0 end end) as acutal4, 

sum(case when verification_type>'2' then goods_budget else verification_budget end) as budget, 
sum(case when verification_type>'2' then goods_acutal else verification_acutal end) as acutal 
from jform_income_apply
where {verification_code} and {channel} and {brand} and {fee_type}
group by verification_code  order by verification_code desc limit 12 
) input left join 
(
select brand,verification_code , sum(payment) as payment  
from jform_outcome_apply  
where {verification_code}  and {channel} and {brand} and {fee_type} 
group by verification_code  

) output on  input.verification_code=output.verification_code 

find /usr/tomcat/tmaochao/webapps/maochao/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/ding.fenxiao_chatid=.*/ding.fenxiao_chatid=chatf847c2a4c7cbaca2d844a8816cc3b5b8/g"

rsync static/fenxiao/js/productReport.js root@main2.ins.rhm.com:/usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/static/fenxiao/js/productReport.js -avn
rsync sql/FenxiaoClassificationMapper.xml root@main2.ins.rhm.com:/usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/sql/FenxiaoClassificationMapper.xml -avn
rsync com/rhm/fenxiao/service/impl/FenxiaoClassService.class root@main2.ins.rhm.com:/usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/com/rhm/fenxiao/service/impl/FenxiaoClassService.class -avn

rsync static/fenxiao/js/priceWarning.js root@main2.ins.rhm.com:/usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/static/fenxiao/js/priceWarning.js -avn


 动销率、支付金额、总sku数、在售sku数、支付买家数、详情页访客数、物流宝良品可销库存数、最近1天销量、最近3天销量、最近7天销量、最近30天销量、最近28天日均销量、在架单品总量、在售单品总量、正常新品在架量、正常新品量

http://ibos.runhemei.com/dform/userController.do?datagrid&field=id,userName,realName,brands,dingUserId,userOrgList.tsDepart.departname,userKey,createBy,createDate,updateBy,updateDate,status,


find /usr/tomcat/tmaochao/webapps/maochao/ -type f -regex ".*\.properties" | xargs perl -pi -e 's/db2.ins.rhm.com\\:3306\/jeecg/dbtest.ins.rhm.com\\:3306\/jeecg/g'

find ./ -type f -regex ".*\.properties" | xargs perl -pi -e 's/db2.ins.rhm.com\\:3306\/jeecg/dbtest.ins.rhm.com\\:3306\/jeecg/g'
find ./ -type f -regex ".*\.properties" | xargs perl -pi -e 's/db2.ins.rhm.com\\:3306\/r/dbtest.ins.rhm.com\\:3306\/r/g'
find ./ -type f -regex ".*\.properties" | xargs grep 'db2.ins.rhm.com\\:3306/jeecg'

export ZOOKEEPER_HOME=/usr/local/zookeeper-3.4.9/
export PATH=$ZOOKEEPER_HOME/bin:$PATH
export PATH

今天和曹总讨论后，流程调整：
1、流程1和流程2合并
2、流程4中，去掉经理审核
因此，三个流程分别为：
1、流程1＋2：核销计划申请：主管提交核销计划＋销售计划、经理审核、总监审核、财务经理审核、总经理审核、品牌方审核、通知（财务、副总）
2、流程3：销售计划实施：待定
3、流程4：核销报备申请：主管提交材料、财务主管审核、厂家审核、采购主管审核／财务收款、通知（财务、副总、总经理）

费用类型TP、TL等，还麻烦周炜或涛哥进行梳理。

find /usr/tomcat/tdform2/webapps/dform/ -type f -regex ".*\.xml" | xargs perl -pi -e "s/2800/2810/g"
find /usr/tomcat/thhr2/webapps/hhr/ -type f -regex ".*\.xml" | xargs perl -pi -e "s/2800/2810/g"



cd /usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/com/rhm/
rsync fenxiao/service/impl/TmallServiceImpl.class  root@main2.ins.rhm.com:/usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/com/rhm/fenxiao/service/impl/ -avn
rsync fenxiao/timerTask/OnCom*  root@main2.ins.rhm.com:/usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/com/rhm/fenxiao/timerTask/ -avn
rsync maochao/config/CommonConfig* root@main2.ins.rhm.com:/usr/tomcat/tmaochao/webapps/maochao/WEB-INF/classes/com/rhm/maochao/config/ -avn

为IBOS的任务增加搜索功能、为流程操作增加钉钉消息、增加钉钉审批功能、完善品牌核销的审批流程；
为采购同事统计了猫超库存金额、抓取了分销的情报通数据、调整了LDAP联机分析数据结构以支持后续数据统计分析的业务；
为IBOS项目集成Dubbo框架，以支持跨项目之间的服务打通；

一、IBOS项目
 1、增加正流程列表的搜索功能。
 2、增加了销售费用申请钉钉通知功能。
 3、初步设计了通用的评论功能的表结构。
 4、开发了流程各节点通用的钉钉定制化消息通知功能。
 5、流程结束时修改流程结束状态。
 6、集成了钉钉SDK。
 7、调整了核销的流程。
 8、整理了 清理流程实例数据的SQL脚本以及工具类方法。

二、猫超项目
 1、调整了导出库存金额功能。

三、数据抓取
 1、初步开发了通用的抓取HTML页面数据的功能。
 2、设置抓取配置, 抓取了情报通的一些数据。

四、数据统计分析
 1、调整了多维度数据的表结构，保留16个通用的指标字段
 2、增加单品数据维度表。
 3、调整了统计维度数据的SQL。

五、猫超/IBOS项目集成了Dubbo框架。

大宝,凡茜,露得清,舒蕾,美涛,黑人,妮维雅,片仔癀,牙博士,强生,蜂花,丝蕴
dabao,fanxi,ludeqing,shulei,meitao,heiren,niweiya,pianzaihuang,yaboshi,qiangsheng,fenghua,siyun


find /usr/tomcat/tmaochao/webapps/maochao/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/192.168.2.2/61.149.254.14/g"
find /usr/tomcat/tmaochao/webapps/maochao/ -type f -regex ".*\.properties" | xargs perl -pi -e "s/1433/1033/g"




