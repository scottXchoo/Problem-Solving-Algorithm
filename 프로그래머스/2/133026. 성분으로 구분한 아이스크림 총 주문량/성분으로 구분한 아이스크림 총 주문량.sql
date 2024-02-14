# FIRST_HALF & ICECREAM_INFO : FLAVOR
# ICECREAM_INFO의 FLAVOR는 FIRST_HALF의 FLAVOR의 외래키
# 상반기 동안 각 성분 타입과 타입에 대한 총주문량 as TOTAL_ORDER
# 총주문량이 작은 순서대로 - 오름차순
SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) as TOTAL_ORDER
FROM FIRST_HALF join ICECREAM_INFO using(FLAVOR)
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER