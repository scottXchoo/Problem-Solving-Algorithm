-- 코드를 입력하세요
# 경기도에 위치한
# 냉동시설 여부가 NULL이면 "N"으로 출력
# 창고 ID - 오름차순
SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IFNULL(FREEZER_YN, 'N') as FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS like "경기도%"
ORDER BY WAREHOUSE_ID