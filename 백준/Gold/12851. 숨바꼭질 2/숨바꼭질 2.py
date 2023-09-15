import sys
from collections import deque

input = sys.stdin.readline
n, k = map(int,  input().split())

dq = deque()
dq.append(n)

visited = [0] * 100001
visited[n] = 0

ans_cnt = 0
ans_way = 0

while dq:
  x = dq.popleft()
  cnt = visited[x]
  if x == k:
    ans_cnt = cnt
    ans_way += 1
    continue

  for nx in [x-1, x+1, 2*x]:
    # 방문을 했어도 이전 지점에서 재방문 할 수 있는 경우 추가
    ## [EX] 5 -> "4 -> 3 -> 4" -> 8 -> 16 -> 17
    ### "4에서 3, 3에서 4" 이게 가능할 수 있는 조건
    if (0 <= nx < 100001) and (visited[nx] == 0 or visited[nx] == visited[x] + 1):
        dq.append(nx)
        visited[nx] = cnt + 1

print(ans_cnt)
print(ans_way)