#!/bin/bash

############################
#
# This is script 3
#
############################

# 카운트 초기화
count_front=0
count_back=0

# 결과값 초기화
file_name=$1
rm ${file_name}

# 반복 횟수
number_of_iterations=$2

# 랜덤 값들을 저장할 변수
random_values=""

for (( i=0; i<$number_of_iterations; i++ ))
do
  # 0 또는 1 랜덤으로 생성
  random_number=$(( RANDOM % 2 ))
  echo "${random_number}" >> ${file_name}

  # 카운터 증가
  if [ $random_number == 0 ]; then
    ((count_front++))
  else
    ((count_back++))
  fi
done
# 결과 출력
echo "앞면이 나온 횟수: $count_front"
echo "뒷면이 나온 횟수: $count_back"
