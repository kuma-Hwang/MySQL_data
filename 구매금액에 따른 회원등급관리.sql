select M.mem_id, M.mem_name, SUM(price*amount) "총구매액",
	case
		when (SUM(price*amount) >= 1500) THEN '최우수고객'
        when (SUM(price*amount) >= 1000) THEN '우수고객'
        when (SUM(price*amount) >= 1) THEN '일반고객'
        ELSE '유령고객'
	End "회원등급"
from buy B
	right outer join member M
    on B.mem_id = M.mem_id
group by m.mem_id
order by sum(price*amount) DESC;

drop procedure 