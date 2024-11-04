select * from member;

select addr 주소, debut_date 데뷔_일자, mem_name from member;


use webdb;
select * from market_db.member;

select * from member where mem_name = '블랙핑크';

select * from member where mem_number = 4;

select mem_id, mem_name from member where height <= 162;

select mem_name, height, mem_number from member where height >= 165 and mem_number >6;

select mem_name, height, mem_number from member where height >= 165 OR mem_number >6;

select mem_name, height from member where height >= 163 and height <= 165;

select mem_name, height from member where height between 163 and  165;

select mem_name, addr from member where addr = '경기' OR addr = '전남' OR addr = '경남';

select mem_name, addr from member where addr IN('경기', '전남', '경남');

select * from member where mem_name LIKE '우%';

select * from member where mem_name LIKE '__핑크';

select mem_id, mem_name, debut_date  from member order by debut_date;

select mem_id, mem_name, debut_date  from member order by debut_date DESC;

select mem_id, mem_name, debut_date, height  from member where height >= 164
order by height desc;

select mem_id, mem_name, debut_date, height  
from member where height >= 164
order by height desc, debut_date asc;


select * from member limit 3;

select mem_name, debut_date 
from member 
order by debut_date
limit 3;

select mem_name, height
from member 
order by height desc
limit 3, 2;


select addr From member order by addr;

select distinct addr From member;

select mem_id, sum(amount) from buy group by mem_id;

select mem_id "회원 아이디", sum(amount) "총 구매 개수"
from buy group by mem_id;

select mem_id "회원 아이디", sum(price*amount) "총 구매 금액"
from buy group by mem_id;


select AVG(amount) "평균 구매 개수" From buy;


select mem_id, AVG(amount) "평균 구매 개수" From buy
group by mem_id;


select count(*) from member;

select count(phone1) "연락처가 있는 회원" from member;

select mem_id '회원 아이디', sum(price*amount) "총 구매 금액" From buy
group by mem_id;

select mem_id '회원 아이디', sum(price*amount) "총 구매 금액" From buy
where sum(price*amount) > 1000;
group by mem_id;
-- 오류 버전

select mem_id '회원 아이디', sum(price*amount) "총 구매 금액" From buy
group by mem_id
having sum(price*amount) > 1000;

select mem_id '회원 아이디', sum(price*amount) "총 구매 금액" From buy
group by mem_id
having sum(price*amount) > 1000
order by sum(price*amount) DESC;