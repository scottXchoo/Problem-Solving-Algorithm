# 대여 시작일이 22년 9월에 속하는 대여 기록
# 대여 기간 30일 이상 '장기 대여'
# 그렇지 않으면 '단기 대여' as RENT_TYPE
# 대여 기록 ID desc
SELECT HISTORY_ID, CAR_ID, DATE_FORMAT(START_DATE, "%Y-%m-%d"), DATE_FORMAT(END_DATE, "%Y-%m-%d"),
    CASE
        WHEN TIMESTAMPDIFF(DAY, START_DATE, END_DATE) + 1 >= 30 then "장기 대여"
        ELSE "단기 대여"
    END as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE like "2022-09%"
ORDER BY HISTORY_ID desc