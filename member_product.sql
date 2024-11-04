use webdb;

drop table member;

create table webdb.member(
	member_id char(8) not null,
    member_name char(5) not null,
	member_addr char(20) not null,
    PRIMARY KEY (member_id)
);

ALTER TABLE member ADD PRIMARY KEY (member_id);

drop table webdb.product;

create table webdb.product(
	product_name char(4) not null,
    cost int not null,
    make_date date,
	company char(5),
    amount int not null,
    PRIMARY KEY (product_name)
);


select * from member;

insert into member(member_id, member_name, member_addr) 
       values('tess', '나훈아', '경기도 부천시 중동');
insert into member(member_id, member_name, member_addr) 
       values('hero', '임영웅', '서울 은평구 증산동');
insert into member(member_id, member_name, member_addr) 
       values('iyou', '아이유', '인천 남구 주안동');
insert into member(member_id, member_name, member_addr) 
       values('jpy', '박진영', '경기 고양시 장항동');

------------------------------------------------------------
select * from product;

insert into product(product_name, cost, make_date, company, amount) 
       values('바나나', 1500, '2021-07-01', '텔몬드', 17);
insert into product(product_name, cost, make_date, company, amount) 
       values('카스', 2500, '2022-03-01', 'OB', 3);
insert into product(product_name, cost, make_date, company, amount) 
       values('삼각김밥', 800, '2023-09-01', 'CJ', 22);

SHOW TABLES;