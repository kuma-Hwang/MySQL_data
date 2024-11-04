use webdb;


CREATE table member (
	member_id char(8) not null,
    member_name char(5) not null,
    member_addr char(20) not null
);
alter table member Add primary key(member_id);


create table product(
product_name char(10) not null,
cost int not null,
make_date date,
company char(5) ,
amount int not null,
PRIMARY KEY (product_name)
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- 고유 ID
    name VARCHAR(100) NOT NULL,          -- 이름 (문자열)
    age INT NOT NULL,                     -- 나이 (숫자)
    email VARCHAR(255) UNIQUE NOT NULL,  -- 이메일 (문자열, 고유)
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP  -- 생성 날짜 (날짜)
);

select * from member;

insert into member(member_id, member_name,member_addr)
			value('tess', '나훈아','경기도 부천시 중동');
insert into member(member_id, member_name,member_addr)
			value('hero', '임영웅','서울 은평구 중산동');
insert into member(member_id, member_name,member_addr)
			value('iu', '아이유','인천 남구 주안동');
insert into member(member_id, member_name,member_addr)
			value('jyp', '박진영','경기 고양시 장항동');
            
------------------------------------------------------------------------            

select * from product;            
            
insert into product(product_name, cost, make_date, company,amount)
			value('바나나', 1500, '2021-07-01', '델몬트', 17);
insert into product(product_name, cost, make_date, company,amount)
			value('카스', 2500, '2022-03-01', 'OB', 3);
insert into product(product_name, cost, make_date, company,amount)
			value('삼각김밥', 800, '2023-09-01', 'CJ', 22);