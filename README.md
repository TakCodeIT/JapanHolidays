# JapanHolidays

Create a csv file of Japanese national holidays

## How to create a csv file No.1

If you can use docker-compose, simply perform the following script.

```
$ docker-compose up
```

## How to create a csv file No.2

wget、iconv、grepがある方は、下記を実行してください

```
$ wget -q -O - https://www8.cao.go.jp/chosei/shukujitsu/syukujitsu.csv | iconv -f SJIS -t UTF-8 | tr -d "\r" | grep -e "^202[23]" > holidays.csv
```



# JapanHolidays

日本の祝日csvファイルを作成します。

## 作成方法１

docker-composeを使用する場合は、下記を実行してください

```
$ docker-compose up
```

## 作成方法２

wget、iconv、grepがある方は、下記を実行してください

```
$ wget -q -O - https://www8.cao.go.jp/chosei/shukujitsu/syukujitsu.csv | iconv -f SJIS -t UTF-8 | tr -d "\r" | grep -e "^202[23]" > holidays.csv
```

## テスト方法

test.shを実行してください

```
$ ./test.sh
```