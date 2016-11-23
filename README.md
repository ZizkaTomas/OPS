# ZPRACOVANI TEPLOTY S ODEZVOU

> Cilem je donutit pracovat usb teplotni senzor s rasberry pi, vhodne zpracovat teplotu a udaje vracet uzivateli v zatim neurcene podobe.

**Odkaz na diskuzni vlakno na [elearningu](https://elearning.tul.cz/mod/forum/discuss.php?d=944&mode=1).**

## TODO list
- [x] Init commit
- [ ] Prestat se flakat
- [x] Zpracovani dat z teplotniho senzoru
- [ ] Akce pro uzivatele (email, web)

# PRINCIP FUNGOVANI

## SOUBORY

CRONTAB - run temperature.sh with sudo rights

TEMPERATURE.SH - get temperature from usb sensor, run connect.py with temperature as param

CONNECT.PY - connect to the web, POST temperature into zpracuj.php

ZPRACUJ.PHP - connect to the MySQL db, insert temperature with id and current date
