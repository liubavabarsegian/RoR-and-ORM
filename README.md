# ЛР 11. Добавление модели. ORM. Разработка БД, подключение, хранение и поиск данных.
### Модифицировать код ЛР 8 таким образом, чтобы запросы, которые были ранее выполнены, сохранялись в БД и при следующем запросе не требовали повтора вычислений.

* Сформировать модель в соответствии с потребностями хранения данных. Входные параметры являются ключами, по которым извлекается результат. :heavy_check_mark:

* Выполнить создание БД и миграцию соответствующими запросами rake. :heavy_check_mark:

* Написать тест на добавление и поиск данных с помощью модели. Проверить выполнение теста. :heavy_check_mark:

* Модифицировать код приложения таким образом, чтобы результат вычислений преобразовывался в строковый или бинарный формат (на выбор: json, xml, и пр.). Проверить через отладочную печать в консоль, что преобразование выполняется корректно. :heavy_check_mark: 

* Вставить код для сохранения данных в БД и запрос на поиск предыдущего результата вычислений.  :heavy_check_mark: 

* Добавить действие в контроллер, позволяющее определить, что хранится в БД через сериализацию в XML.  :trollface:

* Проверить, что при выполнении запроса, данные добавляются в БД. :heavy_check_mark:

* При помощи консоли сообщений Puma/Webrick определить, производится ли поиск результата предыдущего запроса в БД и не повторяются ли одни и те же вычисления. :heavy_check_mark:

* Модифицировать модель таким образом, чтобы добавление записей с одинаковыми параметрами было невозможно. :heavy_check_mark: 

* Реализовать тест модели, проверяющий невозможность повторного добавления одних и тех же результатов вычислений. :heavy_exclamation_mark:

* Реализовать функциональный тест, проверяющий, что результаты вычислений различны при различных входных параметрах. :heavy_check_mark: 

* Проверить маршруты приложения с помощью rake routes и убрать лишние. Обеспечить доступ при обращении по адресу /.:heavy_check_mark:

### Отчет должен содержать:

- ФИО, номер группы и текст задания;

- перечень и содержимое файлов, которые были изменены в процессе создания приложения.

- XML-распечатку содержимого БД (ограничить несколькими записями так, чтобы результат поместился на 1-2 страницах).:heavy_exclamation_mark:

- Примеры SQL-кода добавления и извлечения данных из БД из отладочной консоли сервера Puma/Webrick.:heavy_check_mark:
