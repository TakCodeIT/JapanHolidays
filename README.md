# JapanHolidays

Create a csv file of Japanese national holidays


# JapanHolidays

���{�̏j��csv�t�@�C�����쐬���܂��B

## �쐬���@�P

docker-compose���g�p����ꍇ�́A���L�����s���Ă�������

```
$ docker-compose up
```

## �쐬���@�Q

wget�Aiconv�Agrep��������́A���L�����s���Ă�������

```
$ wget -q -O - https://www8.cao.go.jp/chosei/shukujitsu/syukujitsu.csv | iconv -f SJIS -t UTF-8 | tr -d "\r" | grep -e "^202[23]" > holidays.csv
```

## �e�X�g���@

test.sh�����s���Ă�������

```
$ ./test.sh
```