DROP PROCEDURE IF EXISTS ifProc1;

DELIMITER $$
CREATE PROCEDURE ifProc1()
BEGIN
	IF 100 = 100 THEN
		SELECT '100은 100과 같습니다.';
	END IF;
END $$
DELIMITER ;

CALL ifProc1();

DROP PROCEDURE IF EXISTS ifProc2;

DELIMITER $$
CREATE PROCEDURE ifProc2()
BEGIN
	DECLARE myNum INT;
    SET myNum = 200;
	IF myNum = 100 THEN
		SELECT '100입니다.';
	ELSE
		SELECT '100이 아닙니다.';
	END IF;
END $$
DELIMITER ;

CALL ifProc2();


DROP PROCEDURE IF EXISTS ifProc3;

DELIMITER $$
CREATE PROCEDURE ifProc3()
BEGIN
	DECLARE debutDate DATE; -- 데뷔일자
    DECLARE curDate DATE; -- 오늘
    DECLARE days INT; -- 활동한 일 수
    SELECT debut_date INTO debutDate
		FROM market_db.member
        WHERE mem_id = 'APN';
        
	SET curDATE = CURRENT_DATE(); -- 현재 날짜
    SET days = DATEDIFF(curDATE, debutDate); -- 날짜의 차이, 일 단위
    
    
	IF (days/365) >= 5 THEN -- 5년이 지났다면
		SELECT CONCAT ('데뷔한 지'+ days +'일이나 지났습니다. 핑순이들 축하합니다!');
	ELSE
		SELECT '데뷔한 지'+ days +'일밖에 안되었네요. 핑순이들 화이팅~';
	END IF;
END $$
DELIMITER ;

CALL ifProc3(); 


DROP PROCEDURE IF EXISTS caseProc;

DELIMITER $$
CREATE PROCEDURE caseProc()
BEGIN
	DECLARE point int; 
    DECLARE credit char; 
	SET point = 88;
    
    CASE
	  WHEN point >= 90 THEN
		 SET credit = 'A';
      WHEN point >= 80 THEN
		 SET credit = 'B';
	  WHEN point >= 70 THEN
		 SET credit = 'C';
      WHEN point >= 60 THEN
		 SET credit = 'D';
	  ELSE
		 SET credit = 'F';
	END CASE;
	SELECT CONCAT('취득점수==>', point), CONCAT('학점==>', credit);
END $$
DELIMITER ;

CALL caseProc();

DROP PROCEDURE IF EXISTS whileProc2;

DELIMITER $$
CREATE PROCEDURE whileProc2()
BEGIN
	DECLARE i int;  -- 1에서 100까지 증가할 변수 
    DECLARE hap int; -- 더한 값을 누적할 변수
	SET i = 1;
    SET hap = 0;
    
    myWhile:
    while (i <= 100) DO
		IF (i%4 = 0) THEN
           SET i = i +1;
           ITERATE myWhile; -- 지정한 label 문으로 가서 계속 진행
		END IF;
        SET hap = hap + i;
        IF (hap > 1000) THEN
			LEAVE myWhile; -- 지정한 label 문을 떠남. 즉 While 종료
		END IF;
        SET i = i + 1;
	END WHILE;

	SELECT '1부터 100까지의 합(4배수 제외), 1000 넘으면 종료 ==>', hap;
END $$
DELIMITER ;
CALL whileProc2();
