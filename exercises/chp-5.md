**01 다음 SOL 문장 중 문법적으로 옳은 것은?**

SELECT 이름 FROM 학생 WHERE 학년 IN (1, 2, 3, 4) ;

**02 다음 SOL문 중 문법적으로 옳은 것은?**

SELECT * FROM 학생 WHERE 학년 IS NULL ;

**03 SOL의 SELECT절에 사용할 수 없는 키워드는?**

ASC

**04 다음 SOL문에 대한 설명으로 옳지 않은 것은?**

sql
복사
편집
SELECT 학번, 성적, 학년
FROM 학생
WHERE 성적 >= 70
ORDER BY 학년, 성적 ASC
전체학생의 성적이 점수순(내림차순)으로 정렬된다.

**05 다음 SOL문 중 문법적으로 옳지 않은 것은?**

SELECT 부서이름, COUNT() FROM 부서 GROUP BY 부서번호 WHERE COUNT () > 5 ;

**06 데이터베이스에서 널(NULL) 값에 대한 설명 중 옳지 않은 것은?**

널 값에 대한 비교는 항상 참으로 간주한다.

**07 다음 중 SELECT 문의 질의를 계산하는 순서로 맞는 것은?**

FROM-WHERE-GROUP BY―HAVING―SELECT―ORDER BY

**08 SQL의 GROUP BY에 대한 설명으로 옳지 않은 것은?**

반드시 WHERE절을 사용해야 한다.

**09 다음 문장이 참이면 O, 거짓이면 X를 하시오.**

SELECT절과 FROM절은 반드시 명세해야 하는 필수절이며 나머지 절들은 생략 가능하다. (O)

검색 결과에서 중복을 제거하기 위하여 ‘SELECT DISTINCT 나이, DISTINCT 학년 FROM 학생’처럼 명세한다. (X)

원칙적으로 ORDER BY절이나 GROUP BY절 정렬(그룹핑) 기준으로 명세한 열은 SELECT절에도 명세해야 한다. (X)

COUNT(*)는 중복 행도 개수에 포함한다. (O)

집계 함수는 WHERE절에는 사용할 수 없지만 HAVING절에는 사용 가능하다. (O)

WHERE절의 LIKE 'g고’는 열 값으로 god, good, gd 등을 갖는 행들을 검색한다. (X)

NULL이 포함된 행은 대부분의 집계 함수의 결과에서 제외된다. (O)

부질의문은 보통 WHERE절에 사용되지만 SELECT, FROM절에도 사용 가능하다. (O)

**10 다음 (_____) 안에 적당한 용어를 채워 완성하시오.**
SQL

비절차적

USE

EXISTS

HAVING

AS

서브쿼리

IN

EXISTS

상관 서브쿼리

n-1

**11 학생 테이블에 대해 "1학년부터 4학년 순으로 학년별 평균 성적을 검색하라"는 SQL문을 작성한 것이다. (_____) 안에 알맞은 용어를 쓰시오.**

sql
복사
편집
SELECT ( ㄱ ), ( ㄴ )(성적)
FROM 학생
( ㄷ ) 학년
( ㄹ ) 학년 ASC

ㄱ) 학년
ㄴ) AVG
ㄷ) GROUP BY
ㄹ) ORDER BY

**12 "이 씨 성을 가진 2,3,4학년 학생들의 성적을 내림차순으로 검색하라"는 SQL문을 작성한 것이다. (_____) 안에 알맞은 용어를 쓰시오.**

sql
복사
편집
SELECT 이름, 성적
FROM 학생
WHERE 학년 ( ㄱ ) 2 AND 이름 ( ㄴ ) '이%'
( ㄷ ) 성적 ( ㄹ )

ㄱ) >=
ㄴ) LIKE
ㄷ) ORDER BY
ㄹ) DESC

**13 ‘‘1학년을 제외한 2,3,4학년별 평균성적이 80점 이상인 과목에 대해 과목별 학생수를 검색하라.’’는 SQL문을 작성한 것이다. (_____) 안에 알맞은 용어를 쓰시오.**

sql
복사
편집
SELECT 과목, COUNT(*) ( ㄱ ) 학생수
FROM 과목
WHERE 학년 ( ㄴ ) 1 
GROUP BY ( ㄷ )
( ㄹ ) AVG(성적) >= 80

ㄱ) AS
ㄴ) <>
ㄷ) 과목
ㄹ) HAVING

**14 다음 SQL문의 절과 연관되는 관계 대수 연산을 보기에서 선택하시오.**

SELECT절 -------- (ㄷ)

FROM절 -------- (ㄱ) (ㄹ)

WHERE절 -------- (ㄴ)

**15 ‘학생’ 테이블에 대해 4학년 학생들의 성적을 10점씩 증가시키는 SQL 명령문을 쓰시오.*

sql
복사
편집
UPDATE 학생
SET 성적 = 성적 + 10
WHERE 학년 = 4 ;

**16 다음 데이터베이스를 대상으로 질의 요구사항을 SQL로 표현하시오.**

sql
복사
편집
SELECT 이름 FROM 학생 WHERE 나이 IS NULL ;
sql
복사
편집
SELECT DISTINCT 나이 FROM 학생 WHERE 이름 LIKE '김%' AND 학년 = 3 ;
sql
복사
편집
SELECT 성별, AVG(나이) FROM 학생 GROUP BY 성별 ;
sql
복사
편집
SELECT 학번, 나이, 학년 FROM 학생 ORDER BY 나이 DESC, 학년 ASC ;
sql
복사
편집
SELECT 학번, 이름, 나이 FROM 학생 WHERE 성별 = 'M' AND 나이 = (SELECT MIN(나이) FROM 학생 WHERE 성별 = 'M') ;
sql
복사
편집
SELECT 나이, COUNT(*) FROM 학생 GROUP BY 나이 HAVING COUNT(*) >= 50 ;

**17 다음 데이터베이스를 대상으로 질의 요구 사항을 SQL로 표현하시오.**

sql
복사
편집
SELECT 이름, 학년 FROM 학생 WHERE 소속학과 = '컴퓨터학과' ORDER BY 학년 DESC ;
sql
복사
편집
SELECT 학번, 과목번호, (중간성적 + 기말성적) AS 총점 FROM 수강 ;
sql
복사
편집
SELECT 학생.이름, SUM(중간성적 + 기말성적) AS 총점
FROM 학생 JOIN 수강 ON 학생.학번 = 수강.학번
GROUP BY 학생.이름 ;
sql
복사
편집
SELECT 과목번호, AVG(기말성적) AS 기말평균
FROM 수강
GROUP BY 과목번호
HAVING AVG(기말성적) >= 90 ;
sql
복사
편집
SELECT 평가학점, COUNT(*) FROM 수강 GROUP BY 평가학점 ;
sql
복사
편집
SELECT 학생.이름, 과목.과목이름, 수강.평가학점
FROM 학생
JOIN 수강 ON 학생.학번 = 수강.학번
JOIN 과목 ON 수강.과목번호 = 과목.과목번호
WHERE 학생.이름 LIKE '이%' ;
sql
복사
편집
SELECT 학생.이름, 과목.과목이름
FROM 학생
JOIN 수강 ON 학생.학번 = 수강.학번
JOIN 과목 ON 수강.과목번호 = 과목.과목번호
WHERE 학생.소속학과 = '컴퓨터학과' ;
