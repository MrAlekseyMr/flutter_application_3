# Практическая работа №2

## Тема: SQLite

## Цель работы: реализовать таблицы для предметной области "Магазин продуктов" с помощью Dart (Flutter) и SQLite

## Ход работы: 

1.	Добавим необходимые зависимости в проект

![Изображение с Imgur. Пункт 1](https://i.imgur.com/eMEyrme.png)

2.	Настроим структуру проекта следующим образом

![Изображение с Imgur. Пункт 2](https://i.imgur.com/7RKPx9d.png)

3.	В папке common создадим файл data_base_request.dart и пропишем там следующий код для создания таблиц

![Изображение с Imgur. Пункт 3](https://i.imgur.com/6H1EeYc.png)

4.	Затем создадим в папке core/db файл data_base_helper.dart и пропишем в нём следующее

![Изображение с Imgur. Пункт 4](https://i.imgur.com/2jfeLxh.png)

5.	Затем создадим файлы моделей:

5.1.	Модель UserEntity:

![Изображение с Imgur. Пункт 5.1](https://i.imgur.com/yCCsQAA.png)

5.2.	Модель RoleEntity:

![Изображение с Imgur. Пункт 5.2](https://i.imgur.com/3Sbyb68.png)

5.3.	Модель ProductEntity:

![Изображение с Imgur. Пункт 5.3](https://i.imgur.com/VbtGi8P.png)

5.4.	Модель OrderEntity:

![Изображение с Imgur. Пункт 5.4](https://i.imgur.com/DEKFwqG.png)

5.5.	Модель ManufactureEntity:

![Изображение с Imgur. Пункт 5.5](https://i.imgur.com/18YxBzE.png)

5.6.	Модель FilialCountProductEntity:

![Изображение с Imgur. Пункт 5.6](https://i.imgur.com/osnLnTb.png)

5.7.	Модель FilialEntity:

![Изображение с Imgur. Пункт 5.7](https://i.imgur.com/XGJErVB.png)

5.8.	Модель CustomerEntity:

![Изображение с Imgur. Пункт 5.8](https://i.imgur.com/nb5lzAL.png)

5.9.	Модель CategoryEntity:

![Изображение с Imgur. Пункт 5.9](https://i.imgur.com/Zo0WZYu.png)

6.	И создадим файлы для работы с моделями:

6.1.	Класс User:

![Изображение с Imgur. Пункт 6.1](https://i.imgur.com/wb4zcqy.png)

6.2.	Класс Role:

![Изображение с Imgur. Пункт 6.2](https://i.imgur.com/oDIKuoL.png)

6.3.	Класс Product:

![Изображение с Imgur. Пункт 6.3](https://i.imgur.com/LhgzeDj.png)

6.4.	Класс Order:

![Изображение с Imgur. Пункт 6.4](https://i.imgur.com/20sRzLY.png)

6.5.	Класс Manufacture:

![Изображение с Imgur. Пункт 6.5](https://i.imgur.com/PUo6Lif.png)

6.6.	Класс FilialCountProduct:

![Изображение с Imgur. Пункт 6.6](https://i.imgur.com/1Fhi467.png)

6.7.	Класс Filial:

![Изображение с Imgur. Пункт 6.7](https://i.imgur.com/y204Wd2.png)

6.8.	Класс Customer:

![Изображение с Imgur. Пункт 6.8](https://i.imgur.com/aXvZ4JG.png)

6.9.	Класс Category:

![Изображение с Imgur. Пункт 6.9](https://i.imgur.com/j50XPSf.png)

7.	Результат:

![Изображение с Imgur. Пункт 7](https://i.imgur.com/hfNHu2v.png)

8. Добави строку в main.dart, чтобы инициализировать базу данных:

![Изображение с Imgur. Пункт 8](https://i.imgur.com/Iqqy4sj.png)

9. Результат вывода данных из таблиц, которые были ранее предопределены (имеется перечисление в модели):

![Изображение с Imgur. Пункт 9](https://i.imgur.com/UljLQXs.png)

## Вывод: в рамках данной практической работы были получены навыки с работай с SQLite в языке программирования Dart. Построены 9 моделей для таблиц.
