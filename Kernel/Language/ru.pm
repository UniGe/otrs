# --
# Copyright (C) 2003 Serg V Kravchenko <skraft at rgs.ru>
# Copyright (C) 2007 Andrey Feldman <afeldman at alt-lan.ru>
# Copyright (C) 2008-2009 Egor Tsilenko <bg8s at symlink.ru>
# Copyright (C) 2009 Andrey Cherepanov <cas at altlinux.ru>
# Copyright (C) 2010 Denis Kot <denis.kot at gmail.com>
# Copyright (C) 2010 Andrey A. Fedorov <2af at mail.ru>
# Copyright (C) 2010-2011 Eugene Kungurov <ekungurov83 at ya.ru>
# Copyright (C) 2010 Sergey Romanov <romanov_s at mail.ru>
# Copyright (C) 2012-2013 Vadim Goncharov <vgoncharov at mail.ru>
# Copyright (C) 2013 Alexey Gluhov <glalexnn at yandex.ru>
# Copyright (C) 2013 Andrey N. Burdin <BurdinAN at it-sakh.net>
# Copyright (C) 2013 Yuriy Kolesnikov <ynkolesnikov at gmail.com>
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::ru;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # $$START$$
    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%T, %A %D %B, %Y г.';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';
    $Self->{Completeness}        = 0.982160312805474;

    # csv separator
    $Self->{Separator} = ';';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Да',
        'No' => 'Нет',
        'yes' => 'да',
        'no' => 'нет',
        'Off' => 'Выключено',
        'off' => 'выключено',
        'On' => 'Включено',
        'on' => 'включено',
        'top' => 'В начало',
        'end' => 'В конец',
        'Done' => 'Готово',
        'Cancel' => 'Отменить',
        'Reset' => 'Отклонить',
        'more than ... ago' => 'более чем ... назад',
        'in more than ...' => 'в более чем ...',
        'within the last ...' => 'в течение последних ...',
        'within the next ...' => 'в течение следующих ...',
        'Created within the last' => 'Созданы в течение последних ...',
        'Created more than ... ago' => 'Созданы более чем ... назад',
        'Today' => 'Сегодня',
        'Tomorrow' => 'Завтра',
        'Next week' => 'Следующая неделя',
        'day' => 'день',
        'days' => 'дней',
        'day(s)' => 'день(дней)',
        'd' => 'дн',
        'hour' => 'час',
        'hours' => 'часов',
        'hour(s)' => 'час(ов)',
        'Hours' => 'Часы',
        'h' => 'ч',
        'minute' => 'минута',
        'minutes' => 'минут',
        'minute(s)' => 'минут(а)',
        'Minutes' => 'Минуты',
        'm' => 'мин',
        'month' => 'месяц',
        'months' => 'месяцев',
        'month(s)' => 'месяц(ев)',
        'week' => 'неделя',
        'week(s)' => 'неделя(ль)',
        'quarter' => 'квартал',
        'quarter(s)' => 'квартал(ы)',
        'half-year' => 'полугодие',
        'half-year(s)' => 'полугодие(я)',
        'year' => 'год',
        'years' => 'лет',
        'year(s)' => 'год(лет)',
        'second(s)' => 'секунд(а)',
        'seconds' => 'секунд',
        'second' => 'секунда',
        's' => 'с',
        'Time unit' => 'Единица времени',
        'wrote' => 'написал(а)',
        'Message' => 'Сообщение',
        'Error' => 'Ошибка',
        'Bug Report' => 'Отчет об ошибках',
        'Attention' => 'Внимание',
        'Warning' => 'Предупреждение',
        'Module' => 'Модуль',
        'Modulefile' => 'Файл модуля',
        'Subfunction' => 'Подфункция',
        'Line' => 'Строка',
        'Setting' => 'Параметр',
        'Settings' => 'Параметры',
        'Example' => 'Пример',
        'Examples' => 'Примеры',
        'valid' => 'действительный',
        'Valid' => 'Действительный',
        'invalid' => 'недействительный',
        'Invalid' => 'Недействительный',
        '* invalid' => '* недействительный',
        'invalid-temporarily' => 'временно недействительный',
        ' 2 minutes' => ' 2 минуты',
        ' 5 minutes' => ' 5 минут',
        ' 7 minutes' => ' 7 минут',
        '10 minutes' => '10 минут',
        '15 minutes' => '15 минут',
        'Mr.' => 'Г-н',
        'Mrs.' => 'Г-жа',
        'Next' => 'Вперед',
        'Back' => 'Назад',
        'Next...' => 'Вперед...',
        '...Back' => '...Назад',
        '-none-' => '-нет-',
        'none' => 'нет',
        'none!' => 'нет!',
        'none - answered' => 'нет — отвечен',
        'please do not edit!' => 'Не редактировать!',
        'Need Action' => 'Требуется действие',
        'AddLink' => 'Добавить ссылку',
        'Link' => 'Связать',
        'Unlink' => 'Отвязать',
        'Linked' => 'Связан',
        'Link (Normal)' => 'Связь (обычная)',
        'Link (Parent)' => 'Связь (родитель)',
        'Link (Child)' => 'Связь (потомок)',
        'Normal' => 'Обычная',
        'Parent' => 'Родитель',
        'Child' => 'Потомок',
        'Hit' => 'Соответствует',
        'Hits' => 'Соответствует',
        'Text' => 'Текст',
        'Standard' => 'Стандартный',
        'Lite' => 'Облегченный',
        'User' => 'Пользователь',
        'Username' => 'Логин',
        'Language' => 'Язык',
        'Languages' => 'Языки',
        'Password' => 'Пароль',
        'Preferences' => 'Настройки',
        'Salutation' => 'Приветствие',
        'Salutations' => 'Приветствия',
        'Signature' => 'Подпись',
        'Signatures' => 'Подписи',
        'Customer' => 'Клиент',
        'CustomerID' => 'ID компании',
        'CustomerIDs' => 'ID клиентов',
        'customer' => 'клиент',
        'agent' => 'агент',
        'system' => 'система',
        'Customer Info' => 'Информация о клиенте',
        'Customer Information' => 'Информация о клиенте',
        'Customer Companies' => 'Компании клиента',
        'Company' => 'Компания',
        'go!' => 'ОК!',
        'go' => 'ОК',
        'All' => 'Все',
        'all' => 'все',
        'Sorry' => 'Извините',
        'update!' => 'обновить!',
        'update' => 'обновить',
        'Update' => 'Обновить',
        'Updated!' => 'Обновлено!',
        'submit!' => 'отправить!',
        'submit' => 'отправить',
        'Submit' => 'Отправить',
        'change!' => 'Изменить!',
        'Change' => 'Изменение',
        'change' => 'изменение',
        'click here' => 'нажмите здесь',
        'Comment' => 'Комментарий',
        'Invalid Option!' => 'Неверный параметр!',
        'Invalid time!' => 'Неверное время!',
        'Invalid date!' => 'Неверная дата!',
        'Name' => 'Имя',
        'Group' => 'Группа',
        'Description' => 'Описание',
        'description' => 'описание',
        'Theme' => 'Тема',
        'Created' => 'Создан/а',
        'Created by' => 'Создал',
        'Changed' => 'Изменен',
        'Changed by' => 'Изменил',
        'Search' => 'Поиск',
        'and' => 'и',
        'between' => 'между',
        'before/after' => 'до/после',
        'Fulltext Search' => 'Полнотекстовый поиск',
        'Data' => 'Дата',
        'Options' => 'Настройки',
        'Title' => 'Заголовок',
        'Item' => 'пункт',
        'Delete' => 'Удалить',
        'Edit' => 'Редактировать',
        'View' => 'Просмотр',
        'Number' => 'Число',
        'System' => 'Система',
        'Contact' => 'Контакт',
        'Contacts' => 'Контакты',
        'Export' => 'Экспорт',
        'Up' => 'Вверх',
        'Down' => 'Вниз',
        'Add' => 'Добавить',
        'Added!' => 'Добавлено!',
        'Category' => 'Категория',
        'Viewer' => 'Средство просмотра',
        'Expand' => 'Развернуть',
        'Small' => 'Маленький',
        'Medium' => 'Средний',
        'Large' => 'Большой',
        'Date picker' => 'Выбор даты',
        'Show Tree Selection' => 'Показать в виде дерева',
        'The field content is too long!' => 'Содержимое поля слишком длинное!',
        'Maximum size is %s characters.' => 'Максимальный размер %s символов',
        'This field is required or' => 'Это поле обязательно.',
        'New message' => 'Новое сообщение',
        'New message!' => 'Новое сообщение!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Ответьте на эти заявки для перехода к обычному просмотру очереди !',
        'You have %s new message(s)!' => 'Количество новых сообщений: %s',
        'You have %s reminder ticket(s)!' => 'Количество напоминаний: %s!',
        'The recommended charset for your language is %s!' => 'Рекомендуемая кодировка для вашего языка: %s !',
        'Change your password.' => 'Измените пароль.',
        'Please activate %s first!' => 'Пожалуйста, сначала активируйте %s!',
        'No suggestions' => 'Нет предложений',
        'Word' => 'Слово',
        'Ignore' => 'Игнорировать',
        'replace with' => 'заменить на',
        'There is no account with that login name.' => 'Нет учетной записи с таким именем пользователя.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            'Ошибка идентификации! Указано неправильное имя или пароль!',
        'There is no acount with that user name.' => 'Аккаунта с таким именем пользователя нет',
        'Please contact your administrator' => 'Свяжитесь с администратором',
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact your administrator.' =>
            'Аутентификация успешна, однако ни одной записи для клиента не обнаружено в используемой/ых базе клиентов. Обратитесь к вашему администратору.',
        'This e-mail address already exists. Please log in or reset your password.' =>
            'Такой адрес электронной почты уже существует. Пожалуйста, войдите, или сбросьте свой пароль.',
        'Logout' => 'Выход',
        'Logout successful. Thank you for using %s!' => 'Вы успешно вышли из системы. Благодарим за использование %s !',
        'Feature not active!' => 'Функция не активирована!',
        'Agent updated!' => 'Агент обновлен!',
        'Database Selection' => 'Выбор базы данных',
        'Create Database' => 'Создать базу данных',
        'System Settings' => 'Системные параметры',
        'Mail Configuration' => 'Конфигурация почты',
        'Finished' => 'Закончено',
        'Install OTRS' => 'Установите OTRS',
        'Intro' => 'Интро',
        'License' => 'Лицензия',
        'Database' => 'База данных',
        'Configure Mail' => 'Конфигурировать почту',
        'Database deleted.' => 'База данных удалена.',
        'Enter the password for the administrative database user.' => 'Введите пароль администратора базы данных',
        'Enter the password for the database user.' => 'Введите пароль пользователя  базы данных',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty.' =>
            'Если вы установили root пароль для базы данных, введите его здесь, иначе, оставьте поле пустым.',
        'Database already contains data - it should be empty!' => 'В базе данных уже есть данные - она должна быть пустой.',
        'Login is needed!' => 'Необходимо ввести логин',
        'It is currently not possible to login due to a scheduled system maintenance.' =>
            'Невозможно подключиться к системе, т.к. она находится на профилактике/системном обслуживании.',
        'Password is needed!' => 'Необходимо ввести пароль',
        'Take this Customer' => 'Выбрать этого клиента',
        'Take this User' => 'Выбрать этого пользователя',
        'possible' => 'возможно',
        'reject' => 'отвергнуть',
        'reverse' => 'вернуть',
        'Facility' => 'Объект',
        'Time Zone' => 'Часовой пояс',
        'Pending till' => 'В ожидании еще',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            'Не используйте учетную запись суперпользователя для работы с OTRS! Создайте новых Агентов и работайте с ними.',
        'Dispatching by email To: field.' => 'Перенаправление по заголовку To: электронного письма',
        'Dispatching by selected Queue.' => 'Перенаправление по выбранной очереди',
        'No entry found!' => 'Запись не найдена',
        'Session invalid. Please log in again.' => 'Ошибка сессии. Пожалуйста авторизуйтесь вновь.',
        'Session has timed out. Please log in again.' => 'Сеанс завершен. Попробуйте войти заново.',
        'Session limit reached! Please try again later.' => 'Срок жизни сессии прошел. Пожалуйста попробуйте еще раз.',
        'No Permission!' => 'Нет прав доступа!',
        '(Click here to add)' => '(нажмите сюда чтобы добавить)',
        'Preview' => 'Предварительный просмотр',
        'Package not correctly deployed! Please reinstall the package.' =>
            'Пакет установлен некорректно! Вы должны переустановить пакет!',
        '%s is not writable!' => '%s не доступен для записи!',
        'Cannot create %s!' => 'Невозможно создать %s!',
        'Check to activate this date' => 'Отметьте, чтобы активировать эту дату',
        'You have Out of Office enabled, would you like to disable it?' =>
            'Вы включали Отсутствие в офисе, хотите отключить?',
        'News about OTRS releases!' => 'Новости о новых релизах OTRS!',
        'Customer %s added' => 'Клиент %s добавлен',
        'Role added!' => 'Роль добавлена!',
        'Role updated!' => 'Роль обновлена!',
        'Attachment added!' => 'Вложение добавлено!',
        'Attachment updated!' => 'Вложение обновлено!',
        'Response added!' => 'Ответ добавлен!',
        'Response updated!' => 'Ответ обновлен!',
        'Group updated!' => 'Группа обновлена!',
        'Queue added!' => 'Очередь добавлена!',
        'Queue updated!' => 'Очередь обновлена!',
        'State added!' => 'Состояние добавлено!',
        'State updated!' => 'Состояние обновлено',
        'Type added!' => 'Тип добавлен!',
        'Type updated!' => 'Тип обновлен!',
        'Customer updated!' => 'Клиент обновлен!',
        'Customer company added!' => 'Компания клиента добавлена!',
        'Customer company updated!' => 'Компания клиента обновлена!',
        'Note: Company is invalid!' => 'Замечание: Компания указана неверно!',
        'Mail account added!' => 'Учетная запись почты добавлена!',
        'Mail account updated!' => 'Учетная запись почты обновлена!',
        'System e-mail address added!' => 'Системный адрес электронной почты добавлен!',
        'System e-mail address updated!' => 'Системный адрес электронной почты обновлен!',
        'Contract' => 'Контракт',
        'Online Customer: %s' => 'Клиент онлайн: %s',
        'Online Agent: %s' => 'Агент онлайн: %s',
        'Calendar' => 'Календарь',
        'File' => 'Файл',
        'Filename' => 'Имя файла',
        'Type' => 'Тип',
        'Size' => 'Размер',
        'Upload' => 'Загрузить',
        'Directory' => 'Каталог',
        'Signed' => 'Подписано',
        'Sign' => 'Подписать',
        'Crypted' => 'Зашифровано',
        'Crypt' => 'Шифрование',
        'PGP' => 'PGP',
        'PGP Key' => 'PGP ключ',
        'PGP Keys' => 'PGP ключи',
        'S/MIME' => 'S/MIME',
        'S/MIME Certificate' => 'Сертификат S/MIME',
        'S/MIME Certificates' => 'Сертификаты S/MIME',
        'Office' => 'Офис',
        'Phone' => 'Телефон',
        'Fax' => 'Факс',
        'Mobile' => 'Мобильный телефон',
        'Zip' => 'Индекс',
        'City' => 'Город',
        'Street' => 'Улица',
        'Country' => 'Страна',
        'Location' => 'Местоположение',
        'installed' => 'установлено',
        'uninstalled' => 'деинсталлировано',
        'Security Note: You should activate %s because application is already running!' =>
            'Предупреждение о безопасности: вы должны активировать «%s», так как приложение уже запущено!',
        'Unable to parse repository index document.' => 'Не получилось разобрать формат индексного файла репозитория.',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            'Нет пакетов для вашей версии фреймворка в этом репозитории, он содержит пакеты для других версий фреймворка.',
        'No packages, or no new packages, found in selected repository.' =>
            'Нет пакетов или новых пакетов в выбранном репозитории.',
        'Edit the system configuration settings.' => 'Редактировать настройки конфигурации системы',
        'ACL information from database is not in sync with the system configuration, please deploy all ACLs.' =>
            'ACL в базе данных не синхронизирована с ситемой. Выполните синхронизацию для всех ACL.',
        'printed at' => 'напечатано в',
        'Loading...' => 'Загрузка...',
        'Dear Mr. %s,' => 'Уважаемый %s,',
        'Dear Mrs. %s,' => 'Уважаемая %s,',
        'Dear %s,' => 'Уважаемый/-ая %s,',
        'Hello %s,' => 'Здравствуйте, %s.',
        'This email address is not allowed to register. Please contact support staff.' =>
            'Этот адрес почты не разрешен для регистрации. Обратитесь к персоналу поддержки',
        'New account created. Sent login information to %s. Please check your email.' =>
            'Новая учетная запись создана. Информация о логине отправлена на %s. Проверьте свою почту.',
        'Please press Back and try again.' => 'Нажмите «Назад» и попробуйте еще раз',
        'Sent password reset instructions. Please check your email.' => 'Отправлены инструкции по сбросу пароля. Проверьте свою почту.',
        'Sent new password to %s. Please check your email.' => 'Новый пароль выслан на %s. Проверьте свою почту.',
        'Upcoming Events' => 'Ближайшие события',
        'Event' => 'Событие',
        'Events' => 'События',
        'Invalid Token!' => 'Неверный токен !',
        'more' => 'далее',
        'Collapse' => 'Свернуть',
        'Shown' => 'Показано',
        'Shown customer users' => 'Отображенные клиенты',
        'News' => 'Новости',
        'Product News' => 'Новости о продукте',
        'OTRS News' => 'Новости OTRS',
        '7 Day Stats' => 'Статистика за 7 дней',
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            'Управление Процесами. Информация из базы данных не синхронизирована с системой, выполните синхронизацию всех процессов.',
        'Package not verified by the OTRS Group! It is recommended not to use this package.' =>
            'Пакет не верифицирован OTRS Group! Не рекомендуем его использовать',
        '<br>If you continue to install this package, the following issues may occur!<br><br>&nbsp;-Security problems<br>&nbsp;-Stability problems<br>&nbsp;-Performance problems<br><br>Please note that issues that are caused by working with this package are not covered by OTRS service contracts!<br><br>' =>
            '<br>Если вы продолжите установку этого пакета, могут возникнуть следующие проблемы!<br><br>&nbsp;-Проблемы безопасности<br>&nbsp;-Стабильности<br>&nbsp;-Производительности<br><br>Помните, что возникшие при работе с таким пакетом проблемы не решаются в рамках сервисного контракта OTRS!<br><br>',
        'Mark' => 'Пометить',
        'Unmark' => 'Снять пометку',
        'Bold' => 'Полужирный',
        'Italic' => 'Курсив',
        'Underline' => 'Подчеркнутый',
        'Font Color' => 'Цвет текста',
        'Background Color' => 'Цвет фона',
        'Remove Formatting' => 'Удалить форматирование',
        'Show/Hide Hidden Elements' => 'Показать/Скрыть скрытые элементы',
        'Align Left' => 'По левому краю',
        'Align Center' => 'По центру',
        'Align Right' => 'По правому краю',
        'Justify' => 'По ширине',
        'Header' => 'Заголовок',
        'Indent' => 'Увеличить отступ',
        'Outdent' => 'Уменьшить отступ',
        'Create an Unordered List' => 'Создать ненумерованный список',
        'Create an Ordered List' => 'Создать нумерованный список',
        'HTML Link' => 'Ссылка HTML',
        'Insert Image' => 'Вставить изображение',
        'CTRL' => 'Ctrl',
        'SHIFT' => 'Shift',
        'Undo' => 'Отменить',
        'Redo' => 'Повторить',
        'OTRS Daemon is not running.' => 'Служба OTRS не запущена',
        'Can\'t contact registration server. Please try again later.' => 'Не удалось соединиться с сервером, попробуйте повторить позже.',
        'No content received from registration server. Please try again later.' =>
            'Данные не получены с сервера регистрации. Повторите запрос позже.',
        'Problems processing server result. Please try again later.' => 'Проблемы, обрабатывающие результат сервера. Попробуйте еще раз позже.',
        'Username and password do not match. Please try again.' => 'Имя пользователя и пароль не соовпадают. Попробуйте еще раз.',
        'The selected process is invalid!' => 'Выбранный процесс - неправильный!',
        'Upgrade to %s now!' => 'Обновите до %s !',
        '%s Go to the upgrade center %s' => '%s Перейдите в центр обновления %s',
        'The license for your %s is about to expire. Please make contact with %s to renew your contract!' =>
            'Лицензия на ваш продукт %s истекает. Свяжитесь, пожалуйста с %s для обновления контракта!',
        'An update for your %s is available, but there is a conflict with your framework version! Please update your framework first!' =>
            'Обновление для вашего продукта %s доступна, но оно не соответствует версии вашего основного продукта! Обновите его сначала!',
        'Your system was successfully upgraded to %s.' => 'Ваша система успешно обновлена до %s.',
        'There was a problem during the upgrade to %s.' => 'Обнаружены проблемы при обновлении до %s.',
        '%s was correctly reinstalled.' => '%s была корректно переустановлена.',
        'There was a problem reinstalling %s.' => 'Обнаружены проблемы при переустановке %s.',
        'Your %s was successfully updated.' => 'Ваша %s была успешно обновлена.',
        'There was a problem during the upgrade of %s.' => 'Обнаружены проблемы при обновлении %s.',
        '%s was correctly uninstalled.' => '%s была корректно деинсталлирована.',
        'There was a problem uninstalling %s.' => 'Обнаружены проблемы при деинсталляции %s. ',

        # Template: AAACalendar
        'New Year\'s Day' => 'Новый Год',
        'International Workers\' Day' => 'День международной солидарности трудящихся',
        'Christmas Eve' => 'Сочельник',
        'First Christmas Day' => 'Первый день Рождества',
        'Second Christmas Day' => 'Второй день Рождества',
        'New Year\'s Eve' => 'Канун Нового Года',

        # Template: AAAGenericInterface
        'OTRS as requester' => 'OTRS как запрашивающий',
        'OTRS as provider' => 'OTRS как провайдер',
        'Webservice "%s" created!' => 'Вебсервис «%s» создан!',
        'Webservice "%s" updated!' => 'Вебсервис «%s» обновлен!',

        # Template: AAAMonth
        'Jan' => 'Янв',
        'Feb' => 'Фев',
        'Mar' => 'Мар',
        'Apr' => 'Апр',
        'May' => 'Май',
        'Jun' => 'Июн',
        'Jul' => 'Июл',
        'Aug' => 'Авг',
        'Sep' => 'Сен',
        'Oct' => 'Окт',
        'Nov' => 'Ноя',
        'Dec' => 'Дек',
        'January' => 'Январь',
        'February' => 'Февраль',
        'March' => 'Март',
        'April' => 'Апрель',
        'May_long' => 'Май',
        'June' => 'Июнь',
        'July' => 'Июль',
        'August' => 'Август',
        'September' => 'Сентябрь',
        'October' => 'Октябрь',
        'November' => 'Ноябрь',
        'December' => 'Декабрь',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Настройки успешно обновлены!',
        'User Profile' => 'Профиль пользователя',
        'Email Settings' => 'Настройки почты',
        'Other Settings' => 'Прочие настройки',
        'Notification Settings' => 'Настройка Уведомлений',
        'Change Password' => 'Сменить пароль',
        'Current password' => 'Текущий пароль',
        'New password' => 'Новый пароль',
        'Verify password' => 'Подтвердите пароль',
        'Spelling Dictionary' => 'Словарь правописания',
        'Default spelling dictionary' => 'Словарь по умолчанию',
        'Max. shown Tickets a page in Overview.' => 'Максимальное количество заявок при показе очереди',
        'The current password is not correct. Please try again!' => 'Пароль не верен. Пожалуйста, попробуйте снова!',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'Невозможно обновить пароль. Новые пароли не совпадают. Пожалуйста, попробуйте снова!',
        'Can\'t update password, it contains invalid characters!' => 'Невозможно обновить пароль, т.к. он содержит запрещенные символы!',
        'Can\'t update password, it must be at least %s characters long!' =>
            'Невозможно обновить пароль, т.к. его длина должна быть не менее %s символов!',
        'Can\'t update password, it must contain at least 2 lowercase and 2 uppercase characters!' =>
            'Невозможно обновить пароль, т.к. он должен содержать не менее 2-х строчных и 2-х заглавных символов!',
        'Can\'t update password, it must contain at least 1 digit!' => 'Невозможно обновить пароль, т.к. он должен содержать не менее 1-й цифры!',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'Невозможно обновить пароль, т.к. он должен содержать не менее 2 букв!',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'Невозможно обновить пароль, т.к. он уже использовался. Пожалуйста, выберите другой.',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            'Выберите символ разделителя, используемый в файлах CSV (статистика и поиски). Если вы не выберете его здесь, будет использован разделитель по умолчанию для вашего языка.',
        'CSV Separator' => 'Разделитель CSV',

        # Template: AAATicket
        'Status View' => 'Просмотр статуса',
        'Service View' => 'Обзор сервисов',
        'Bulk' => 'Массовое действие',
        'Lock' => 'Блокировать',
        'Unlock' => 'Разблокировать',
        'History' => 'История',
        'Zoom' => 'Подробно',
        'Age' => 'Возраст',
        'Bounce' => 'Перенаправить',
        'Forward' => 'Переслать',
        'From' => 'Отправитель',
        'To' => 'Получатель',
        'Cc' => 'Копия',
        'Bcc' => 'Скрытая копия',
        'Subject' => 'Тема',
        'Move' => 'Переместить',
        'Queue' => 'Очередь',
        'Queues' => 'Очереди',
        'Priority' => 'Приоритет',
        'Priorities' => 'Приоритеты',
        'Priority Update' => 'Изменение приоритета',
        'Priority added!' => 'Приоритет добавлен!',
        'Priority updated!' => 'Приоритет обновлен!',
        'Signature added!' => 'Подпись добавлена!',
        'Signature updated!' => 'Подпись обновлена!',
        'SLA' => 'Уровень обслуживания',
        'Service Level Agreement' => 'Соглашение об Уровне Сервиса',
        'Service Level Agreements' => 'Соглашения об Уровне Сервиса',
        'Service' => 'Сервис',
        'Services' => 'Сервисы',
        'State' => 'Состояние',
        'States' => 'Состояния',
        'Status' => 'Статус',
        'Statuses' => 'Статусы',
        'Ticket Type' => 'Тип заявки',
        'Ticket Types' => 'Типы заявок',
        'Compose' => 'Создать',
        'Pending' => 'Напоминание',
        'Owner' => 'Владелец',
        'Owner Update' => 'Новый владелец',
        'Responsible' => 'Ответственный',
        'Responsible Update' => 'Новый ответственный',
        'Sender' => 'Отправитель',
        'Article' => 'Сообщение',
        'Ticket' => 'Заявка',
        'Createtime' => 'Время создания',
        'plain' => 'Обычный',
        'Email' => 'Email',
        'email' => 'email',
        'Close' => 'Закрыть',
        'Action' => 'Действие',
        'Attachment' => 'Прикрепленный файл',
        'Attachments' => 'Прикрепленные файлы',
        'This message was written in a character set other than your own.' =>
            'Это сообщение написано в кодировке. отличной от вашей.',
        'If it is not displayed correctly,' => 'Если текст отображается некорректно,',
        'This is a' => 'Это',
        'to open it in a new window.' => 'открыть в новом окне.',
        'This is a HTML email. Click here to show it.' => 'Этот электронное письмо в формате HTML. Нажмите здесь для просмотра',
        'Free Fields' => 'Свободные поля',
        'Merge' => 'Объединить',
        'merged' => 'объединенные',
        'closed successful' => 'закрыта успешно',
        'closed unsuccessful' => 'закрыта неуспешно',
        'Locked Tickets Total' => 'Заблокированные заявки: Всего',
        'Locked Tickets Reminder Reached' => 'Заблокированные заявки: Время напоминания наступило',
        'Locked Tickets New' => 'Заблокированные заявки: Новые',
        'Responsible Tickets Total' => 'Ответственные заявки: Всего',
        'Responsible Tickets New' => 'Ответственные заявки: Новые',
        'Responsible Tickets Reminder Reached' => 'Ответственные заявки: Напоминание истекло',
        'Watched Tickets Total' => 'Наблюдаемые заявки: Всего',
        'Watched Tickets New' => 'Наблюдаемые заявки: Новые',
        'Watched Tickets Reminder Reached' => 'Наблюдаемые заявки: Напоминание истекло',
        'All tickets' => 'Все заявки',
        'Available tickets' => 'Доступные заявки',
        'Escalation' => 'Эскалация',
        'last-search' => 'последний поиск',
        'QueueView' => 'Просмотр очереди',
        'Ticket Escalation View' => 'Просмотр эскалированных заявок',
        'Message from' => 'Сообщение от',
        'End message' => 'Конец сообщения',
        'Forwarded message from' => 'Пересылаемое сообщение от',
        'End forwarded message' => 'Конец пересылаемого сообщения',
        'Bounce Article to a different mail address' => 'Перенаправить сообщение на другой почтовый адрес',
        'Reply to note' => 'Ответить на сообщение',
        'new' => 'новая',
        'open' => 'открыта',
        'Open' => 'Открытые',
        'Open tickets' => 'Открытые заявки',
        'closed' => 'закрыта',
        'Closed' => 'Закрытые',
        'Closed tickets' => 'Закрытые заявки',
        'removed' => 'удаленная',
        'pending reminder' => 'ожидает напоминания',
        'pending auto' => 'ожидает автозакрытия',
        'pending auto close+' => 'ожидает автозакрытия(+)',
        'pending auto close-' => 'ожидает автозакрытия(-)',
        'email-external' => 'внешний email',
        'email-internal' => 'внутренний email',
        'note-external' => 'внешняя заметка',
        'note-internal' => 'внутренняя заметка',
        'note-report' => 'Заметка-отчет',
        'phone' => 'звонок',
        'sms' => 'SMS',
        'webrequest' => 'веб-заявка',
        'lock' => 'блокировать',
        'unlock' => 'разблокировать',
        'very low' => 'самый низкий',
        'low' => 'низкий',
        'normal' => 'обычный',
        'high' => 'высокий',
        'very high' => 'безотлагательный',
        '1 very low' => '1 самый низкий',
        '2 low' => '2 низкий',
        '3 normal' => '3 обычный',
        '4 high' => '4 высокий',
        '5 very high' => '5 безотлагательный',
        'auto follow up' => 'авто-отклик',
        'auto reject' => 'авто-отказ',
        'auto remove' => 'авто-удаление',
        'auto reply' => 'авто-ответ',
        'auto reply/new ticket' => 'авто-ответ/новая заявка',
        'Create' => 'Создать',
        'Answer' => 'Ответ',
        'Phone call' => 'Телефонный звонок',
        'Ticket "%s" created!' => 'Создана заявка «%s»!',
        'Ticket Number' => 'Номер заявки',
        'Ticket Object' => 'Объект заявки',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Заявки с номером «%s» не существует, невозможно связать с нею!',
        'You don\'t have write access to this ticket.' => 'У вас нет прав на запись в эту заявку.',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            'Извините, для выполнения этого действия вам необходимо быть владельцем заявки.',
        'Please change the owner first.' => 'Пожалуйста, сначала измените владельца',
        'Ticket selected.' => 'Заявка выбрана.',
        'Ticket is locked by another agent.' => 'Заявка заблокирована другим агентом.',
        'Ticket locked.' => 'Заявка заблокирована.',
        'Don\'t show closed Tickets' => 'Не показывать закрытые заявки',
        'Show closed Tickets' => 'Показывать закрытые заявки',
        'New Article' => 'Новое сообщение',
        'Unread article(s) available' => 'Доступны непрочтенные сообщения',
        'Remove from list of watched tickets' => 'Удалить из списка наблюдаемых заявок',
        'Add to list of watched tickets' => 'Добавить в список наблюдаемых заявок',
        'Email-Ticket' => 'Заявка по почте',
        'Create new Email Ticket' => 'Создать заявку по email',
        'Phone-Ticket' => 'Заявка по телефону',
        'Search Tickets' => 'Поиск заявок',
        'Customer Realname' => 'ФИО клиента',
        'Customer History' => 'История клиента',
        'Edit Customer Users' => 'Редактировать клиентов',
        'Edit Customer' => 'Редактировать компанию',
        'Bulk Action' => 'Массовое действие',
        'Bulk Actions on Tickets' => 'Массовое действие над заявками',
        'Send Email and create a new Ticket' => 'Отправить письмо и создать новую заявку',
        'Create new Email Ticket and send this out (Outbound)' => 'Создать новую заявку email и отправить ее',
        'Create new Phone Ticket (Inbound)' => 'Создать новую телефонную заявку',
        'Address %s replaced with registered customer address.' => 'Адрес %s заменен зарегистрированным адресом клиента',
        'Customer user automatically added in Cc.' => 'Клиент автоматически добавлен в поле Сс',
        'Overview of all open Tickets' => 'Обзор всех открытых заявок',
        'Locked Tickets' => 'Заблокированные заявки',
        'My Locked Tickets' => 'Мои заблокированные заявки',
        'My Watched Tickets' => 'Мои наблюдаемые заявки',
        'My Responsible Tickets' => 'Мои ответственные заявки',
        'Watched Tickets' => 'Наблюдаемые заявки',
        'Watched' => 'Наблюдаемые',
        'Watch' => 'Наблюдать',
        'Unwatch' => 'Не наблюдать',
        'Lock it to work on it' => 'Заблокировать, чтобы работать с нею',
        'Unlock to give it back to the queue' => 'Разблокировать, чтобы вернуть в очередь',
        'Show the ticket history' => 'Показать историю заявки',
        'Print this ticket' => 'Напечатать эту заявку',
        'Print this article' => 'Напечтаать это сообщение',
        'Split' => 'Разделить',
        'Split this article' => 'Разделить это сообщение',
        'Forward article via mail' => 'Переслать сообщение почтой',
        'Change the ticket priority' => 'Сменить приоритет заявки',
        'Change the ticket free fields!' => 'Изменить свободные поля заявки!',
        'Link this ticket to other objects' => 'Связать эту заявку с другими объектами',
        'Change the owner for this ticket' => 'Сменить владельца этой заявки',
        'Change the  customer for this ticket' => 'Сменить клиента для этой заявки',
        'Add a note to this ticket' => 'Добавить заметку к этой заявке',
        'Merge into a different ticket' => 'Объединить с другой заявкой',
        'Set this ticket to pending' => 'Поставить заявку в ожидание',
        'Close this ticket' => 'Закрыть эту заявку',
        'Look into a ticket!' => 'Просмотреть заявку!',
        'Delete this ticket' => 'Удалить эту заявку',
        'Mark as Spam!' => 'Пометить как спам!',
        'My Queues' => 'Мои очереди',
        'Shown Tickets' => 'Показываемые заявки',
        'Shown Columns' => 'Показываемые колонки',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'Ваш email с номером заявки «<OTRS_TICKET>» объединен с "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Заявка %s: время первого ответа истекло (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Заявка %s: время первого ответа истечет через %s!',
        'Ticket %s: update time is over (%s)!' => 'Заявка %s: время обновления заявки истекло (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Заявка %s: время обновления заявки истечет через %s!',
        'Ticket %s: solution time is over (%s)!' => 'Заявка %s: время решения заявки истекло (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Заявка %s: время решения заявки истечет через %s!',
        'There are more escalated tickets!' => 'Есть еще эскалированные заявки!',
        'Plain Format' => 'Исходный формат',
        'Reply All' => 'Ответить всем',
        'Direction' => 'Направление',
        'New ticket notification' => 'Уведомление о новой заявке',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Прислать мне уведомление, если есть новая заявка в одной из моих очередей.',
        'Send new ticket notifications' => 'Отправлять уведомления о новых заявках',
        'Ticket follow up notification' => 'Уведомление об откликах клиента в заявке',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            'Отправлять мне уведомление, если клиент прислал отклик, а я владелец заявки, или если заявка разблокирована в одной из моих очередей.',
        'Send ticket follow up notifications' => 'Отправлять уведомления об откликах в заявках',
        'Ticket lock timeout notification' => 'Уведомление об истечении срока блокировки заявки системой',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Прислать мне уведомление, если заявка освобождена системой.',
        'Send ticket lock timeout notifications' => 'Отправлять уведомления об истечении блокировок',
        'Ticket move notification' => 'Уведомление о перемещении заявки',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Прислать мне уведомление, если заявка перемещена в одну из моих очередей.',
        'Send ticket move notifications' => 'Отправлять уведомления о перемещении заявок',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            'Ваш выбор предпочитаемых очередей. Также, если включено, вы будете получать уведомления почтой об этих очередях.',
        'Custom Queue' => 'Пользовательская очередь',
        'QueueView refresh time' => 'Время обновления обзора очередей',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            'Обзор очередей будет автоматически обновляться через указанный промежуток времени.',
        'Refresh QueueView after' => 'Обновлять обзор очередей каждые',
        'Screen after new ticket' => 'Экран после создания новой заявки',
        'Show this screen after I created a new ticket' => 'Показывать этот экран после создания заявки',
        'Closed Tickets' => 'Закрытые заявки',
        'Show closed tickets.' => 'Показывать закрытые заявки.',
        'Max. shown Tickets a page in QueueView.' => 'Максимальное количество заявок на странице при просмотре очереди.',
        'Ticket Overview "Small" Limit' => 'Обзор заявок - лимит режима «Краткий»',
        'Ticket limit per page for Ticket Overview "Small"' => 'Лимит числа заявок на одной странице в обзоре заявок в режиме «Маленький»',
        'Ticket Overview "Medium" Limit' => 'Обзор заявок - лимит режима «Средний»',
        'Ticket limit per page for Ticket Overview "Medium"' => 'Лимит числа заявок на одной странице в обзоре заявок в режиме «Средний»',
        'Ticket Overview "Preview" Limit' => 'Обзор заявок - лимит режима «Предварительный просмотр»',
        'Ticket limit per page for Ticket Overview "Preview"' => 'Лимит числа заявок на одной странице в обзоре заявок в режиме «Предварительный просмотр»',
        'Ticket watch notification' => 'Уведомление по наблюдаемым заявкам',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            'Прислать мне те же уведомления для наблюдаемых заявок, которые получают владельцы заявок.',
        'Send ticket watch notifications' => 'Отправлять уведомления по наблюдаемым заявкам',
        'Out Of Office Time' => 'Период отсутствия в офисе',
        'New Ticket' => 'Новая заявка',
        'Create new Ticket' => 'Создать новую заявку',
        'Customer called' => 'Звонок клиента',
        'phone call' => 'телефонный звонок',
        'Phone Call Outbound' => 'Сделать звонок',
        'Phone Call Inbound' => 'Входящий звонок',
        'Reminder Reached' => 'Наступило время Напоминания',
        'Reminder Tickets' => 'Заявки с напоминанием',
        'Escalated Tickets' => 'Эскалированные заявки',
        'New Tickets' => 'Новые заявки',
        'Open Tickets / Need to be answered' => 'Открытые заявки (требуется ответить)',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            'Все открытые заявки; с этими заявками уже работали, но они нуждаются в ответе',
        'All new tickets, these tickets have not been worked on yet' => 'Все новые заявки; с этими заявками еще никто не работал',
        'All escalated tickets' => 'Все эскалированные заявки',
        'All tickets with a reminder set where the reminder date has been reached' =>
            'Все заявки с напоминанием, у которых назначенная дата напоминания наступила',
        'Archived tickets' => 'Архивированные заявки',
        'Unarchived tickets' => 'Неархивированные заявки',
        'Ticket Information' => 'Информация о заявке',
        'including subqueues' => 'включая подочереди',
        'excluding subqueues' => 'исключая подочереди',

        # Template: AAAWeekDay
        'Sun' => 'Вск',
        'Mon' => 'Пнд',
        'Tue' => 'Втр',
        'Wed' => 'Срд',
        'Thu' => 'Чтв',
        'Fri' => 'Птн',
        'Sat' => 'Сбт',

        # Template: AdminACL
        'ACL Management' => 'Управление ACL',
        'Filter for ACLs' => 'Фильтр для ACL',
        'Filter' => 'Фильтр',
        'ACL Name' => 'Имя ACL',
        'Actions' => 'Действия',
        'Create New ACL' => 'Создать новый ACL',
        'Deploy ACLs' => 'Синхронизировать ACL',
        'Export ACLs' => 'Экспорт  ACL',
        'Configuration import' => 'Импорт конфигурации',
        'Here you can upload a configuration file to import ACLs to your system. The file needs to be in .yml format as exported by the ACL editor module.' =>
            'Здесь вы можете загрузить конфигурационный файл для импорта ACL в вашу систему. Файл должен быть в формате .yml, экспортированный из редактора  ACL.',
        'This field is required.' => 'Это поле обязательно.',
        'Overwrite existing ACLs?' => 'Перезаписать существующие ACL?',
        'Upload ACL configuration' => 'Загрузить настройки ACL',
        'Import ACL configuration(s)' => 'Импортировать настройки ACL',
        'To create a new ACL you can either import ACLs which were exported from another system or create a complete new one.' =>
            'Для создания нового ACL или импортируйте его из файла экспорта другой системы или создайте заново.',
        'Changes to the ACLs here only affect the behavior of the system, if you deploy the ACL data afterwards. By deploying the ACL data, the newly made changes will be written to the configuration.' =>
            'Изменения в ACL, сделанные здесь будут актуальны после синхронизации данных ACL. При синхронизации, все вновь внесенные изменения будут записаны в конигурационные файлы системы.',
        'ACLs' => 'ACL',
        'Please note: This table represents the execution order of the ACLs. If you need to change the order in which ACLs are executed, please change the names of the affected ACLs.' =>
            'Помните: Эта таблица отображает порядок выполнения ACL. Если вы хотите изменить порядок в котором они исполняются, измените их имена.',
        'ACL name' => 'Имя ACL',
        'Validity' => 'Действительность',
        'Copy' => 'Скопировать',
        'No data found.' => 'Данные не найдены.',

        # Template: AdminACLEdit
        'Edit ACL %s' => 'Редактировать ACL %s',
        'Go to overview' => 'Перейти к обзору',
        'Delete ACL' => 'Удалить ACL',
        'Delete Invalid ACL' => 'Удалить неправильный ACL',
        'Match settings' => 'Настройки условий',
        'Set up matching criteria for this ACL. Use \'Properties\' to match the current screen or \'PropertiesDatabase\' to match attributes of the current ticket that are in the database.' =>
            'Задайте условия совпадения для этого ACL. Используйте \'Properties\' для данных текущей формы или \'PropertiesDatabase\' для проверки данных текущей заявки, которые уже в базе данных',
        'Change settings' => 'Изменить настройки',
        'Set up what you want to change if the criteria match. Keep in mind that \'Possible\' is a white list, \'PossibleNot\' a black list.' =>
            'Задайте, что вы хотите изменить в случае выполнения условия. Имейте в виду, что \'Possible\' это "белый список", а \'PossibleNot\' - "черный список"',
        'Check the official' => 'Обратитесь к официальной',
        'documentation' => 'документации',
        'Show or hide the content' => 'Отобразить или скрыть содержимое',
        'Edit ACL information' => 'Редактировать описание ACL',
        'Stop after match' => 'Прекратить проверку после совпадения',
        'Edit ACL structure' => 'Редактировать ACL',
        'Save' => 'Сохранить',
        'or' => 'или',
        'Save and finish' => 'Сохранить и закончить',
        'Do you really want to delete this ACL?' => 'Вы действительно хотите удалить этот ACL?',
        'This item still contains sub items. Are you sure you want to remove this item including its sub items?' =>
            'Этот элемент содержит подэлементы. Вы уверены что желаете удалить его, включая его подэлементы?',
        'An item with this name is already present.' => 'Элемент с таким именем уже существует',
        'Add all' => 'Добавить все. После добавления вы можете изменить статус элемента нажав на пометку справа',
        'There was an error reading the ACL data.' => 'Произошла ошибка при чтении данных ACL',

        # Template: AdminACLNew
        'Create a new ACL by submitting the form data. After creating the ACL, you will be able to add configuration items in edit mode.' =>
            'Для создания нового ACL заполните форму описания и сохраните. После этого можно добавлять наборы условий и действий в режиме редактирования.',

        # Template: AdminAttachment
        'Attachment Management' => 'Управление прикрепленными файлами',
        'Add attachment' => 'Добавить вложение',
        'List' => 'Список',
        'Download file' => 'Скачать файл',
        'Delete this attachment' => 'Удалить это вложение',
        'Add Attachment' => 'Добавить вложение',
        'Edit Attachment' => 'Редактировать вложение',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Управление автоответами',
        'Add auto response' => 'Добавить автоответ',
        'Add Auto Response' => 'Добавить автоответ',
        'Edit Auto Response' => 'Изменить автоответ',
        'Response' => 'Ответ',
        'Auto response from' => 'Автоответ от',
        'Reference' => 'Ссылка',
        'You can use the following tags' => 'Вы можете использовать следующие теги',
        'To get the first 20 character of the subject.' => 'Чтобы получить первые 20 символов темы',
        'To get the first 5 lines of the email.' => 'Чтобы получить первые 5 строк email',
        'To get the realname of the sender (if given).' => 'Чтобы получить реальное имя отправителя (если указано)',
        'To get the article attribute' => 'Чтобы получить атрибут сообщения',
        ' e. g.' => ' например,',
        'Options of the current customer user data' => 'Атрибуты данных о пользователе текущего клиента',
        'Ticket owner options' => 'Атрибуты владельца заявки',
        'Ticket responsible options' => 'Атрибуты ответственного за заявку',
        'Options of the current user who requested this action' => 'Атрибуты текущего пользователя, запросившего это действие',
        'Options of the ticket data' => 'Атрибуты данных заявки',
        'Options of ticket dynamic fields internal key values' => 'Атрибуты динамических полей заявки (значения внутренних ключей)',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            'Атрибуты отображаемых значений динамических полей заявки, полезно при использовании типов Dropdown и Multiselect',
        'Config options' => 'Опции конфигурации',
        'Example response' => 'Пример ответа',

        # Template: AdminCloudServiceSupportDataCollector
        'Cloud Service Management' => 'Управление Облаком',
        'Support Data Collector' => 'Сбор данных для поддержки',
        'Support data collector' => 'Сбор данных для поддержки',
        'Hint' => 'Подсказка',
        'Currently support data is only shown in this system.' => 'В настоящее время эти данные для поддержки только отображаются в этой системе.',
        'It is highly recommended to send this data to OTRS Group in order to get better support.' =>
            'Настоятельно рекомендуется отправлять эти данные в OTRS Group для получения более точной поддержки.',
        'Configuration' => 'Конфигурация',
        'Send support data' => 'Выслать данные для технической поддержки',
        'This will allow the system to send additional support data information to OTRS Group.' =>
            'Это позволит системе оправлять дополнительную информацию для поддержки в OTRS Group.',
        'System Registration' => 'Регистрация системы',
        'To enable data sending, please register your system with OTRS Group or update your system registration information (make sure to activate the \'send support data\' option.)' =>
            'Для включения возможности отсылки данных, зарегистрируйте свою систему в OTRS Group или обновите ваши регистрационные данные (убедитесь, что активирована функция \'send support data/послать данные для поддержки\'.)',
        'Register this System' => 'Зарегистрируйте эту систему',
        'System Registration is disabled for your system. Please check your configuration.' =>
            'System Registration отключена для вашей системы. Проверьте настройки.',

        # Template: AdminCloudServices
        'System registration is a service of OTRS Group, which provides a lot of advantages!' =>
            'Регистрация системы - это сервис от OTRS Group, который предоставляет много преимуществ!',
        'Please note that you using OTRS cloud services requires the system to be registered.' =>
            'Обращаем внимание, что использование облачных сервисов OTRS требует регистрации системы.',
        'Register this system' => 'Зарегистрировать эту систему',
        'Here you can configure available cloud services that communicate securely with %s.' =>
            'Здесь вы можете настроить доступные облачные сервисы, которые будут безопасно взаимодействовать с %s.',
        'Available Cloud Services' => 'Доступные облачные сервисы',
        'Upgrade to %s' => 'Обновление до %s',

        # Template: AdminCustomerCompany
        'Customer Management' => 'Управление клиентами',
        'Wildcards like \'*\' are allowed.' => 'Разрешены шаблоны типа \'*\'.',
        'Add customer' => 'Добавить компанию',
        'Select' => 'Выбор',
        'Please enter a search term to look for customers.' => 'Введите запрос для поиска компании.',
        'Add Customer' => 'Добавить компанию',

        # Template: AdminCustomerUser
        'Customer User Management' => 'Управление пользователями клиентов',
        'Back to search results' => 'Назад к результатам поиска',
        'Add customer user' => 'Добавить клиента',
        'Customer user are needed to have a customer history and to login via customer panel.' =>
            'Необходимо для наличия данных о клиенте и подключения к системе через интерфейс клиента',
        'Last Login' => 'Последний вход',
        'Login as' => 'Зайти данным пользователем',
        'Switch to customer' => 'Переключится на клиента',
        'Add Customer User' => 'Добавить клиента',
        'Edit Customer User' => 'Редактировать клиента',
        'This field is required and needs to be a valid email address.' =>
            'Это поле обязательно, и должно быть корректным адресом электронной почты.',
        'This email address is not allowed due to the system configuration.' =>
            'Такой адрес электронной почты не разрешен в конфигурации системы.',
        'This email address failed MX check.' => 'Этот адрес электронной почты не прошел проверку наличия MX-записей.',
        'DNS problem, please check your configuration and the error log.' =>
            'Проблема с DNS, проверьте вашу конфигурацию и лог ошибок.',
        'The syntax of this email address is incorrect.' => 'Синтаксис этого адреса электронной почты некорректен.',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => 'Связь Клиентов с Группами',
        'Notice' => 'Замечание',
        'This feature is disabled!' => 'Данная функция отключена!',
        'Just use this feature if you want to define group permissions for customers.' =>
            'Просто используйте эту возможность, если хотите определить групповые права для клиентов.',
        'Enable it here!' => 'Включить функцию!',
        'Edit Customer Default Groups' => 'Редактировать группы клиента по-умолчанию ',
        'These groups are automatically assigned to all customers.' => 'Эти группы автоматически назначаются всем клиентам.',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            'Этими группами можно управлять в настройке конфигурации "CustomerGroupAlwaysGroups".',
        'Filter for Groups' => 'Фильтры для Групп',
        'Just start typing to filter...' => 'Начните вводить символы для фильтрации...',
        'Select the customer:group permissions.' => 'Выберите разрешения клиент:группа.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            'Если ничего не выбрано, тогда у клиентов в этой группе не будет прав (заявки будут недоступны клиенту).',
        'Search Results' => 'Результаты поиска:',
        'Customers' => 'Клиенты',
        'No matches found.' => 'Совпадений не найдено.',
        'Groups' => 'Группы',
        'Change Group Relations for Customer' => 'Изменить связи групп с клиентами',
        'Change Customer Relations for Group' => 'Изменить связь клиентов с группой',
        'Toggle %s Permission for all' => 'Переключить разрешение «%s» для всех',
        'Toggle %s permission for %s' => 'Переключить разрешение «%s» для %s',
        'Customer Default Groups:' => 'Клиентские группы по-умолчанию:',
        'No changes can be made to these groups.' => 'В эти группы нельзя внести изменения.',
        'ro' => 'Только чтение',
        'Read only access to the ticket in this group/queue.' => 'Права только на чтение заявки в данной группе/очереди',
        'rw' => 'Чтение/запись',
        'Full read and write access to the tickets in this group/queue.' =>
            'Полные права на чтение и запись для заявок в данной группе/очереди.',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => 'Связь Клиентов с Сервисами',
        'Edit default services' => 'Редактировать сервисы по-умолчанию',
        'Filter for Services' => 'Фильтр для Сервисов',
        'Allocate Services to Customer' => 'Назначить Сервисы для Клиента',
        'Allocate Customers to Service' => 'Связать Клиентов с Сервисом',
        'Toggle active state for all' => 'Сделать активным для всех',
        'Active' => 'Активный',
        'Toggle active state for %s' => 'Сделать активным для %s',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => 'Управление динамическими полями',
        'Add new field for object' => 'Добавить новое поле для объекта',
        'To add a new field, select the field type from one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            'Чтобы добавить новое поле, выберите один из типов из появившегося списка, тип определяет границы использования для поля и он не может быть изменен после создания поля.',
        'Dynamic Fields List' => 'Список динамических полей',
        'Dynamic fields per page' => 'Динамических полей на страницу',
        'Label' => 'Название',
        'Order' => 'Порядок',
        'Object' => 'Объект',
        'Delete this field' => 'Удалить это поле',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            'Вы действительно хотите удалить это динамическое поле? ВСЕ связанные с ним данные будут ПОТЕРЯНЫ!',
        'Delete field' => 'Удалить поле',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => 'Динамические поля',
        'Field' => 'Поле',
        'Go back to overview' => 'Вернуться к обзору',
        'General' => 'Общие',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            'Данное поле обязательно, и может состоять только из букв и цифр.',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            'Должно быть уникальным, и может состоять только из букв и цифр.',
        'Changing this value will require manual changes in the system.' =>
            'Изменение этого значения потребует ручных изменений в системе.',
        'This is the name to be shown on the screens where the field is active.' =>
            'Это имя, под которым поле будет показано на тех экранах, на которых оно активно.',
        'Field order' => 'Порядок поля',
        'This field is required and must be numeric.' => 'Это поле обязательно, и должно быть числовым.',
        'This is the order in which this field will be shown on the screens where is active.' =>
            'Это порядок, в котором поле будет показываться среди других полей на тех экранах, где оно активно.',
        'Field type' => 'Тип поля',
        'Object type' => 'Тип объекта',
        'Internal field' => 'Внутреннее поле',
        'This field is protected and can\'t be deleted.' => 'Это поле защищено и не может быть удалено.',
        'Field Settings' => ' - настройки поля',
        'Default value' => 'Значение по умолчанию',
        'This is the default value for this field.' => 'Это значение по умолчанию для данного поля.',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => 'Диапазон дат по умолчанию',
        'This field must be numeric.' => 'Это поле должно быть числовым',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            'Разница в секундах с NOW (текущим моментом) для подсчета значения по умолчанию для этого поля (например, 3600 или -60).',
        'Define years period' => 'Задать период лет',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            'Активируйте эту возможность для задания фиксированного диапазона лет (в прошлом и в будущем) для отображения в части поля, показывающей год.',
        'Years in the past' => 'Лет в прошлом',
        'Years in the past to display (default: 5 years).' => 'Число лет в прошлом для отображения (по умолчанию: 5 лет)',
        'Years in the future' => 'Лет в будущее',
        'Years in the future to display (default: 5 years).' => 'Число лет в будущее для отображения (по умолчанию: 5 лет)',
        'Show link' => 'Показывать ссылку',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            'Здесь можно указать необязательную HTTP-ссылку для значения поля в экранах Обзоров и Подробного просмотра',
        'Restrict entering of dates' => 'Ограничить ввод дат',
        'Here you can restrict the entering of dates of tickets.' => 'Здесь вы можете ограничить ввода дат в заявке.',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => 'Возможные значения',
        'Key' => 'Ключ',
        'Value' => 'Значение',
        'Remove value' => 'Удалить значение',
        'Add value' => 'Добавить значение',
        'Add Value' => 'Добавить Значение',
        'Add empty value' => 'Добавить пустое значение',
        'Activate this option to create an empty selectable value.' => 'Отметьте эту опцию для создания пустого выбираемого значения.',
        'Tree View' => 'Иерархический вид',
        'Activate this option to display values as a tree.' => 'Включите для отображения в иерархическом виде.',
        'Translatable values' => 'Переводимые значения',
        'If you activate this option the values will be translated to the user defined language.' =>
            'Если включить эту опцию, значения, при отображении, будут переведены на заданный язык.',
        'Note' => 'Заметка',
        'You need to add the translations manually into the language translation files.' =>
            'Вам необходимо вручную добавить переводы значений в файлы переводов для используемых языков.',

        # Template: AdminDynamicFieldText
        'Number of rows' => 'Число строк',
        'Specify the height (in lines) for this field in the edit mode.' =>
            'Задает высоту (в строках) для этого поля в режиме редактирования.',
        'Number of cols' => 'Число столбцов',
        'Specify the width (in characters) for this field in the edit mode.' =>
            'Задает ширину (в символах) для этого поля в режиме редактирования.',
        'Check RegEx' => 'Регулярное выражение для проверки',
        'Here you can specify a regular expression to check the value. The regex will be executed with the modifiers xms.' =>
            'Здесь можно задать регулярное выражение для проверки значения. Оно будет выполняться с расширением xms.',
        'RegEx' => 'Регулярное выражение',
        'Invalid RegEx' => 'Некорректное регулярное выражение',
        'Error Message' => 'Сообщение об ошибке',
        'Add RegEx' => 'Добавить регулярное выражение',

        # Template: AdminEmail
        'Admin Notification' => 'Уведомление администратором',
        'With this module, administrators can send messages to agents, group or role members.' =>
            'С помощью этого модуля администраторы могут отправлять сообщения агентам, являющимся членом группы или роли.',
        'Create Administrative Message' => 'Создать сообщение администратора',
        'Your message was sent to' => 'Ваше сообщение было отправлено',
        'Send message to users' => 'Отправить сообщение пользователям',
        'Send message to group members' => 'Отправить сообщение членам группы',
        'Group members need to have permission' => 'Члены группы должны иметь разрешение',
        'Send message to role members' => 'Отправить сообщение членам роли',
        'Also send to customers in groups' => 'Также отправить клиентам в группах',
        'Body' => 'Тело письма',
        'Send' => 'Отправить',

        # Template: AdminGenericAgent
        'Generic Agent' => 'Планировщик задач',
        'Add job' => 'Добавить задание',
        'Last run' => 'Дата последнего запуска',
        'Run Now!' => 'Выполнить сейчас!',
        'Delete this task' => 'Удалить задачу',
        'Run this task' => 'Запустить задачу',
        'Job Settings' => 'Настройки задания',
        'Job name' => 'Имя задания',
        'The name you entered already exists.' => 'Введенное вами имя уже существует.',
        'Toggle this widget' => 'Переключить показ этого блока',
        'Automatic execution (multiple tickets)' => 'Автоматическое выполнение (несколько заявок)',
        'Execution Schedule' => 'Управление запуском',
        'Schedule minutes' => 'Запускать в минуты',
        'Schedule hours' => 'Запускать в часы',
        'Schedule days' => 'Запускать в дни',
        'Currently this generic agent job will not run automatically.' =>
            'Это задание агента не запускается автоматически',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            'Для автоматического запуска укажите как минимум одно из значений в минутах, часах или днях!',
        'Event based execution (single ticket)' => 'Триггеры событий (одна заявка)',
        'Event Triggers' => 'Триггеры событий',
        'List of all configured events' => 'Список всех настроенных событий',
        'Delete this event' => 'Удалить это событие',
        'Additionally or alternatively to a periodic execution, you can define ticket events that will trigger this job.' =>
            'Дополнительно или или вместо запуска по расписанию, вы можете задать события для заявки, которые запустят эту задачу.',
        'If a ticket event is fired, the ticket filter will be applied to check if the ticket matches. Only then the job is run on that ticket.' =>
            'Если событие по заявке наступило, фильтр заявок находит соответствующие заявки. Только после этого стартует задача для этой заявки.',
        'Do you really want to delete this event trigger?' => 'Вы действительно хотите удалить этот триггер события?',
        'Add Event Trigger' => 'Добавить триггер события',
        'Add Event' => 'Добавить событие',
        'To add a new event select the event object and event name and click on the "+" button' =>
            'Чтобы добавить новое событие выберите объект и имя события и щелкните кнопку "+" ',
        'Duplicate event.' => 'Дублировать событие.',
        'This event is already attached to the job, Please use a different one.' =>
            'Это событие уже назначено задаче. Выберите другое.',
        'Delete this Event Trigger' => 'Удалить этот Триггер События',
        'Remove selection' => 'Удалить выбор',
        'Select Tickets' => 'Выбрать заявки',
        '(e. g. 10*5155 or 105658*)' => '(например, 10*5155 или 105658*)',
        '(e. g. 234321)' => '(например, 234321)',
        'Customer login' => 'Логин клиента',
        '(e. g. U5150)' => '(например, U5150)',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => 'Полнотекстовый поиск в сообщении (например, "Mar*in" или "Baue*").',
        'Agent' => 'Агент',
        'Ticket lock' => 'Блокировка заявки',
        'Create times' => 'Когда создана',
        'No create time settings.' => 'Без учета времени создания.',
        'Ticket created' => 'Заявка создана',
        'Ticket created between' => 'Заявка создана между ',
        'Last changed times' => 'Время последнего изменения.',
        'No last changed time settings.' => 'Не заданы настройки для времени последнего изменения.',
        'Ticket last changed' => 'Последнее изменение заявки',
        'Ticket last changed between' => 'Время последнего изменения заявки между',
        'Change times' => 'Когда изменена',
        'No change time settings.' => 'Нет настройки времени изменения.',
        'Ticket changed' => 'Заявка изменена',
        'Ticket changed between' => 'Заявка изменена в период',
        'Close times' => 'Когда закрыта',
        'No close time settings.' => 'Без учета времени закрытия.',
        'Ticket closed' => 'Заявка закрыта',
        'Ticket closed between' => 'Заявка закрыта между',
        'Pending times' => 'Когда отложена',
        'No pending time settings.' => 'Без учета времени напоминания.',
        'Ticket pending time reached' => 'Достигнуто время напоминания по заявке',
        'Ticket pending time reached between' => 'Время напоминания по заявке достигнуто между',
        'Escalation times' => 'Когда эскалирована',
        'No escalation time settings.' => 'Без учета времени эскалации',
        'Ticket escalation time reached' => 'Заявка была эскалирована',
        'Ticket escalation time reached between' => 'Заявка была эскалирована между',
        'Escalation - first response time' => 'Эскалация - время первого ответа',
        'Ticket first response time reached' => 'Время первого ответа по заявке достигнуто',
        'Ticket first response time reached between' => 'Время первого ответа по заявке достигнуто между',
        'Escalation - update time' => 'Эскалация - время обновления',
        'Ticket update time reached' => 'Время обновления для заявки достигнуто',
        'Ticket update time reached between' => 'Время обновления для заявки достигнуто между',
        'Escalation - solution time' => 'Эскалация - время решения',
        'Ticket solution time reached' => 'Время решения заявки достигнуто',
        'Ticket solution time reached between' => 'Время решения заявки достигнуто между',
        'Archive search option' => 'Опция Поиск в архиве',
        'Update/Add Ticket Attributes' => 'Обновить/добавить атрибуты заявки',
        'Set new service' => 'Установить новый сервис',
        'Set new Service Level Agreement' => 'Установить новое Соглашение об Уровне Сервиса (SLA)',
        'Set new priority' => 'Установить новый приоритет',
        'Set new queue' => 'Установить новую очередь',
        'Set new state' => 'Установить новое состояние',
        'Pending date' => 'Дата ожидания',
        'Set new agent' => 'Назначить нового агента',
        'new owner' => 'новый владелец',
        'new responsible' => 'новый ответственный',
        'Set new ticket lock' => 'Установить новое состояние блокировки',
        'New customer' => 'Новый клиент',
        'New customer ID' => 'ID нового клиента',
        'New title' => 'Новый заголовок',
        'New type' => 'Новый тип',
        'New Dynamic Field Values' => 'Новые значения динамических полей',
        'Archive selected tickets' => 'Архивировать выбранные заявки',
        'Add Note' => 'Добавить заметку/сообщение',
        'Time units' => 'Затраченное время',
        'Execute Ticket Commands' => 'Выполнить действия над заявкой',
        'Send agent/customer notifications on changes' => 'Отправить уведомление агенту/клиенту при изменениях',
        'CMD' => 'Команда/CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'Эта команда будет выполнена. ARG[0] — номер заявки. ARG[1] — id заявки.',
        'Delete tickets' => 'Удалить заявки',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            'Предупреждение: Все выбранные заявки будут удалены из базы данных без возможности восстановления!',
        'Execute Custom Module' => 'Запустить пользовательский модуль',
        'Param %s key' => 'Параметр %s ключ',
        'Param %s value' => 'Параметр %s значение',
        'Save Changes' => 'Сохранить изменения',
        'Results' => 'Результаты',
        '%s Tickets affected! What do you want to do?' => 'Затронуто %s заявок! Что желаете сделать?',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            'Внимание! Вы использовали опцию УДАЛЕНИЯ. Все удаленные заявки будут потеряны!',
        'Warning: There are %s tickets affected but only %s may be modified during one job execution!' =>
            'Внимание: Всего %s заявок затронуто, но только %s могут быть изменены за один запуск задания!',
        'Edit job' => 'Редактировать задание',
        'Run job' => 'Запустить задание',
        'Affected Tickets' => 'Выбранные заявки',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => 'Интерфейс отладки для Веб-сервисов %s',
        'You are here' => 'Вы здесь',
        'Web Services' => 'Веб-сервисы',
        'Debugger' => 'Отладчик',
        'Go back to web service' => 'Перейти назад к веб-сервису',
        'Clear' => 'Очистить',
        'Do you really want to clear the debug log of this web service?' =>
            'Вы действительно хотите очистить отладочный журнал для этого веб-сервиса',
        'Request List' => 'Список запросов',
        'Time' => 'Время',
        'Remote IP' => 'Удаленный IP-адрес',
        'Loading' => 'Загрузка',
        'Select a single request to see its details.' => 'Выберите одиночный запрос для просмотра деталей.',
        'Filter by type' => 'Фильт по типу',
        'Filter from' => 'Фильтр по from',
        'Filter to' => 'Фильтр по to',
        'Filter by remote IP' => 'Фильтр по удаленному IP-адресу',
        'Limit' => 'Лимит',
        'Refresh' => 'Обновить',
        'Request Details' => 'Детали запроса (Request)',
        'An error occurred during communication.' => 'Ошибка при попытке связи.',
        'Show or hide the content.' => 'Показать или убрать содержимое.',
        'Clear debug log' => 'Очистить журнал отладки',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => 'Добавить новый Invoker для веб-сервиса %s',
        'Change Invoker %s of Web Service %s' => 'Изменить Invoker %s для веб-сервиса %s',
        'Add new invoker' => 'Добавить новый invoker',
        'Change invoker %s' => 'Изменить invoker %s',
        'Do you really want to delete this invoker?' => 'Вы действительно желаете удалить этот invoker?',
        'All configuration data will be lost.' => 'Все данные конфигурации будут потеряны.',
        'Invoker Details' => 'Подробности для Invoker ',
        'The name is typically used to call up an operation of a remote web service.' =>
            'Имя обычно используется для вызова операции удаленного веб-сервиса.',
        'Please provide a unique name for this web service invoker.' => 'Укажите уникальное имя для этого invoker веб-сервиса.',
        'Invoker backend' => '',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            'Этот модуль OTRS invoker будет вызываться для подготовки данных, отправляемых в удаленную систему и для обработки ответных данных.',
        'Mapping for outgoing request data' => '',
        'Configure' => 'Конфигурировать',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Mapping for incoming response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '',
        'Asynchronous' => 'Асинхронный',
        'This invoker will be triggered by the configured events.' => 'Этот invoker будет вызван при наступлении заданных событий.',
        'Asynchronous event triggers are handled by the OTRS Scheduler Daemon in background (recommended).' =>
            'Асинхронные триггеры событий будут обрабатываться Планировщиком OTRS в фоновом режиме (рекомендуется).',
        'Synchronous event triggers would be processed directly during the web request.' =>
            'Синхронные триггеры событий будут обрабатываться непосредственно при веб-запросе.',
        'Save and continue' => 'Сохранить и продолжить',
        'Delete this Invoker' => 'Удалить этот Invoker',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => 'Вернуться к',
        'Mapping Simple' => '',
        'Default rule for unmapped keys' => 'Умолчания для не назначенных кнопок',
        'This rule will apply for all keys with no mapping rule.' => 'Это правило будет использоваться для всех не назначенных кнопок',
        'Default rule for unmapped values' => 'Правило по-умолчанию для неопределенных значений',
        'This rule will apply for all values with no mapping rule.' => 'Это правило будет применено для всех значений без правил',
        'New key map' => 'Новая карта ключкй',
        'Add key mapping' => 'Добавить мапинг ключа',
        'Mapping for Key ' => 'Мапинг для ключа',
        'Remove key mapping' => '',
        'Key mapping' => 'Мапинг ключа',
        'Map key' => '',
        'matching the' => 'соответствует',
        'to new key' => 'для нового ключа',
        'Value mapping' => 'Значение мапинга',
        'Map value' => 'Карта значений',
        'to new value' => 'в новое значение',
        'Remove value mapping' => '',
        'New value map' => '',
        'Add value mapping' => '',
        'Do you really want to delete this key mapping?' => '',
        'Delete this Key Mapping' => 'Удалить этот мапинг ключа',

        # Template: AdminGenericInterfaceMappingXSLT
        'GenericInterface Mapping XSLT for Web Service %s' => '',
        'Mapping XML' => '',
        'Template' => 'Шаблон',
        'The entered data is not a valid XSLT stylesheet.' => 'Введенные данные не соответствуют формату XSLT.',
        'Insert XSLT stylesheet.' => 'Вставьте список стилей в формате XSLT.',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => 'Добавить новую операцию для веб-сервиса %s',
        'Change Operation %s of Web Service %s' => 'Изменить операцию %s веб-сервиса %s',
        'Add new operation' => 'Добавить новую операцию',
        'Change operation %s' => 'Изменить операцию %s',
        'Do you really want to delete this operation?' => 'Вы действительно желаете удалить эту операцию?',
        'Operation Details' => 'Детали операции',
        'The name is typically used to call up this web service operation from a remote system.' =>
            'Имя обычно используется для вызова этой операции веб-сервиса из удаленной системы.',
        'Please provide a unique name for this web service.' => 'Укажите уникальное имя для этого веб-сервиса.',
        'Mapping for incoming request data' => '',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            '',
        'Operation backend' => '',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '',
        'Mapping for outgoing response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Delete this Operation' => 'Удалить эту операцию',

        # Template: AdminGenericInterfaceTransportHTTPREST
        'GenericInterface Transport HTTP::REST for Web Service %s' => 'GenericInterface Transport HTTP::REST для веб-сервиса %s',
        'Network transport' => 'Сетевой транспорт',
        'Properties' => 'Свойства',
        'Route mapping for Operation' => '',
        'Define the route that should get mapped to this operation. Variables marked by a \':\' will get mapped to the entered name and passed along with the others to the mapping. (e.g. /Ticket/:TicketID).' =>
            '',
        'Valid request methods for Operation' => 'Допустимые методы запроса для Операции',
        'Limit this Operation to specific request methods. If no method is selected all requests will be accepted.' =>
            'Ограничить использование этой Операции для определенных методов запроса. Если никакой метод не указан, все запросы будут приняты.',
        'Maximum message length' => 'Максимальная длина сообщения',
        'This field should be an integer number.' => 'Это поле должно быть целым числом.',
        'Here you can specify the maximum size (in bytes) of REST messages that OTRS will process.' =>
            'Здесь вы можете задать макс. размер (в байтах) REST сообщений, которые OTRS будет обрабатывать.',
        'Send Keep-Alive' => 'Отправить Keep-Alive',
        'This configuration defines if incoming connections should get closed or kept alive.' =>
            'Этот параметр определяет закрывать входящие соединения или оставлять открытыми.',
        'Host' => 'Сервер',
        'Remote host URL for the REST requests.' => 'URL на удаленный сервер для REST запросов.',
        'e.g https://www.otrs.com:10745/api/v1.0 (without trailing backslash)' =>
            'например, https://www.otrs.com:10745/api/v1.0 (без обратных слэшей)',
        'Controller mapping for Invoker' => '',
        'The controller that the invoker should send requests to. Variables marked by a \':\' will get replaced by the data value and passed along with the request. (e.g. /Ticket/:TicketID?UserLogin=:UserLogin&Password=:Password).' =>
            '',
        'Valid request command for Invoker' => '',
        'A specific HTTP command to use for the requests with this Invoker (optional).' =>
            'Конкретная команда HTTP для использования в запросах этого Invoker (необязательна).',
        'Default command' => 'Команда по умолчанию',
        'The default HTTP command to use for the requests.' => 'Команда HTTP по умолчанию для использования в запросах.',
        'Authentication' => 'Аутентификация',
        'The authentication mechanism to access the remote system.' => 'Способ аутентификации для доступа к удаленной системе.',
        'A "-" value means no authentication.' => 'Значение "-" означает без аутентификации.',
        'The user name to be used to access the remote system.' => 'Имя пользователя для доступа к удаленной системе.',
        'The password for the privileged user.' => 'Пароль для привилегированного пользователя',
        'Use SSL Options' => 'Использовать SSL параметры',
        'Show or hide SSL options to connect to the remote system.' => 'Показать или скрыть параметры SSL для подключения к удаленной системе.',
        'Certificate File' => 'Файл сертификата',
        'The full path and name of the SSL certificate file.' => 'Полный путь и имя файла SSL сертификата.',
        'e.g. /opt/otrs/var/certificates/REST/ssl.crt' => 'например, /opt/otrs/var/certificates/REST/ssl.crt',
        'Certificate Password File' => 'Пароль файла сертификата',
        'The full path and name of the SSL key file.' => 'Полный путь и имя файла ключа SSL.',
        'e.g. /opt/otrs/var/certificates/REST/ssl.key' => 'например, /opt/otrs/var/certificates/REST/ssl.key',
        'Certification Authority (CA) File' => 'Файл Certification Authority (CA)',
        'The full path and name of the certification authority certificate file that validates the SSL certificate.' =>
            'Полный путь и имя файла сертификата для проверки SSL ',
        'e.g. /opt/otrs/var/certificates/REST/CA/ca.file' => 'например /opt/otrs/var/certificates/REST/CA/ca.file',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => 'GenericInterface Transport HTTP::SOAP для веб-сервиса %s',
        'Endpoint' => '',
        'URI to indicate a specific location for accessing a service.' =>
            'URI для указания специального расположения для доступа к сервису.',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => 'например, http://local.otrs.com:8000/Webservice/Example',
        'Namespace' => 'Пространство имен',
        'URI to give SOAP methods a context, reducing ambiguities.' => '',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            'например, urn:otrs-com:soap:functions или http://www.otrs.com/GenericInterface/actions',
        'Request name scheme' => '',
        'Select how SOAP request function wrapper should be constructed.' =>
            '',
        '\'FunctionName\' is used as example for actual invoker/operation name.' =>
            '',
        '\'FreeText\' is used as example for actual configured value.' =>
            '\'FreeText\' используется в качестве примера для фактического конфигурируемого значения.',
        'Response name free text' => '',
        'Text to be used to as function wrapper name suffix or replacement.' =>
            '',
        'Please consider XML element naming restrictions (e.g. don\'t use \'<\' and \'&\').' =>
            'Пожалуйста, обратите внимание на ограничения именования  XML элементов (например, не использовать \'<\' и \'&\').',
        'Response name scheme' => '',
        'Select how SOAP response function wrapper should be constructed.' =>
            '',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            'Здесь вы можете задать макс. размер (в байтах) SOAP сообщений, которые OTRS будет обрабатывать.',
        'Encoding' => 'Кодировка',
        'The character encoding for the SOAP message contents.' => 'Кодировка символов для содержимого SOAP сообщений.',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => 'например, utf-8, latin1, iso-8859-1, cp1250, и т.д.',
        'SOAPAction' => 'SOAPAction',
        'Set to "Yes" to send a filled SOAPAction header.' => 'Установить в "Yes/Да" для передачи заполненнного заголовка SOAPAction.',
        'Set to "No" to send an empty SOAPAction header.' => 'Установить в "No/Нет" для передачи пустого заголовка SOAPAction.',
        'SOAPAction separator' => 'Разделитель SOAPAction.',
        'Character to use as separator between name space and SOAP method.' =>
            'Символ, используемый в качестве разделителя между пространством имен и методом SOAP.',
        'Usually .Net web services uses a "/" as separator.' => 'Обычно .Net веб-сервисы используют "/" как разделитель.',
        'Proxy Server' => 'Прокси-сервер',
        'URI of a proxy server to be used (if needed).' => 'URI используемого прокси сервера (если требуется).',
        'e.g. http://proxy_hostname:8080' => 'например, http://proxy_hostname:8080',
        'Proxy User' => 'Пользователь  Прокси',
        'The user name to be used to access the proxy server.' => 'Имя пользователя для доступа к прокси серверу.',
        'Proxy Password' => 'Пароль Прокси',
        'The password for the proxy user.' => 'Пароль пользователя прокси',
        'The full path and name of the SSL certificate file (must be in .p12 format).' =>
            'Полный путь и имя файла SSL сертификата (должны быть в формате .p12)',
        'e.g. /opt/otrs/var/certificates/SOAP/certificate.p12' => 'например, /opt/otrs/var/certificates/SOAP/certificate.p12',
        'The password to open the SSL certificate.' => 'Пароль для открытия SSL серификата.',
        'The full path and name of the certification authority certificate file that validates SSL certificate.' =>
            'Полный путь и имя файла сертификата для проверки SSL ',
        'e.g. /opt/otrs/var/certificates/SOAP/CA/ca.pem' => 'например, /opt/otrs/var/certificates/SOAP/CA/ca.pem',
        'Certification Authority (CA) Directory' => 'Каталог Certification Authority (CA)',
        'The full path of the certification authority directory where the CA certificates are stored in the file system.' =>
            'Полный путь к каталогу certification authority, в котором хранятся CA certificates. ',
        'e.g. /opt/otrs/var/certificates/SOAP/CA' => 'например, /opt/otrs/var/certificates/SOAP/CA',
        'Sort options' => 'Опции сортировки',
        'Add new first level element' => 'Добавить новый элемент первого уровня',
        'Outbound sort order for xml fields (structure starting below function name wrapper) - see documentation for SOAP transport.' =>
            '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => 'Управление  GenericInterface Web Service',
        'Add web service' => 'Добавить Веб-сервис',
        'Clone web service' => 'Дублировать Веб-сервис',
        'The name must be unique.' => 'Имя должно быть уникальным',
        'Clone' => 'Скопировать',
        'Export web service' => 'Экспорт Веб-сервиса',
        'Import web service' => 'Импорт Веб-сервиса',
        'Configuration File' => 'Файл конфигурации',
        'The file must be a valid web service configuration YAML file.' =>
            'Файл должен быть файлом конфигурации веб-сервисов формата YAML.',
        'Import' => 'Импорт',
        'Configuration history' => 'История конфигурации',
        'Delete web service' => 'Удалить Веб-сервис',
        'Do you really want to delete this web service?' => 'Вы действительно желаете удалить этот веб-сервис',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            'После сохранения конфигурации вы вернетесь обратно на экран редактирования',
        'If you want to return to overview please click the "Go to overview" button.' =>
            'Если желаете вернуться к обзору, нажмите кнопку Перейти к обзору.',
        'Web Service List' => 'Список Веб-сервисов',
        'Remote system' => 'Удаленная система',
        'Provider transport' => 'Транспорт провайдера',
        'Requester transport' => 'Транспорт запрашиваюшего',
        'Debug threshold' => 'Порог отладки',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            'В режиме provider, OTRS предлагает веб-сервисы используемые удаленной системой.',
        'In requester mode, OTRS uses web services of remote systems.' =>
            'В режиме requester, OTRS использует веб-сервисы удаленной системы.',
        'Operations are individual system functions which remote systems can request.' =>
            'Операции - это отдельные системные функции которые удаленные системы могут запрашивать.',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            'Invokers подготавливает данные для запроса к удаленному веб-сервису и обрабатывает данные их ответа.',
        'Controller' => 'Контроллер',
        'Inbound mapping' => 'Входящий мапинг',
        'Outbound mapping' => 'Исходящий мапинг',
        'Delete this action' => 'Удалить это действие',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            'По крайней мере один %s имеет controller, который или неактивен, или отсутствует, проверьте, пожалуйста, controller registration или удалите %s',
        'Delete webservice' => 'Удалить веб-сервис',
        'Delete operation' => 'Удалить операцию',
        'Delete invoker' => 'Удалить invoker',
        'Clone webservice' => 'Скопировать веб-сервис',
        'Import webservice' => 'Импортировать веб-сервис',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => 'История настройки GenericInterface для веб-сервиса %s',
        'Go back to Web Service' => 'Вернуться в веб-сервис',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            'Здесь вы можете просмотреть старые версии конфигурации текущего веб-сервиса(ов), экспортировать или восстановить их.',
        'Configuration History List' => 'Список истории конфигурации',
        'Version' => 'Версия',
        'Create time' => 'Время создания',
        'Select a single configuration version to see its details.' => 'Выберите отдельную версию конфигурации для ее просмотра',
        'Export web service configuration' => 'Экспортировать конфигурацию веб-сервиса',
        'Restore web service configuration' => 'Восстановить конфигурацию веб-сервиса',
        'Do you really want to restore this version of the web service configuration?' =>
            'Вы действительно желаете восстановить эту версию конфигурации веб-сервиса',
        'Your current web service configuration will be overwritten.' => 'Ваша текущая конфигурация веб-сервиса будет перезаписана.',
        'Restore' => 'Восстановить',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            'ВНИМАНИЕ! Если вы измените имя группы «admin» до того, как поменяете название этой группы конфигурации системы, у вас не будет прав доступа на панель администрирования. Если это произошло, верните прежнее название группы (admin) вручную командой SQL.',
        'Group Management' => 'Управление группами',
        'Add group' => 'Добавить группу',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'Группа admin может осуществлять администрирование, а группа stats — просматривать статистику',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            'Создать новые группы, чтобы управлять правами для разных групп агентов (например, департамент закупок, департамент поддержки, департамент продаж, ...).',
        'It\'s useful for ASP solutions. ' => 'Полезно для сервис-провайдеров.',
        'Add Group' => 'Добавить группу',
        'Edit Group' => 'Редактировать группу',

        # Template: AdminLog
        'System Log' => 'Системный журнал',
        'Here you will find log information about your system.' => 'Здесь вы найдете логи с информацией о вашей системе.',
        'Hide this message' => 'Скрыть это сообщение',
        'Recent Log Entries' => 'Свежие записи в логе',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Управление почтовыми учетными записями',
        'Add mail account' => 'Добавить почтовую учетную запись',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Все входящие письма с указанной учетной записи будут перенесены в выбранную очередь!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'Если к вашей учётной записи есть доверие, будут использованы уже существующие в письмах на момент прибытия заголовки X-OTRS (для выставления приоритета и прочих данных)! Фильтр PostMaster будет использован в любом случае.',
        'Delete account' => 'Удалить учетную запись',
        'Fetch mail' => 'Забрать почту',
        'Add Mail Account' => 'Добавить почтовую учетную запись',
        'Example: mail.example.com' => 'Пример: mail.example.com',
        'IMAP Folder' => 'Папка IMAP',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            'Изменение здесь требуется только в случае необходимости забирать почту из другой папки, не из INBOX.',
        'Trusted' => 'Доверенная',
        'Dispatching' => 'Перенаправление',
        'Edit Mail Account' => 'Изменить почтовую учетную запись',

        # Template: AdminNavigationBar
        'Admin' => 'Администрирование',
        'Agent Management' => 'Управление агентами',
        'Queue Settings' => 'Настройки очередей',
        'Ticket Settings' => 'Настройки заявок',
        'System Administration' => 'Администрирование системы',
        'Online Admin Manual' => 'Онлайн-руководство администратора',

        # Template: AdminNotificationEvent
        'Ticket Notification Management' => 'Управление уведомлениями',
        'Add notification' => 'Добавить уведомление',
        'Export Notifications' => 'Экспорт уведомлений',
        'Configuration Import' => 'Импорт конфигурации',
        'Here you can upload a configuration file to import Ticket Notifications to your system. The file needs to be in .yml format as exported by the Ticket Notification module.' =>
            'Здесь вы можете загрузить конфигурационный файл для импорта Ticket Notifications в вашу систему. Файл должен быть в формате .yml, экспортированный из модуля Ticket Notification.',
        'Overwrite existing notifications?' => 'Перезаписать существующие уведомления?',
        'Upload Notification configuration' => 'Загрузить конфигурацию уведомлений',
        'Import Notification configuration' => 'Импортировать настройки Уведомлений',
        'Delete this notification' => 'Удалить это уведомление',
        'Do you really want to delete this notification?' => 'Вы действительно желаете удалить это Уведомление?',
        'Add Notification' => 'Добавить уведомление',
        'Edit Notification' => 'Редактировать уведомления',
        'Show in agent preferences' => 'Показать в настройках агента',
        'Agent preferences tooltip' => 'Подсказка в настройках агента',
        'This message will be shown on the agent preferences screen as a tooltip for this notification.' =>
            'Это сообщение будет показано на экране настроек агента, как подсказка к этому уведомлению.',
        'Here you can choose which events will trigger this notification. An additional ticket filter can be applied below to only send for ticket with certain criteria.' =>
            'Здесь вы можете выбрать какие события будут включать это уведомление. Дополнительный фильтр может быть применён ниже для их отправки для заявок, удовлетворяющих заданному условию.',
        'Ticket Filter' => 'Фильтр заявок',
        'Article Filter' => 'Фильтр сообщений',
        'Only for ArticleCreate and ArticleSend event' => 'Только для событий ArticleCreate и ArticleSend',
        'Article type' => 'Тип сообщения',
        'If ArticleCreate or ArticleSend is used as a trigger event, you need to specify an article filter as well. Please select at least one of the article filter fields.' =>
            'Если ArticleCreate или ArticleSend используется как переключатель события, вы должны задать фильтр для сообщений. Выберите, хотя бы одно из полей фильтра.',
        'Article sender type' => 'Тип отправителя сообщения',
        'Subject match' => 'Соответствие теме',
        'Body match' => 'Соответствие телу письма',
        'Include attachments to notification' => 'Включить вложения в уведомление',
        'Recipients' => 'Получатели',
        'Send to' => 'Кому отправить',
        'Send to these agents' => 'Отправить этим агентам',
        'Send to all group members' => 'Отправить всем членам группы',
        'Send to all role members' => 'Отправить всем членам роли',
        'Send on out of office' => 'Отправить для отсутствующих/out of office',
        'Also send if the user is currently out of office.' => 'Также отправить, если пользователь в настоящее время отсутствует на месте.',
        'Once per day' => 'Один раз в день',
        'Notify user just once per day about a single ticket using a selected transport.' =>
            'Уведомить пользователя только раз в день для каждой отдельной заявки, используя указанный способ доставки.',
        'Notification Methods' => 'Способы уведомлений',
        'These are the possible methods that can be used to send this notification to each of the recipients. Please select at least one method below.' =>
            'Существует несколько способов для отправки этого уведомления каждому из получателей. Выберите хотя бы один из приведенных ниже.',
        'Enable this notification method' => 'Активировать этот способ уведомлений',
        'Transport' => 'Передача',
        'At least one method is needed per notification.' => 'Должен быть выбран хотя бы один способ для каждого уведомления',
        'Send by default' => 'Отправка по умолчанию',
        'Should the notification be sent to agents who have not yet made a choice in their preferences?' =>
            'Должно ли уведомление отправляться агентам, которые не выбрали получение его в своих личных настройках?',
        'This feature is currently not available.' => 'Эта функция в данный момент не доступна',
        'No data found' => 'Данные не найдены',
        'No notification method found.' => 'Не задан метод уведомлений.',
        'Notification Text' => 'Текст уведомления',
        'This language is not present or enabled on the system. This notification text could be deleted if it is not needed anymore.' =>
            'Этот язык отсутствует или не включен для использования в системе. Этот текст уведомления будет удален, если он больше не нужен.',
        'Remove Notification Language' => 'Удалить язык уведомлений',
        'Message body' => 'Содержание уведомления',
        'Add new notification language' => 'Добавить дополнительный язык для уведомлений',
        'Do you really want to delete this notification language?' => 'Вы действительно желаете удалить этот язык для Уведомлений?',
        'Tag Reference' => 'Справка по тэгам',
        'Notifications are sent to an agent or a customer.' => 'Уведомления отправляются агенту или клиенту',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            'Первые 20 символов темы из последнего сообщения агента',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            'Первые 5 строк последнего сообщения агента',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            'Первые 20 символов темы из последнего сообщения клиента',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            'Первые 5 строк последнего сообщения клиента',
        'Attributes of the current customer user data' => 'Атрибуты данных текущего клиента',
        'Attibutes of the current ticket owner\'s user data' => 'Атрибуты данных текущего владельца заявки',
        'Attibutes of the current ticket responsible\'s user data' => 'Атрибуты данных текущего ответственного за заявку',
        'Attributes of the current agent user who requested this action' =>
            'Атрибуты текущего агента, запросившего это действие',
        'Attributes of the recipient user for the notification' => 'Атрибуты пользователя - получателя уведомления',
        'Attributes of the ticket data' => 'Атрибуты данных заявки',
        'Ticket dynamic fields internal key values' => 'Значения внутренних ключей динамических полей заявки',
        'Ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            'Отображаемые значения динамических полей заявки, полезно при использовании полей типа Dropdown и Multiselect',
        'Example notification' => 'Пример уведомления',

        # Template: AdminNotificationEventTransportEmailSettings
        'Additional recipient email addresses' => 'Дополнительный адрес получателя',
        'Notification article type' => 'Тип сообщения с уведомлением',
        'An article will be created if the notification is sent to the customer or an additional email address.' =>
            'Сообщение/Заметка будет создана, если уведомление отправляется клиенту или на дополнительный адрес почты.',
        'Email template' => 'Шаблон письма',
        'Use this template to generate the complete email (only for HTML emails).' =>
            'Используйте этот шаблон для создания полного почтового сообщения (только для сообщений в HTML формате).',

        # Template: AdminOTRSBusinessInstalled
        'Manage %s' => 'Упровление %s',
        'Downgrade to OTRS Free' => 'Возврат к бесплатной версии OTRS ',
        'Read documentation' => 'Читайте документацию',
        '%s makes contact regularly with cloud.otrs.com to check on available updates and the validity of the underlying contract.' =>
            '%s выполняет регулярную связь с cloud.otrs.com для проверки доступных обновлений и срока действия основного договора.',
        'Unauthorized Usage Detected' => 'Обнаружено несанкционированное использование ',
        'This system uses the %s without a proper license! Please make contact with %s to renew or activate your contract!' =>
            'Эта система использует %s без соответствующей лицензии! Свяжитесь, пожалуйста с %s для обновления или активации вашего контракта!',
        '%s not Correctly Installed' => '%s некорректно установлен',
        'Your %s is not correctly installed. Please reinstall it with the button below.' =>
            'Ваш %s  некорректно установлен. Пожалуйста, переустановите его с помощью кнопки расположенной ниже.',
        'Reinstall %s' => 'Переустановите %s ',
        'Your %s is not correctly installed, and there is also an update available.' =>
            'Ваш %s некорректно установлен, а также доступно обновление для него.',
        'You can either reinstall your current version or perform an update with the buttons below (update recommended).' =>
            'Вы можете либо переустановить текущую версию продукта, либо обновить его с помощью кнопок расположенных ниже (рекомендуется выполнить обновление).',
        'Update %s' => 'Обновить %s ',
        '%s Not Yet Available' => '%s в данный момент еще недоступен',
        '%s will be available soon.' => '%s скоро будет доступен.',
        '%s Update Available' => 'Доступно обновление для %s',
        'An update for your %s is available! Please update at your earliest!' =>
            'Обновление для вашего %s  доступно! Обновите его в ближайшее время!',
        '%s Correctly Deployed' => '%s правильно развернут/установлен',
        'Congratulations, your %s is correctly installed and up to date!' =>
            'Поздравляем, ваш %s правильно установлен и имеет последнюю версию!',

        # Template: AdminOTRSBusinessNotInstalled
        '%s will be available soon. Please check again in a few days.' =>
            'Обновление для %s будет скоро доступно. Проверьте повторно в ближайшие дни.',
        'Please have a look at %s for more information.' => 'Пожалуйста, обратитесь к %s за дополнительной информацией.',
        'Your OTRS Free is the base for all future actions. Please register first before you continue with the upgrade process of %s!' =>
            'Ваш OTRS Free является основой для всех будущих действий. Зарегистрируйтесь сначала, до продолжения работ по обновлению %s! ',
        'Before you can benefit from %s, please contact %s to get your %s contract.' =>
            'Для получения пользы от использования %s, свяжитесь с %s для получения вашего контракта на %s.',
        'Connection to cloud.otrs.com via HTTPS couldn\'t be established. Please make sure that your OTRS can connect to cloud.otrs.com via port 443.' =>
            'Соединение с cloud.otrs.com по HTTPS не может быть установлено. Убедитесь, что ваша система OTRS использует порт 443 для соединения с cloud.otrs.com.',
        'With your existing contract you can only use a small part of the %s.' =>
            'Ваш существующий контракт позволяет использовать лишь малую часть возможностей %s.',
        'If you would like to take full advantage of the %s get your contract upgraded now! Contact %s.' =>
            'Если вы желаете получить все возможности %s обновите свой контракт! Свяжитесь с %s.',

        # Template: AdminOTRSBusinessUninstall
        'Cancel downgrade and go back' => 'Прервать процесс возврата к предыдущей версии и вернуться назад',
        'Go to OTRS Package Manager' => 'Перейти к Менеджеру пакетов OTRS ',
        'Sorry, but currently you can\'t downgrade due to the following packages which depend on %s:' =>
            'Извините, но вы не можете сделать возврат к предыдущей версии из-за следующих пакетов, которые зависят от %s:',
        'Vendor' => 'Изготовитель',
        'Please uninstall the packages first using the package manager and try again.' =>
            'Пожалуйста, деинсталлируйте сначала пакеты с помощью Менеджера пакетов и попробуйте повторить заново.',
        'You are about to downgrade to OTRS Free and will lose the following features and all data related to these:' =>
            'Вы собираетесь выполнить откат к базовой OTRS и потеряете следующие возможности и данные с ними связанные:',
        'Chat' => 'Чат',
        'Timeline view in ticket zoom' => 'Хронологический вид при подробном просмотре заявки',
        'DynamicField ContactWithData' => 'Динамическое поле ContactWithData',
        'DynamicField Database' => 'База данных Динамических полей',
        'SLA Selection Dialog' => 'Диалог выбора SLA ',
        'Ticket Attachment View' => 'Обзор вложений заявки',
        'The %s skin' => 'Обложка %s',

        # Template: AdminPGP
        'PGP Management' => 'Управление подписями PGP',
        'Use this feature if you want to work with PGP keys.' => 'Используйте эту возможность, если хотите работать с PGP-ключами.',
        'Add PGP key' => 'Добавить PGP ключ',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'В данном случае вы можете изменить ключи прямо в конфигурации системы',
        'Introduction to PGP' => 'Введение в PGP',
        'Result' => 'Результат',
        'Identifier' => 'Идентификатор',
        'Bit' => 'Бит',
        'Fingerprint' => 'Цифровой отпечаток',
        'Expires' => 'Истекает',
        'Delete this key' => 'Удалите этот ключ',
        'Add PGP Key' => 'Добавить PGP ключ',
        'PGP key' => 'PGP-ключ',

        # Template: AdminPackageManager
        'Package Manager' => 'Управление пакетами',
        'Uninstall package' => 'Деинсталлировать пакет',
        'Do you really want to uninstall this package?' => 'Удалить этот пакет?',
        'Reinstall package' => 'Переустановить пакет',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            'Вы действительно хотите переустановить этот пакет? Все ручные изменения будут потеряны.',
        'Continue' => 'Продолжить',
        'Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            'Убедитесь что ваша СУБД принимает пакеты размером больше %s MB (текущее значение размера пакета - до %s MB). Измените значение параметра max_allowed_packet для вашей СУБД во избежание ошибок.',
        'Install' => 'Установить',
        'Install Package' => 'Установить пакет',
        'Update repository information' => 'Обновить информацию репозитория',
        'Online Repository' => 'Онлайновый репозиторий',
        'Module documentation' => 'Документация модуля',
        'Upgrade' => 'Обновить',
        'Local Repository' => 'Локальный репозиторий',
        'This package is verified by OTRSverify (tm)' => 'Этот пакет проверен с помощью OTRSverify (tm)',
        'Uninstall' => 'Деинсталлировать',
        'Reinstall' => 'Переустановить',
        'Features for %s customers only' => 'Эти возможности доступны тоько для клиентов - %s ',
        'With %s, you can benefit from the following optional features. Please make contact with %s if you need more information.' =>
            'С %s, вы получите следующие дополнительные возможности. Свяжитесь с %s если нуждаетесь в дополнительной информации.',
        'Download package' => 'Скачать пакет',
        'Rebuild package' => 'Пересобрать пакет',
        'Metadata' => 'Метаданные',
        'Change Log' => 'Список изменений',
        'Date' => 'Дата',
        'List of Files' => 'Список файлов',
        'Permission' => 'Права доступа',
        'Download' => 'Загрузить',
        'Download file from package!' => 'Загрузить файл из пакета!',
        'Required' => 'Требуется',
        'PrimaryKey' => 'Первичный ключ',
        'AutoIncrement' => 'Автоинкремент',
        'SQL' => 'SQL',
        'File differences for file %s' => 'Файл различий для файла %s',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Журнал производительности',
        'This feature is enabled!' => 'Данная функция активирована!',
        'Just use this feature if you want to log each request.' => 'Используйте эту функцию, если хотите заносить каждый запрос в журнал',
        'Activating this feature might affect your system performance!' =>
            'Включение этой функции может сказаться на производительности вашей системы',
        'Disable it here!' => 'Отключите ее здесь!',
        'Logfile too large!' => 'Файл журнала слишком большой!',
        'The logfile is too large, you need to reset it' => 'Логфайл слишком большой, необходимо его очистить',
        'Overview' => 'Обзор',
        'Range' => 'Диапазон',
        'last' => 'последние',
        'Interface' => 'Интерфейс',
        'Requests' => 'Запросов',
        'Min Response' => 'Минимальное время ответа',
        'Max Response' => 'Максимальное время ответа',
        'Average Response' => 'Среднее время ответа',
        'Period' => 'Период',
        'Min' => 'Мин',
        'Max' => 'Макс',
        'Average' => 'Среднее',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Управление фильтрами PostMaster',
        'Add filter' => 'Добавить фильтр',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            'Для распределения или фильтрации входящей электронной почты по заголовкам. Возможна также проверка и с использованием регулярных выражений.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Если вы хотите отфильтровать только по адресам электронной почты, используйте EMAILADDRESS:info@example.com в полях From, To или Cc.',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            'Если вы используете регулярные выражения, вы также можете использовать совпавшее в () значение как [***] в действии "Выставить"',
        'Delete this filter' => 'Удалить этот фильтр',
        'Add PostMaster Filter' => 'Добавить фильтр PostMaster-а',
        'Edit PostMaster Filter' => 'Редактировать фильтр PostMaster-а',
        'The name is required.' => 'Имя обязательно.',
        'Filter Condition' => 'Условие фильтра',
        'AND Condition' => 'Условие "И"(AND)',
        'Check email header' => 'Проверить заголовок письма',
        'Negate' => 'Отрицание ("НЕ")',
        'Look for value' => 'Посмотреть значение',
        'The field needs to be a valid regular expression or a literal word.' =>
            'Это поле должно быть корректным регулярным выражением либо буквально совпадающей строкой.',
        'Set Email Headers' => 'Выставить заголовки письма',
        'Set email header' => 'Выставить заголовок письма',
        'Set value' => 'Установить значение',
        'The field needs to be a literal word.' => 'Значение поля должно быть литералом.',

        # Template: AdminPriority
        'Priority Management' => 'Управление приоритетами',
        'Add priority' => 'Добавить приоритет',
        'Add Priority' => 'Создать приоритет',
        'Edit Priority' => 'Изменить приоритет',

        # Template: AdminProcessManagement
        'Process Management' => 'Управление Процессами',
        'Filter for Processes' => 'Фильтр для Процессов',
        'Create New Process' => 'Создать новый Процесс',
        'Deploy All Processes' => 'Синхронизировать все Процессы',
        'Here you can upload a configuration file to import a process to your system. The file needs to be in .yml format as exported by process management module.' =>
            'Здесь вы можете загрузить файл конфигурации для импорта Процесса в вашу систему. Файл должен быть в формате .yml (файл экспорта из модуля управления Процессами.',
        'Overwrite existing entities' => 'Переписывать существующие объекты',
        'Upload process configuration' => 'Загрузить конфигурацию Процесса',
        'Import process configuration' => 'Импортировать конфигурацию Процесса',
        'Example processes' => 'Пример процесса',
        'Here you can activate best practice example processes that are part of %s. Please note that some additional configuration may be required.' =>
            'Здесь вы можете попробовать, основанный на лучших практиках примерный процесс, который являются частью % S. Пожалуйста, обратите внимание, что  могут потребоваться некоторые дополнительные настройки.',
        'Import example process' => 'Импорт примерного процесса',
        'Do you want to benefit from processes created by experts? Upgrade to %s to be able to import some sophisticated example processes.' =>
            'Вы хотите извлечь выгоду из процессов, созданных специалистами? Обновитесь до % s, чтобы иметь возможность импортировать некоторые сложные примерные процессы .',
        'To create a new Process you can either import a Process that was exported from another system or create a complete new one.' =>
            'Для создания нового Процесса вы можете импортировать Процесс экспортированный из другой системы или создать полностью новый.',
        'Changes to the Processes here only affect the behavior of the system, if you synchronize the Process data. By synchronizing the Processes, the newly made changes will be written to the Configuration.' =>
            'Изменения в Процессах сделанные здесь будут актуальны после синхронизации данных Процесса. При синхронизации, все вновь внесенные изменения будут записаны в конигурационные файлы системы.',
        'Processes' => 'Процессы',
        'Process name' => 'Имя Процесса',
        'Print' => 'Печать',
        'Export Process Configuration' => 'Экспортировать конфигурацию Процесса',
        'Copy Process' => 'Скопировать процесс',

        # Template: AdminProcessManagementActivity
        'Cancel & close' => 'Отменить и закрыть',
        'Go Back' => 'Назад',
        'Please note, that changing this activity will affect the following processes' =>
            'Помните, что изменение этой Активности повлияет на следующие Процессы',
        'Activity' => 'Активность',
        'Activity Name' => 'Имя Активности',
        'Activity Dialogs' => 'Диалог Активности',
        'You can assign Activity Dialogs to this Activity by dragging the elements with the mouse from the left list to the right list.' =>
            'Вы можете назначить Диалоги Активности для этой Активности перетаскиванием элементов мышью из левого списка в правый.',
        'Ordering the elements within the list is also possible by drag \'n\' drop.' =>
            'Порядок элементов в списке изменяется перетаскиванием элементов (drag \'n\' drop)',
        'Filter available Activity Dialogs' => 'Фильтр доступных Диалогов Активности',
        'Available Activity Dialogs' => 'Доступные Диалоги Активности',
        'Create New Activity Dialog' => 'Создать новый Диалог Активности',
        'Assigned Activity Dialogs' => 'Назначить Диалоги Активности',
        'As soon as you use this button or link, you will leave this screen and its current state will be saved automatically. Do you want to continue?' =>
            'После использования этой кнопки или ссылки, вы можете выйти с этого экрана и его текущее состояние будет сохранено автоматически. Желаете продолжить?',

        # Template: AdminProcessManagementActivityDialog
        'Please note that changing this activity dialog will affect the following activities' =>
            'Помните, что изменение этого Диалога Активности повлияет на следующие Активности',
        'Please note that customer users will not be able to see or use the following fields: Owner, Responsible, Lock, PendingTime and CustomerID.' =>
            'Помните, что клиенты не смогут видеть или использовать следующие поля: Владелец, Ответственный, Блокировка, Время ожидания и CustomerID.',
        'The Queue field can only be used by customers when creating a new ticket.' =>
            'Поле Очередь/Получатель может быть использовано только клиентом при создании новой заявки.',
        'Activity Dialog' => 'Диалог Активности',
        'Activity dialog Name' => 'Имя Диалога Активности',
        'Available in' => 'Доступно в',
        'Description (short)' => 'Описание (краткое)',
        'Description (long)' => 'Описание (полное)',
        'The selected permission does not exist.' => 'Выбранные права не существуют',
        'Required Lock' => 'Требуется блокировка',
        'The selected required lock does not exist.' => 'Выбранное требование - "требуется блокировка" не существует.',
        'Submit Advice Text' => 'Текст подсказки кнопки Отправить',
        'Submit Button Text' => 'Название кнопки Отправить',
        'Fields' => 'Поля',
        'You can assign Fields to this Activity Dialog by dragging the elements with the mouse from the left list to the right list.' =>
            'Вы можете назначить поля для этого Диалога Активности перетаскиванием элементов мышью из левого списка в правый.',
        'Filter available fields' => 'Фильтр для доступных полей',
        'Available Fields' => 'Доступные поля',
        'Assigned Fields' => 'Назначенные поля',
        'Edit Details for Field' => 'Редактировать атрибуты поля',
        'ArticleType' => 'Тип сообщения',
        'Display' => 'Отобразить',
        'Edit Field Details' => 'Редактировать атрибуты поля',
        'Customer interface does not support internal article types.' => 'Клиентский интерфейс не поддерживает внутренний тип заметки',

        # Template: AdminProcessManagementPath
        'Path' => 'Схема',
        'Edit this transition' => 'Редактировать этот Переход',
        'Transition Actions' => 'Действия Перехода',
        'You can assign Transition Actions to this Transition by dragging the elements with the mouse from the left list to the right list.' =>
            'Вы можете назначить Действия Перехода для этого Перехода перетаскиванием элементов мышью из левого списка в правый.',
        'Filter available Transition Actions' => 'Фильтр для доступных Действий Перехода',
        'Available Transition Actions' => 'Доступные Действия Перехода',
        'Create New Transition Action' => 'Создать новое Действие Перехода',
        'Assigned Transition Actions' => 'Назначить Действия Перехода',

        # Template: AdminProcessManagementProcessAccordion
        'Activities' => 'Активности',
        'Filter Activities...' => 'Фильтр для Активностей...',
        'Create New Activity' => 'Создать новую Активность',
        'Filter Activity Dialogs...' => 'Фильтр для Диалогов Активности',
        'Transitions' => 'Переходы',
        'Filter Transitions...' => 'Фильтр для Переходов...',
        'Create New Transition' => 'Создать новый Переход',
        'Filter Transition Actions...' => 'Фильтр для Действий Переходов...',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => 'Редактировать процесс',
        'Print process information' => 'Печать информации о Процессе',
        'Delete Process' => 'Удалить Процесс',
        'Delete Inactive Process' => 'Удалить неактивный Процесс',
        'Available Process Elements' => 'Доступные элементы Процесса',
        'The Elements listed above in this sidebar can be moved to the canvas area on the right by using drag\'n\'drop.' =>
            'Элементы показанные в этом окне можно перенести на поле схемы справа используя перетаскивание мышью',
        'You can place Activities on the canvas area to assign this Activity to the Process.' =>
            'Вы можете поместить Активности на схему для назначения ее Процессу.',
        'To assign an Activity Dialog to an Activity drop the Activity Dialog element from this sidebar over the Activity placed in the canvas area.' =>
            'Для назначения Диалога Активности для этой Активности перетащите его из списка на значок Активности на схеме',
        'You can start a connection between to Activities by dropping the Transition element over the Start Activity of the connection. After that you can move the loose end of the arrow to the End Activity.' =>
            'Для начала организации связи между Активностями перетащите Переход на исходную Активность. После этого вы можете переместить конец стрелки к Активности мишени',
        'Actions can be assigned to a Transition by dropping the Action Element onto the label of a Transition.' =>
            'Действия могут быть назначены Переходу переиаскиванием Действия на метку(значок) Перехода',
        'Edit Process Information' => 'Редактировать информацию о Процессе',
        'Process Name' => 'Имя Процесса',
        'The selected state does not exist.' => 'Выбранное состояние не существует.',
        'Add and Edit Activities, Activity Dialogs and Transitions' => 'Добавление и Редактирование Активностей, Диалогов Активности и Переходов',
        'Show EntityIDs' => 'Схема связей в Процессе',
        'Extend the width of the Canvas' => 'Увеличит ширину схемы',
        'Extend the height of the Canvas' => 'Увеличить высоту схемы',
        'Remove the Activity from this Process' => 'Удалить Активность из этого Процесса',
        'Edit this Activity' => 'Редактировать Активность',
        'Save settings' => 'Сохранить настройки',
        'Save Activities, Activity Dialogs and Transitions' => 'Сохранить Активности, Диалоги Активности и Переходы',
        'Do you really want to delete this Process?' => 'Вы действительно желаете удалить этот Процесс?',
        'Do you really want to delete this Activity?' => 'Вы действительно желаете удалить эту Активность?',
        'Do you really want to delete this Activity Dialog?' => 'Вы действительно желаете удалить этот Диалог Активности?',
        'Do you really want to delete this Transition?' => 'Вы действительно желаете удалить этот Переход?',
        'Do you really want to delete this Transition Action?' => 'Вы действительно желаете удалить это Действие Перехода',
        'Do you really want to remove this activity from the canvas? This can only be undone by leaving this screen without saving.' =>
            'Вы действительно желаете удалить эту Актвность из схемы? Это можно отменить только покинув этот экран без сохранения.',
        'Do you really want to remove this transition from the canvas? This can only be undone by leaving this screen without saving.' =>
            'Вы действительно желаете удалить этот Переход из схемы? Это можно отменить только покинув этот экран без сохранения.',
        'Hide EntityIDs' => 'Скрыть EntityIDs',
        'Delete Entity' => 'Удалить Entity/Объект',
        'Remove Entity from canvas' => 'Удалить Entity со схемы',
        'This Activity is already used in the Process. You cannot add it twice!' =>
            'Эта Активность уже используется в этом Процессе. Ее нельзя использовать дважды!',
        'This Activity cannot be deleted because it is the Start Activity.' =>
            'Эту Активность нельзя удалить, т.к. она первая.',
        'This Transition is already used for this Activity. You cannot use it twice!' =>
            'Этот Переход уже используется для этой Активности. Его нельзя использовать дважды!',
        'This TransitionAction is already used in this Path. You cannot use it twice!' =>
            'Это Действие Перехода уже используется на этой Схеме. Его нельзя использовать дважды!',
        'Remove the Transition from this Process' => 'Удалить Переход из этого Процесса',
        'No TransitionActions assigned.' => 'Не назначено ни одного Действия Перехода.',
        'The Start Event cannot loose the Start Transition!' => '',
        'No dialogs assigned yet. Just pick an activity dialog from the list on the left and drag it here.' =>
            'Не назначено Диалога. Просто перетащите Диалог Активности из списка слева и поместите его сюда.',
        'An unconnected transition is already placed on the canvas. Please connect this transition first before placing another transition.' =>
            'Не связанные Переходы есть на схеме. Соедините их до помещения на схему нового(следующего).',

        # Template: AdminProcessManagementProcessNew
        'In this screen, you can create a new process. In order to make the new process available to users, please make sure to set its state to \'Active\' and synchronize after completing your work.' =>
            'На этом экране вы можете создать новый Процесс. Чтобы новый Процесс стал доступным пользователям, убедитесь, что его состояние установлено в \'Active\' и он синхронизирован с системой по окончании его создания.',

        # Template: AdminProcessManagementProcessPrint
        'Start Activity' => 'Начальная Активность',
        'Contains %s dialog(s)' => 'Содержит %s диалог(ов)',
        'Assigned dialogs' => 'Назначенные диалоги',
        'Activities are not being used in this process.' => 'Активности не используются в этом процессе',
        'Assigned fields' => 'Назначенные поля',
        'Activity dialogs are not being used in this process.' => 'Диалоги Активности не используются в этом процессе',
        'Condition linking' => 'Связывание условий',
        'Conditions' => 'Условия',
        'Condition' => 'Условие',
        'Transitions are not being used in this process.' => 'Переходы не используются в этом процессе',
        'Module name' => 'Имя модуля',
        'Transition actions are not being used in this process.' => 'Действия Переходов не используются в этом процессе',

        # Template: AdminProcessManagementTransition
        'Please note that changing this transition will affect the following processes' =>
            'Имейте в виду, что изменение в этом Переходе повлияет на следующие Процессы',
        'Transition' => 'Переход',
        'Transition Name' => 'Имя Перехода',
        'Type of Linking between Conditions' => 'Тип связи между Условиями',
        'Remove this Condition' => 'Удалить это Условие',
        'Type of Linking' => 'Тип связи',
        'Remove this Field' => 'Удалить это поле',
        'And can\'t be repeated on the same condition.' => 'Оператор AND/И не может повторно использоваться в одном и том же условии.',
        'Add a new Field' => 'Добавить новое поле',
        'Add New Condition' => 'Добавить новое Условие',

        # Template: AdminProcessManagementTransitionAction
        'Please note that changing this transition action will affect the following processes' =>
            'Имейте в виду, что изменение в этом Действии Перехода повлияет на следующие Процессы',
        'Transition Action' => 'Действие Перехода',
        'Transition Action Name' => 'Имя Действия Перехода',
        'Transition Action Module' => 'Модуль Действия Перехода',
        'Config Parameters' => 'Параметры конфигурации',
        'Remove this Parameter' => 'Удалить этот параметр',
        'Add a new Parameter' => 'Добавить новый параметр',

        # Template: AdminQueue
        'Manage Queues' => 'Управление очередями',
        'Add queue' => 'Добавить очередь',
        'Add Queue' => 'Добавить Очередь',
        'Edit Queue' => 'Изменить очередь',
        'A queue with this name already exists!' => 'Очередь с таким именем уже существует!',
        'Sub-queue of' => 'Подочередь для',
        'Unlock timeout' => 'Срок блокировки',
        '0 = no unlock' => '0 = не разблокировать',
        'Only business hours are counted.' => 'С учетом только рабочего времени.',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            'Если агент блокирует заявку и не закрывает её, когда подошел таймаут разблокировки, заявка будет разблокирована и станет доступна другим агентам.',
        'Notify by' => 'Уведомление от',
        '0 = no escalation' => '0 — без эскалации',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            'Если к новой заявке не добавляются контакты клиента, либо телефонные, либо внешний email, до истечения указанного здесь времени, заявка эскалируется.',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            'Когда к заявке добавляется сообщение, через клиентский портал или электронной почтой, счетчик времени эскалации по обновлению сбрасывается и начинает отсчитываться заново. Если к заявке не добавляются контакты клиента, либо телефонные, либо внешний email, до истечения указанного здесь времени, заявка эскалируется.',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            'Если заявка не закрыта до истечения указанного здесь времени разрешения, она эскалируется.',
        'Follow up Option' => 'Параметры повторных ответов',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            'Что делать с повторно полученными ответами клиента на уже закрытую заявку: открыть заново, отвергнуть или создать новую заявку.',
        'Ticket lock after a follow up' => 'Блокировка заявки после получения повторного ответа клиента',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            'Если заявка закрыта, а клиент снова посылает ответ, заявка будет заблокирована на старого владельца.',
        'System address' => 'Адрес системы',
        'Will be the sender address of this queue for email answers.' => 'Установка адреса отправителя для ответов в этой очереди.',
        'Default sign key' => 'Ключ подписи по умолчанию',
        'The salutation for email answers.' => 'Приветствие для писем',
        'The signature for email answers.' => 'Подпись для писем',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => 'Связь Очереди с Автоответами',
        'Filter for Queues' => 'Фильтр для Очередей',
        'Filter for Auto Responses' => 'Фильтр для Автоответов',
        'Auto Responses' => 'Автоответы',
        'Change Auto Response Relations for Queue' => 'Изменить Автоответ для Очереди',

        # Template: AdminQueueTemplates
        'Manage Template-Queue Relations' => 'Управление связями Шаблон - Очередь',
        'Filter for Templates' => 'Фильтр для Шаблонов',
        'Templates' => 'Шаблоны',
        'Change Queue Relations for Template' => 'Изменить связь Очереди с Шаблоном',
        'Change Template Relations for Queue' => 'Изменить связь Шаблона с Очередью',

        # Template: AdminRegistration
        'System Registration Management' => 'Управление регистрацией',
        'Edit details' => 'Редактировать информацию',
        'Show transmitted data' => 'Показать переданные данные',
        'Deregister system' => 'Удалить регистрацию системы',
        'Overview of registered systems' => 'Обзор зарегистрированных систем',
        'This system is registered with OTRS Group.' => 'Эта система зарегистрирована в OTRS Group.',
        'System type' => 'Тип системы',
        'Unique ID' => 'Уникальный индентификатор',
        'Last communication with registration server' => 'Последняя связь с регистрационным сервером',
        'System registration not possible' => 'Регистрация системы/System registration невозможна',
        'Please note that you can\'t register your system if OTRS Daemon is not running correctly!' =>
            'Обратите внимание, что вы не сможете зарегистрировать вашу систему если планировщик работает некорректно!',
        'Instructions' => 'Инструкции',
        'System deregistration not possible' => 'Разрегистрация системы невозможна',
        'Please note that you can\'t deregister your system if you\'re using the %s or having a valid service contract.' =>
            'Помните, что вы не можете разрегистрировать свою систему, если используете %s или имеете действующий контракт на поддержку.',
        'OTRS-ID Login' => 'Уч. запись OTRS-ID',
        'Read more' => 'Читайте дополнительно',
        'You need to log in with your OTRS-ID to register your system.' =>
            'Вы должны войти в систему со своей уч. записью OTRS-ID, чтобы зарегистрировать Вашу систему.',
        'Your OTRS-ID is the email address you used to sign up on the OTRS.com webpage.' =>
            'Ваша уч. запись OTRS-ID - это адрес электронной почты, Вы раньше регистрировались в системе на веб-странице OTRS.com.',
        'Data Protection' => 'Защита данных',
        'What are the advantages of system registration?' => 'Каковы преимущества регистрации системы?',
        'You will receive updates about relevant security releases.' => 'Вы получите обновления о соответствующих выпусках безопасности.',
        'With your system registration we can improve our services for you, because we have all relevant information available.' =>
            'С Вашей регистрацией мы можем улучшить наши службы для Вас, потому что мы имеем всю релевантную информацию в наличии.',
        'This is only the beginning!' => 'Это - только начало!',
        'We will inform you about our new services and offerings soon.' =>
            'Мы сообщим Вам о наших новых службах и предложениях быстрее.',
        'Can I use OTRS without being registered?' => 'Я могу использовать OTRS без регистрации?',
        'System registration is optional.' => 'Регистрация как дополнительная опция.',
        'You can download and use OTRS without being registered.' => 'Вы можете загрузить и использовать OTRS без регистрации.',
        'Is it possible to deregister?' => 'Действительно ли возможно удалить регистрацию системы (отрегистрироватся)?',
        'You can deregister at any time.' => 'В любое время Вы можете удалить регистрацию(отрегистрироватся).',
        'Which data is transfered when registering?' => 'Какие данные будут переданы, при регистрации?',
        'A registered system sends the following data to OTRS Group:' => 'Зарегистрированная система посылает следующие данные в OTRS Group:',
        'Fully Qualified Domain Name (FQDN), OTRS version, Database, Operating System and Perl version.' =>
            'Fully Qualified Domain Name (FQDN), версия OTRS, Базаданных, Операционная система и версия Perl',
        'Why do I have to provide a description for my system?' => 'Почему я должен предоставить описание для своей системы?',
        'The description of the system is optional.' => 'Описание системы (необязательно).',
        'The description and system type you specify help you to identify and manage the details of your registered systems.' =>
            'Описание и тип системы, который Вы определяете сами, это помогает Вам идентифицировать и управлять деталями своих зарегистрированных систем.',
        'How often does my OTRS system send updates?' => 'Как часто моя система OTRS отправляет обновления(отчеты)?',
        'Your system will send updates to the registration server at regular intervals.' =>
            'Ваша система отправит обновления (отчет) на сервер OTRS Group периодически.',
        'Typically this would be around once every three days.' => 'Обычно это происходит один раз в три дня.',
        'In case you would have further questions we would be glad to answer them.' =>
            'В случае, если у Вас возникли вопросы, мы будем рады ответить на них.',
        'Please visit our' => 'Посетите наш',
        'portal' => 'портал',
        'and file a request.' => 'и задайте вопрос.',
        'If you deregister your system, you will lose these benefits:' =>
            'Если вы откажетесь от регистрации вашей системы, вы потеряете следующие выгоды:',
        'You need to log in with your OTRS-ID to deregister your system.' =>
            'Вы должны войти в систему под своей уч. записью OTRS-ID, чтобы удалить зарегистрированую Вашу систему.',
        'OTRS-ID' => 'OTRS-ID',
        'You don\'t have an OTRS-ID yet?' => 'У Вас еще нет уч. записи OTRS-ID?',
        'Sign up now' => 'Зарегистрируйтесь сейчас',
        'Forgot your password?' => 'Забыли свой пароль?',
        'Retrieve a new one' => 'Получите новый',
        'This data will be frequently transferred to OTRS Group when you register this system.' =>
            'Эти данные будут часто передаваться OTRS Group, когда Вы зарегистрируете эту систему.',
        'Attribute' => 'Атрибут',
        'FQDN' => 'Полное имя домена',
        'OTRS Version' => 'Версия OTRS',
        'Operating System' => 'Операционная система',
        'Perl Version' => 'Версия Perl',
        'Optional description of this system.' => 'Необязательное описание этой системы',
        'Register' => 'Регистрация',
        'Deregister System' => 'Удалить зарегистрированиую систему(отрегистрировать)',
        'Continuing with this step will deregister the system from OTRS Group.' =>
            'Продолжите этот шаг и вы удалите зарегистрированиую ситему из скписка OTRS Group.',
        'Deregister' => 'Удалить регистрацию',
        'You can modify registration settings here.' => 'Вы можете изменить параметры регистрации здесь.',
        'Overview of transmitted data' => 'Обзор переданных данных',
        'There is no data regularly sent from your system to %s.' => 'Отсутствуют, регулярно пересылаемые, данные от вашей системы в %s.',
        'The following data is sent at minimum every 3 days from your system to %s.' =>
            'Следующие данные отсылаются, как минимум, каждые 3 дня из вашей системы в %s.',
        'The data will be transferred in JSON format via a secure https connection.' =>
            'Данные будут переданы в JSON формате через защищенное https соединение.',
        'System Registration Data' => 'Данные System Registration',
        'Support Data' => 'Данные для поддержки',

        # Template: AdminRole
        'Role Management' => 'Управление ролями',
        'Add role' => 'Добавить роль',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Создайте роль и добавьте в неё группы. Затем распределите роли по пользователям.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            'Роли не определены. Пожалуйста, используйте кнопку \'Добавить\' для создания новой роли.',
        'Add Role' => 'Добавить роль',
        'Edit Role' => 'Изменить роль',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => 'Связь ролей с группами',
        'Filter for Roles' => 'Фильтр для Ролей',
        'Roles' => 'Роли',
        'Select the role:group permissions.' => 'Выберите разрешения роль:группа.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            'Если ничего не выбрано, тогда в этой группе нет прав (для этой роли заявки не будут доступны).',
        'Change Role Relations for Group' => 'Изменить связи с ролями для группы',
        'Change Group Relations for Role' => 'Изменить связи с группами для роли',
        'Toggle %s permission for all' => 'Переключить разрешение «%s» для всех',
        'move_into' => 'переместить',
        'Permissions to move tickets into this group/queue.' => 'Права на перемещение заявок в эту группу/очередь.',
        'create' => 'создание',
        'Permissions to create tickets in this group/queue.' => 'Права на создание заявок в этой группе/очереди',
        'note' => 'заметка',
        'Permissions to add notes to tickets in this group/queue.' => 'Права на добавление заметок в заявки в этой группе/очереди.',
        'owner' => 'владелец',
        'Permissions to change the owner of tickets in this group/queue.' =>
            'Права на смену владельца заявок в этой группе/очереди.',
        'priority' => 'приоритет',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Права на смену приоритета заявок в этой группе/очереди',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => 'Связь агентов с ролями',
        'Add agent' => 'Добавить агента',
        'Filter for Agents' => 'Фильтр для Агентов',
        'Agents' => 'Агенты',
        'Manage Role-Agent Relations' => 'Связь ролей с агентами',
        'Change Role Relations for Agent' => 'Изменить связи с ролями для агента',
        'Change Agent Relations for Role' => 'Изменить связи с агентами для роли',

        # Template: AdminSLA
        'SLA Management' => 'Управление SLA',
        'Add SLA' => 'Добавить SLA',
        'Edit SLA' => 'Изменить SLA',
        'Please write only numbers!' => 'Сюда можно писать только числа!',

        # Template: AdminSMIME
        'S/MIME Management' => 'Управление S/MIME',
        'Add certificate' => 'Добавить сертификат',
        'Add private key' => 'Добавить закрытый ключ',
        'Filter for certificates' => 'Фильтр для сертификатов',
        'Filter for S/MIME certs' => 'Фильтр для  S/MIME сертификатов',
        'To show certificate details click on a certificate icon.' => 'Для показа подробностей сертификата нажмите на иконку сертификата.',
        'To manage private certificate relations click on a private key icon.' =>
            'Для управления личным сертификатом кликните по значку личного ключа.',
        'Here you can add relations to your private certificate, these will be embedded to the S/MIME signature every time you use this certificate to sign an email.' =>
            'Здесь вы можете добавить связи с вашим личным сертификатом, они будут включаться в подпись S/MIME каждый раз, когда вы используете этот сертификат для подписи письма.',
        'See also' => 'См. также',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'Вы можете редактировать сертификаты и закрытые ключи прямо на файловой системе',
        'Hash' => 'Хэш',
        'Handle related certificates' => 'Управлять связанными сертификатами',
        'Read certificate' => 'Прочитать сертификат',
        'Delete this certificate' => 'Удалить сертификат',
        'Add Certificate' => 'Добавить сертификат',
        'Add Private Key' => 'Добавить закрытый ключ',
        'Secret' => 'Пароль',
        'Related Certificates for' => 'Связанные сертификаты для',
        'Delete this relation' => 'Удалить эту связь',
        'Available Certificates' => 'Доступные сертификаты',
        'Relate this certificate' => 'Связать этот сертификат',

        # Template: AdminSMIMECertRead
        'Certificate details' => 'Подробности сертификата',

        # Template: AdminSalutation
        'Salutation Management' => 'Управление приветствиями',
        'Add salutation' => 'Добавить приветствие',
        'Add Salutation' => 'Добавить приветствие',
        'Edit Salutation' => 'Редактировать приветствие',
        'e. g.' => 'например,',
        'Example salutation' => 'Пример приветствия',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => 'Необходимо включить безопасный режим',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            'После установки системы обычно сразу же включают безопасный режим.',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            'Если безопасный режим не активирован, включите его через SysConfig, поскольку ваше приложение уже запущено.',

        # Template: AdminSelectBox
        'SQL Box' => 'Запрос SQL',
        'Here you can enter SQL to send it directly to the application database. It is not possible to change the content of the tables, only select queries are allowed.' =>
            'Здесь вы можете ввести SQL-запрос и напрямую отправить его в базу данных приложения. Невозможно изменение данных в таблицах, только выборка.',
        'Here you can enter SQL to send it directly to the application database.' =>
            'Здесь вы можете ввести SQL-запрос и напрямую отправить его в базу данных приложения.',
        'Only select queries are allowed.' => 'Разрешены только запросы на выборку данных.',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            'Ошибка синтаксиса в вашем SQL-запросе, пожалуйста, проверьте его еще раз. ',
        'There is at least one parameter missing for the binding. Please check it.' =>
            'Отсутствует как минимум один параметр привязки. Пожалуйста, проверьте его.',
        'Result format' => 'Формат вывода',
        'Run Query' => 'Выполнить запрос',
        'Query is executed.' => 'Запрос выполняется.',

        # Template: AdminService
        'Service Management' => 'Управление сервисами',
        'Add service' => 'Добавить сервис',
        'Add Service' => 'Добавить Сервис',
        'Edit Service' => 'Изменить Сервис',
        'Sub-service of' => 'Подсервис сервиса',

        # Template: AdminSession
        'Session Management' => 'Управление сеансами',
        'All sessions' => 'Все сеансы',
        'Agent sessions' => 'Сеансы агента',
        'Customer sessions' => 'Сеансы клиента',
        'Unique agents' => 'Уникальные агенты',
        'Unique customers' => 'Уникальные клиенты',
        'Kill all sessions' => 'Завершить все сеансы',
        'Kill this session' => 'Завершить сеанс',
        'Session' => 'Сеанс',
        'Kill' => 'Завершить',
        'Detail View for SessionID' => 'Подробный показ для ID сеанса',

        # Template: AdminSignature
        'Signature Management' => 'Управление подписями',
        'Add signature' => 'Добавить подпись',
        'Add Signature' => 'Добавить Подпись',
        'Edit Signature' => 'Изменить подпись',
        'Example signature' => 'Пример подписи',

        # Template: AdminState
        'State Management' => 'Управление состояниями',
        'Add state' => 'Добавить состояние',
        'Please also update the states in SysConfig where needed.' => 'Пожалуйста, обновите также состояния и в Конфигурации Системы (там, где необходимо).',
        'Add State' => 'Добавить состояние',
        'Edit State' => 'Изменить состояние',
        'State type' => 'Тип состояния',

        # Template: AdminSupportDataCollector
        'This data is sent to OTRS Group on a regular basis. To stop sending this data please update your system registration.' =>
            'Эти данные отправляются в OTRS Group на регулярной основе. Чтобы прекратить отправку этих данных, обновите регистрацию вашей системы.',
        'You can manually trigger the Support Data sending by pressing this button:' =>
            'Вы можете вручную запустить передачу данных поддержки нажатием на эту кнопку:',
        'Send Update' => 'Послать обновление',
        'Sending Update...' => 'Отправка обновления ...',
        'Support Data information was successfully sent.' => 'Анные Support Data были успешно отправлены.',
        'Was not possible to send Support Data information.' => 'Было не возможно отправить Support Data.',
        'Update Result' => 'Результат обновления',
        'Currently this data is only shown in this system.' => 'В настоящее время эти данные только отображаются в этой системе.',
        'A support bundle (including: system registration information, support data, a list of installed packages and all locally modified source code files) can be generated by pressing this button:' =>
            'Пакет поддержки (включая сведения о регистрации системы, данные поддержки, список установленных пакетов и локально изменённые файлы с исходным кодом) можно сгенерировать нажатием этой кнопки:',
        'Generate Support Bundle' => 'Сгенерировать пакет поддержки',
        'Generating...' => 'Выполняется...',
        'It was not possible to generate the Support Bundle.' => 'Не удалось сгенерировать Пакет поддержки/ Support Bundle.',
        'Generate Result' => 'Результат генерации',
        'Support Bundle' => 'Пакет поддержки',
        'The mail could not be sent' => 'Почта не может быть отправлена',
        'The support bundle has been generated.' => 'Пакет поддержки будет сгенерирован.',
        'Please choose one of the following options.' => 'Пожалуйста, выберите одну из следующих опций.',
        'Send by Email' => 'Отправить электронной почтой',
        'The support bundle is too large to send it by email, this option has been disabled.' =>
            'Пакет поддержки слишком велик для отправки электронной почтой, эта функция будет отключена.',
        'The email address for this user is invalid, this option has been disabled.' =>
            'Электронный адрес получателя неверный, эта функция будет отключена.',
        'Sending' => 'Отправка',
        'The support bundle will be sent to OTRS Group via email automatically.' =>
            'Пакет поддержки будет выслан в OTRS Group по электронной почте автоматически.',
        'Download File' => 'Загрузить файл.',
        'A file containing the support bundle will be downloaded to the local system. Please save the file and send it to the OTRS Group, using an alternate method.' =>
            'Файл, содержащий пакет поддержки будет загружен в вашу локальную систему. Сохраните файл и отправьте его в OTRS Group, используя альтернативный способ.',
        'Error: Support data could not be collected (%s).' => 'Ошибка: данные для поддержки не могут быть собраны (%s).',
        'Details' => 'Подробно',

        # Template: AdminSysConfig
        'SysConfig' => 'Конфигурация системы',
        'Navigate by searching in %s settings' => 'Навигация с помощью поиска в %s настройках',
        'Navigate by selecting config groups' => 'Навигация с помощью выбора групп конфигурации',
        'Download all system config changes' => 'Скачать все изменения в конфигурации системы',
        'Export settings' => 'Экспортировать настройки',
        'Load SysConfig settings from file' => 'Загрузить настройки SysConfig из файла',
        'Import settings' => 'Импортировать настройки',
        'Import Settings' => 'Импортировать Настройки',
        'Please enter a search term to look for settings.' => 'Пожалуйста, введите поисковый запрос для поиска настроек.',
        'Subgroup' => 'Подгруппа',
        'Elements' => 'Элементы',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => 'Редактировать настройки конфигурации',
        'This setting is read only.' => 'Этот параметр изменить нельзя - только для чтения',
        'This config item is only available in a higher config level!' =>
            'Этот пункт конфигурации доступен только при более высоком уровне допуска к конфигурации, чем у вас!',
        'Reset this setting' => 'Сбросить эту настройку',
        'Error: this file could not be found.' => 'Ошибка: такой файл не найден.',
        'Error: this directory could not be found.' => 'Ошибка: такой каталог не найден.',
        'Error: an invalid value was entered.' => 'Ошибка: было введено некорректное значение.',
        'Content' => 'Содержание',
        'Remove this entry' => 'Удалить эту запись',
        'Add entry' => 'Добавить запись',
        'Remove entry' => 'Удалить запись',
        'Add new entry' => 'Добавить новую запись',
        'Delete this entry' => 'Удалить эту запись',
        'Create new entry' => 'Создать новую запись',
        'New group' => 'Новая группа',
        'Group ro' => 'Группа только для чтения',
        'Readonly group' => 'Группа только для чтения',
        'New group ro' => 'Новая группа только для чтения',
        'Loader' => 'Загрузчик',
        'File to load for this frontend module' => 'Файл, который подгружать для этого модуля интерфейса',
        'New Loader File' => 'Новый файл загрузчика',
        'NavBarName' => 'Имя в меню',
        'NavBar' => 'Меню',
        'LinkOption' => 'Параметры в теге ссылки',
        'Block' => 'Раздел',
        'AccessKey' => 'Клавиша доступа',
        'Add NavBar entry' => 'Добавить пункт меню',
        'Year' => 'Год',
        'Month' => 'Месяц',
        'Day' => 'День',
        'Invalid year' => 'Некорректный год',
        'Invalid month' => 'Некорректный месяц',
        'Invalid day' => 'Некорректный день',
        'Show more' => 'Показать еще',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'Управление системными адресами электронной почты',
        'Add system address' => 'Добавить системный адрес',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            'Вся входящая электронная почта с этим адресом в To или Cc будет направлена в выбранную очередь.',
        'Email address' => 'Адрес электронной почты',
        'Display name' => 'Отображаемое имя',
        'Add System Email Address' => 'Добавить системный адрес электронной почты',
        'Edit System Email Address' => 'Редактировать системный адрес электронной почты',
        'The display name and email address will be shown on mail you send.' =>
            'Отображаемое имя и адрес электронной почты будут показываться в отправляемой вами почте.',

        # Template: AdminSystemMaintenance
        'System Maintenance Management' => 'Управление обслуживанием системы',
        'Schedule New System Maintenance' => 'Новый график технического обслуживания системы',
        'Schedule a system maintenance period for announcing the Agents and Customers the system is down for a time period.' =>
            'Задать график технического обслуживания системы для оповещения агентов и клиентов об отключении системы на определенный период времени.',
        'Some time before this system maintenance starts the users will receive a notification on each screen announcing about this fact.' =>
            'За некоторое время до начала периода техобслуживания пользователи получат уведомление на каждом экране интерфейса об этом событии.',
        'Start date' => 'Дата начала',
        'Stop date' => 'Дата окончания',
        'Delete System Maintenance' => 'Удалить график техобслуживания.',
        'Do you really want to delete this scheduled system maintenance?' =>
            'Вы действительно желаете удалить этот график техобслуживания?',

        # Template: AdminSystemMaintenanceEdit
        'Edit System Maintenance %s' => 'Редактировать график техобслуживания %s',
        'Edit System Maintenance information' => 'Редактировать информацию о технической поддержке',
        'Date invalid!' => 'Некорректная дата!',
        'Login message' => 'Сообщение при входе',
        'Show login message' => 'Показать сообщение при входе',
        'Notify message' => 'Сообщение оповещения',
        'Manage Sessions' => 'Управление сеансами',
        'All Sessions' => 'Все сеансы',
        'Agent Sessions' => 'Сеансы агента',
        'Customer Sessions' => 'Сеансы клиента',
        'Kill all Sessions, except for your own' => 'Завершить все сеансы, кроме вашего собственного',

        # Template: AdminTemplate
        'Manage Templates' => 'Управление шаблонами',
        'Add template' => 'Добавить шаблон',
        'A template is a default text which helps your agents to write faster tickets, answers or forwards.' =>
            'Шаблон - текст по умолчанию, который помогает Вашим агентам писать более быстрые заявки, ответы или перенаправления.',
        'Don\'t forget to add new templates to queues.' => 'Не забудьте добавить новые шаблоны к очередям',
        'Add Template' => 'Добавить шаблон',
        'Edit Template' => 'Изменить шаблон',
        'A standard template with this name already exists!' => 'Стандартный шаблон с таким именем уже существует!',
        'Create type templates only supports this smart tags' => 'Создайте шаблоны типа, только поддерживает это умные теги',
        'Example template' => 'Пример шаблона',
        'The current ticket state is' => 'Текущее состояние заявки',
        'Your email address is' => 'Ваш email адрес ',

        # Template: AdminTemplateAttachment
        'Manage Templates <-> Attachments Relations' => 'Управление связью Шаблоны - Вложения',
        'Filter for Attachments' => 'Фильтр для вложений',
        'Change Template Relations for Attachment' => 'Изменить связь Шаблона с Вложением',
        'Change Attachment Relations for Template' => 'Изменить связь Вложения с Шаблоном',
        'Toggle active for all' => 'Включить для всех',
        'Link %s to selected %s' => 'Связать %s с выбранным %s',

        # Template: AdminType
        'Type Management' => 'Управление типами заявок',
        'Add ticket type' => 'Добавить тип заявки',
        'Add Type' => 'Добавить тип',
        'Edit Type' => 'Редактировать тип',
        'A type with this name already exists!' => 'Тип с таким именем уже существует!',

        # Template: AdminUser
        'Agents will be needed to handle tickets.' => 'Для обработки заявок потребуются агенты.',
        'Don\'t forget to add a new agent to groups and/or roles!' => 'Не забудьте добавить новых агентов в группы и/или роли!',
        'Please enter a search term to look for agents.' => 'Пожалуйста, введите поисковый запрос для поиска агентов.',
        'Last login' => 'Последний вход',
        'Switch to agent' => 'Переключиться на агента.',
        'Add Agent' => 'Добавить агента',
        'Edit Agent' => 'Редактирование агента',
        'Firstname' => 'Имя',
        'Lastname' => 'Фамилия',
        'A user with this username already exists!' => 'Пользователь с таким именем уже существует!',
        'Will be auto-generated if left empty.' => 'Будет автоматически сгенерирован, если поле оставлено пустым.',
        'Start' => 'Начало',
        'End' => 'Окончание',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => 'Связь агентов с группами',
        'Change Group Relations for Agent' => 'Изменить связи с группами для агента',
        'Change Agent Relations for Group' => 'Изменить связи с агентами для группы',

        # Template: AgentBook
        'Address Book' => 'Адресная книга',
        'Search for a customer' => 'Искать клиента',
        'Add email address %s to the To field' => 'Добавить адрес электронной почты %s в поле To',
        'Add email address %s to the Cc field' => 'Добавить адрес электронной почты %s в поле Cc',
        'Add email address %s to the Bcc field' => 'Добавить адрес электронной почты %s в поле Bcc',
        'Apply' => 'Применить',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => 'Информация о клиенте',

        # Template: AgentCustomerInformationCenterSearch
        'Customer User' => 'Учетная запись клиента',

        # Template: AgentCustomerSearch
        'Duplicated entry' => 'Дублирующаяся запись',
        'This address already exists on the address list.' => 'Такой адрес уже существует в списке адресов.',
        'It is going to be deleted from the field, please try again.' => 'Данные будут удалены из поля, пожалуйста, попробуйте еще раз.',

        # Template: AgentCustomerTableView
        'Note: Customer is invalid!' => 'Замечание: неверный Клиент!',

        # Template: AgentDaemonInfo
        'The OTRS Daemon is a daemon process that performs asynchronous tasks, e.g. ticket escalation triggering, email sending, etc.' =>
            'Планировщик OTRS это такой процесс, который выполняет асинхронные/фоновые задачи, например включение эскалации заявки, отправка почты и прочее.',
        'A running OTRS Daemon is mandatory for correct system operation.' =>
            'Наличие запущенного Планировщика OTRS обязательно для корректной работы системы.',
        'Starting the OTRS Daemon' => 'Запуск Планировщика OTRS',
        'Make sure that the file \'%s\' exists (without .dist extension). This cron job will check every 5 minutes if the OTRS Daemon is running and start it if needed.' =>
            'Убедитесь, что файл  \'%s\' существует (без расширения .dist). Это задание cron будет каждые 5 минут проверять, что Планировщик OTRS запущен и запускает его при необходимости.',
        'Execute \'%s start\' to make sure the cron jobs of the \'otrs\' user are active.' =>
            'Выполните команду  \'%s start\' чтобы убедиться, что cron от имени пользователя \'otrs\' запущен.',
        'After 5 minutes, check that the OTRS Daemon is running in the system (\'bin/otrs.Daemon.pl status\').' =>
            'По истечении 5 минут проверьте, что Планировщик OTRS работает (\'bin/otrs.Daemon.pl status\').',

        # Template: AgentDashboard
        'Dashboard' => 'Дайджест',

        # Template: AgentDashboardCalendarOverview
        'in' => 'в',

        # Template: AgentDashboardCommon
        'Available Columns' => 'Колонки, доступные для отображения',
        'Visible Columns (order by drag & drop)' => 'Отображаемые (порядок устанавливается перетаскиванием)',

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => 'Эскалированные заявки',

        # Template: AgentDashboardCustomerUserList
        'Customer information' => 'Информация о клиенте',
        'Phone ticket' => 'Заявка по телефону',
        'Email ticket' => 'Заявка по почте',
        'Start Chat' => 'Начать чат',
        '%s open ticket(s) of %s' => '%s открытых заявок из %s',
        '%s closed ticket(s) of %s' => '%s закрытых заявок из %s',
        'New phone ticket from %s' => 'Новая телефонная заявка от %s',
        'New email ticket to %s' => 'Новая заявка по почте в %s',
        'Start chat' => 'Начать чат',

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s доступен!',
        'Please update now.' => 'Обновите сейчас.',
        'Release Note' => 'Примечание к релизу',
        'Level' => 'Уровень',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Опубликовано %s назад.',

        # Template: AgentDashboardStats
        'The configuration for this statistic widget contains errors, please review your settings.' =>
            'Настройки виджета статистики содержат ошибки, проверьте их пожалуйста.',
        'Download as SVG file' => 'Загрузить как SVG файл.',
        'Download as PNG file' => 'Загрузить как PNG файл.',
        'Download as CSV file' => 'Загрузить как CSV файл.',
        'Download as Excel file' => 'Загрузить как Excel файл.',
        'Download as PDF file' => 'Загрузить как PDF файл.',
        'Grouped' => 'Сгруппированная',
        'Stacked' => 'С накоплением',
        'Expanded' => 'Развернутая',
        'Stream' => 'Поток',
        'Please select a valid graph output format in the configuration of this widget.' =>
            'Пожалуйста, выберите правильный формат графического файла для вывода в настройках этого виджета.',
        'The content of this statistic is being prepared for you, please be patient.' =>
            'Содержимое статистики готовится для вас, подождите.',
        'This statistic can currently not be used because its configuration needs to be corrected by the statistics administrator.' =>
            'Этот отчет не может быть в настоящее время использован, так как его настройки должны быть исправлены администратором отчетности.',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => 'Мои заблокированные заявки',
        'My watched tickets' => 'Заявки в моем списке наблюдения',
        'My responsibilities' => 'Заявки, где я ответственный',
        'Tickets in My Queues' => 'Заявки в моих очередях',
        'Tickets in My Services' => 'Заявки в Моих сервисах',
        'Service Time' => 'Время обслуживания',
        'Remove active filters for this widget.' => 'Удалить активные фильтры для этого виджета.',

        # Template: AgentDashboardTicketQueueOverview
        'Totals' => 'Итого',

        # Template: AgentDashboardUserOnline
        'out of office' => 'вне офиса',
        'Selected agent is not available for chat' => 'Выбранный агент недоступен для чата',

        # Template: AgentDashboardUserOutOfOffice
        'until' => 'до',

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => 'Заявка была заблокирована',
        'Undo & close' => 'Отменить и закрыть',

        # Template: AgentInfo
        'Info' => 'Информация',
        'To accept some news, a license or some changes.' => 'Чтобы принять какие-нибудь новости, лицензию или какие-то изменения.',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Связать объект: %s',
        'go to link delete screen' => 'перейти к удалению связи',
        'Select Target Object' => 'Выберите целевой объект',
        'Link Object' => 'Связать объект',
        'with' => 'с',
        'Unlink Object: %s' => 'Отменить привязку объекта: %s',
        'go to link add screen' => 'перейти к добавлению связи',

        # Template: AgentPreferences
        'Edit your preferences' => 'Измените ваши личные настройки',
        'Did you know? You can help translating OTRS at %s.' => 'А вы знаете? Вы можете помочь в локализации OTRS c помощью %s.',

        # Template: AgentSpelling
        'Spell Checker' => 'Проверка орфографии',
        'spelling error(s)' => 'Орфографические ошибки',
        'Apply these changes' => 'Применить изменения',

        # Template: AgentStatisticsAdd
        'Statistics » Add' => 'Отчеты » Добавить',
        'Add New Statistic' => 'Добавить новый отчет',
        'Dynamic Matrix' => 'Динамическая матрица',
        'Tabular reporting data where each cell contains a singular data point (e. g. the number of tickets).' =>
            'Табличное представления данных, где каждая ячейка содержит уникальные понятия (например, количество заявок).',
        'Dynamic List' => 'Динамический список',
        'Tabular reporting data where each row contains data of one entity (e. g. a ticket).' =>
            'Табличное представления данных, где каждая строка содержит данные, относящиеся к одной сущности/понятию (например, заявка).',
        'Static' => 'Статический',
        'Complex statistics that cannot be configured and may return non-tabular data.' =>
            'Комплексный отчет, который не может быть сконфигурирован и может содержать не табличные данные.',
        'General Specification' => 'Общая характеристика',
        'Create Statistic' => 'Создать отчет',

        # Template: AgentStatisticsEdit
        'Statistics » Edit %s%s — %s' => 'Отчеты » Редактировать %s%s — %s',
        'Run now' => 'Выполнить сейчас',
        'Statistics Preview' => 'Предпросмотр отчета',
        'Save statistic' => 'Сохранить отчет',

        # Template: AgentStatisticsImport
        'Statistics » Import' => 'Отчеты » Импорт',
        'Import Statistic Configuration' => 'Импортировать настройки Отчета',

        # Template: AgentStatisticsOverview
        'Statistics » Overview' => 'Отчеты » Обзор',
        'Statistics' => 'Отчеты',
        'Run' => 'Выполнить',
        'Edit statistic "%s".' => 'Редактировать отчет "%s".',
        'Export statistic "%s"' => 'Экспортировать отчет "%s"',
        'Export statistic %s' => 'Экспортировать отчет %s',
        'Delete statistic "%s"' => 'Удалить отчет "%s".',
        'Delete statistic %s' => 'Удалить отчет %s',
        'Do you really want to delete this statistic?' => 'Вы действительно желаете удалить этот отчет?',

        # Template: AgentStatisticsView
        'Statistics » View %s%s — %s' => 'Отчеты » Просмотр %s%s — %s',
        'Statistic Information' => '',
        'Sum rows' => 'Сумма строк',
        'Sum columns' => 'Сумма столбцов',
        'Show as dashboard widget' => 'Показать как виджет Дайджеста',
        'Cache' => 'Кэш',
        'This statistic contains configuration errors and can currently not be used.' =>
            'Этот отчет содержит ошибки в настройках и не может в настоящее время использоваться.',

        # Template: AgentTicketActionCommon
        'Change Free Text of %s%s' => 'Изменить Free Text для %s%s',
        'Change Owner of %s%s' => 'Изменить владельца для %s%s',
        'Close %s%s' => 'Закрыть %s%s',
        'Add Note to %s%s' => 'Добавить заметку/сообщение к %s%s',
        'Set Pending Time for %s%s' => 'Установить время ожидания до %s%s',
        'Change Priority of %s%s' => 'Изменить приоритет для %s%s',
        'Change Responsible of %s%s' => 'Изменить ответственного для %s%s',
        'All fields marked with an asterisk (*) are mandatory.' => 'Все поля отмеченные (*) являются обязательными',
        'Service invalid.' => 'Некорректный сервис.',
        'New Owner' => 'Новый владелец',
        'Please set a new owner!' => 'Пожалуйста, задайте нового владельца',
        'New Responsible' => 'Новый ответственный',
        'Next state' => 'Следующее состояние',
        'For all pending* states.' => 'Для всех состояний "ожидает ..."',
        'Add Article' => 'Добавить заметку',
        'Create an Article' => 'Создать заметку/сообщение',
        'Inform agents' => 'Уведомить агентов',
        'Inform involved agents' => 'Уведомить участвующих агентов',
        'Here you can select additional agents which should receive a notification regarding the new article.' =>
            'Здесь вы можете выбрать дополнительных агентов, которые получат уведомление в зависимости от нового сообщения/заметки',
        'Text will also be received by:' => 'Текст будет (также) получен:',
        'Spell check' => 'Проверка орфографии',
        'Text Template' => 'Текстовый шаблон',
        'Setting a template will overwrite any text or attachment.' => 'Создание шаблона перезаписывает любой существующий текст или вложение',
        'Note type' => 'Тип заметки/сообщения',

        # Template: AgentTicketBounce
        'Bounce %s%s' => '',
        'Bounce to' => 'Перенаправить на',
        'You need a email address.' => 'Нужно указать адрес электронной почты.',
        'Need a valid email address or don\'t use a local email address.' =>
            'Требуется корректный адрес электронной почты либо не указывайте локальный адрес.',
        'Next ticket state' => 'Следующее состояние заявки',
        'Inform sender' => 'Информировать отправителя',
        'Send mail' => 'Отправить письмо!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Массовое действие',
        'Send Email' => 'Отправить письмо',
        'Merge to' => 'Объединить с',
        'Invalid ticket identifier!' => 'Некорректный идентификатор заявки!',
        'Merge to oldest' => 'Объединить с самым старым',
        'Link together' => 'Связать',
        'Link to parent' => 'Связать с родителем',
        'Unlock tickets' => 'Разблокировать заявки',

        # Template: AgentTicketCompose
        'Compose Answer for %s%s' => 'Создать ответ для %s%s',
        'Please include at least one recipient' => 'Пожалуйста, включите хотя бы одного получателя.',
        'Remove Ticket Customer' => 'Удалить клиента-инициатора заявки',
        'Please remove this entry and enter a new one with the correct value.' =>
            'Пожалуйста, удалите эту запись и введите новую с корректным значением.',
        'Remove Cc' => 'Удалить из копии',
        'Remove Bcc' => 'Удалить из скрытой копии',
        'Address book' => 'Адресная книга',
        'Date Invalid!' => 'Неверная дата!',

        # Template: AgentTicketCustomer
        'Change Customer of %s%s' => 'Изменить клиента для %s%s',
        'Customer user' => 'Учетная запись клиента',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => 'Создать заявку по email',
        'Example Template' => 'Пример шаблона',
        'From queue' => 'Из очереди',
        'To customer user' => 'Клиенту',
        'Please include at least one customer user for the ticket.' => 'Укажите, пожалуйста, хотя бы одного клиента',
        'Select this customer as the main customer.' => 'Выбрать этого клиента главным клиентом',
        'Remove Ticket Customer User' => 'Удалить клиента заявки',
        'Get all' => 'Получить всех',

        # Template: AgentTicketEmailOutbound
        'Outbound Email for %s%s' => 'Исходящее письмо для %s%s',

        # Template: AgentTicketEscalation
        'Ticket %s: first response time is over (%s/%s)!' => 'Заявка %s: время первого ответа истекло (%s/%s)!',
        'Ticket %s: first response time will be over in %s/%s!' => 'Заявка %s: время первого ответа истекает через %s/%s!',
        'Ticket %s: update time will be over in %s/%s!' => 'Заявка %s: время обновления истекает через %s/%s!',
        'Ticket %s: solution time is over (%s/%s)!' => 'Заявка %s: время решения истекло (%s/%s)!',
        'Ticket %s: solution time will be over in %s/%s!' => 'Заявка %s: время решения истекает через %s/%s!',

        # Template: AgentTicketForward
        'Forward %s%s' => 'Переслать %s%s',

        # Template: AgentTicketHistory
        'History of %s%s' => 'История для %s%s',
        'History Content' => 'Содержимое истории',
        'Zoom view' => 'Подробный показ',

        # Template: AgentTicketMerge
        'Merge %s%s' => 'Объединить %s%s',
        'Merge Settings' => 'Настройки объединения',
        'You need to use a ticket number!' => 'Вам необходимо использовать номер заявки!',
        'A valid ticket number is required.' => 'Требуется корректный номер заявки.',
        'Need a valid email address.' => 'Требуется верный почтовый адрес.',

        # Template: AgentTicketMove
        'Move %s%s' => 'Переслать %s%s',
        'New Queue' => 'Новая очередь',

        # Template: AgentTicketOverviewMedium
        'Select all' => 'Выбрать все',
        'No ticket data found.' => 'Не найдено данных о заявках.',
        'Open / Close ticket action menu' => 'Меню действия по заявке - Открыть / Закрыть ',
        'Select this ticket' => 'Выбрать эту заявку',
        'First Response Time' => 'Время до первого ответа',
        'Update Time' => 'Время до изменения заявки',
        'Solution Time' => 'Время до решения заявки',
        'Move ticket to a different queue' => 'Переместить заявку в другую очередь',
        'Change queue' => 'Сменить очередь',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Изменить параметры поиска',
        'Remove active filters for this screen.' => 'Удалить активные фильтры для этого экрана.',
        'Tickets per page' => 'Заявок на страницу',

        # Template: AgentTicketOverviewSmall
        'Reset overview' => 'Сбросить настройки просмотра',
        'Column Filters Form' => 'Форма фильтра колонок',

        # Template: AgentTicketPhone
        'Split Into New Phone Ticket' => 'Разделить с созданием новой телефонной заявки',
        'Save Chat Into New Phone Ticket' => 'Сохранить переписку чата в новой телефонной заявке',
        'Create New Phone Ticket' => 'Создать телефонную заявку',
        'Please include at least one customer for the ticket.' => 'Пожалуйста, введите хотя бы одного клиента для заявки.',
        'To queue' => 'В очередь',
        'Chat protocol' => 'Протокол чата',
        'The chat will be appended as a separate article.' => 'Содержание чата будет добавлено в виде отдельной заметки.',

        # Template: AgentTicketPhoneCommon
        'Phone Call for %s%s' => 'Телефонный звонок для %s%s',

        # Template: AgentTicketPlain
        'View Email Plain Text for %s%s' => 'Показать исходный формат письма / Plain Text для %s%s',
        'Plain' => 'Исходный',
        'Download this email' => 'Скачать это письмо',

        # Template: AgentTicketProcess
        'Create New Process Ticket' => 'Создать новую процессную заявку',
        'Process' => 'Процесс',

        # Template: AgentTicketProcessSmall
        'Enroll Ticket into a Process' => 'Зарегистрировать заявку в Процессе',

        # Template: AgentTicketSearch
        'Search template' => 'Шаблон поиска',
        'Create Template' => 'Создать шаблон',
        'Create New' => 'Создать новый',
        'Profile link' => 'Ссылка на шаблон',
        'Save changes in template' => 'Сохранить изменения в шаблоне',
        'Filters in use' => 'Используемые атрибуты фильтра',
        'Additional filters' => 'Дополнительные атрибуты фильтра',
        'Add another attribute' => 'Добавить атрибут поиска',
        'Output' => 'Вывод результатов',
        'Fulltext' => 'Полнотекстовый',
        'Remove' => 'Удалить',
        'Searches in the attributes From, To, Cc, Subject and the article body, overriding other attributes with the same name.' =>
            'Искать в свойствах От, Для, Копия, Тема и тело сообщения, перекрывая другие атрибуты с тем же именем.',
        'Customer User Login' => 'Логин клиента',
        'Attachment Name' => 'Имя вложения',
        '(e. g. m*file or myfi*)' => '(например, m*file or myfi*)',
        'Created in Queue' => 'Создана в очереди',
        'Lock state' => 'Состояние блокировки',
        'Watcher' => 'Наблюдатель',
        'Article Create Time (before/after)' => 'Время создания сообщения (до/после)',
        'Article Create Time (between)' => 'Время создания сообщения (между)',
        'Ticket Create Time (before/after)' => 'Время создания заявки (до/после)',
        'Ticket Create Time (between)' => 'Время создания заявки (между)',
        'Ticket Change Time (before/after)' => 'Время изменения заявки (до/после)',
        'Ticket Change Time (between)' => 'Время изменения заявки (между)',
        'Ticket Last Change Time (before/after)' => 'Время последнего изменения заявки (до/после)',
        'Ticket Last Change Time (between)' => 'Время последнего изменения заявки (между)',
        'Ticket Close Time (before/after)' => 'Время закрытия заявки (до/после)',
        'Ticket Close Time (between)' => 'Время закрытия заявки (между)',
        'Ticket Escalation Time (before/after)' => 'Время эскалации заявки (до/после)',
        'Ticket Escalation Time (between)' => 'Время эскалации заявки (между)',
        'Archive Search' => 'Поиск в архиве',
        'Run search' => 'Выполнить поиск',

        # Template: AgentTicketZoom
        'Article filter' => 'Фильтр сообщений',
        'Article Type' => 'Тип сообщения',
        'Sender Type' => 'Тип отправителя',
        'Save filter settings as default' => 'Сохранить условия фильтра для показа по умолчанию',
        'Event Type Filter' => 'Фильтр типов событий',
        'Event Type' => 'Тип события',
        'Save as default' => 'Сохранить, как значение по умолчанию',
        'Archive' => 'Архив',
        'This ticket is archived.' => 'Заявка перемещена в архив.',
        'Locked' => 'Блокировка',
        'Accounted time' => 'Потраченное на заявку время',
        'Linked Objects' => 'Связанные объекты',
        'Change Queue' => 'Сменить очередь',
        'There are no dialogs available at this point in the process.' =>
            'Нет диалогов доступных в этой части процесса',
        'This item has no articles yet.' => 'Этот элемент пока не имеет заметок.',
        'Ticket Timeline View' => 'Хронологический вид заявки',
        'Article Overview' => 'Обзор заметок/сообщений',
        'Article(s)' => 'сообщений',
        'Page' => 'Страница',
        'Add Filter' => 'Добавить фильтр',
        'Set' => 'Установить',
        'Reset Filter' => 'Сбросить фильтр',
        'Show one article' => 'Отобразить одно сообщение',
        'Show all articles' => 'Отобразить все сообщения',
        'Show Ticket Timeline View' => 'Показать заявку в хронологическом виде',
        'Unread articles' => 'Непрочитанные сообщения',
        'No.' => '№',
        'Important' => 'Важно',
        'Unread Article!' => 'Непрочитанные сообщения!',
        'Incoming message' => 'Входящее сообщение',
        'Outgoing message' => 'Исходящее сообщение',
        'Internal message' => 'Внутреннее сообщение',
        'Resize' => 'Изменить размер',
        'Mark this article as read' => 'Пометить это сообщение как прочитанное',
        'Show Full Text' => 'Показать текст полностью',
        'Full Article Text' => 'Полный текст заметки/сообщения',
        'No more events found. Please try changing the filter settings.' =>
            'Больше событий не найдено. Попробуйте изменить параметры фильтра.',
        'by' => 'кем:',
        'To open links in the following article, you might need to press Ctrl or Cmd or Shift key while clicking the link (depending on your browser and OS).' =>
            'Для открытия ссылки в следующем сообщении/заметке необходимо нажать и удерживать клавишу Ctrl или Cmd или Shift и кликнуть по ссылке (зависит от вашего браузера и ОС).',
        'Close this message' => 'Закрыть это сообщение',
        'Article could not be opened! Perhaps it is on another article page?' =>
            'Заметка не может быть открыта! Возможно, она на другой странице заметок?',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => 'Для защиты конфиденциальности, содержимое из внешнего источника было заблокировано',
        'Load blocked content.' => 'Загрузить заблокированное содержимое.',

        # Template: ChatStartForm
        'First message' => 'Первое сообщение',

        # Template: CustomerError
        'Traceback' => 'Отслеживание',

        # Template: CustomerFooter
        'Powered by' => 'Используется',

        # Template: CustomerFooterJS
        'One or more errors occurred!' => 'Произошла одна или несколько ошибок!',
        'Close this dialog' => 'Закрыть этот диалог',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            'Невозможо открыть всплывающее окно. Пожалуйста, отключите для этого приложения любые блокировки всплывающих окон.',
        'If you now leave this page, all open popup windows will be closed, too!' =>
            'Если вы сейчас покинете эту страницу, будут также закрыты и все всплывающие окна!',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            'Всплывающее окно с таким экраном уже открыто. Хотите закрыть то и открыть вместо него это?',
        'There are currently no elements available to select from.' => 'Отсутствуют элементы доступные для выбора',
        'Please turn off Compatibility Mode in Internet Explorer!' => 'Выключите Compatibility Mode/Режим совместимости в Internet Explorer!',
        'The browser you are using is too old.' => 'Используемый вами браузер слишком стар.',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            'OTRS работает с большим списком браузеров, пожалуйста, обновитесь до одного из них.',
        'Please see the documentation or ask your admin for further information.' =>
            'Обратитесь к документации или спросите своего администратора для получения дополнительной информации.',
        'Switch to mobile mode' => 'Переключится на мобильный режим',
        'Switch to desktop mode' => 'Переключится на режим ПК',
        'Not available' => 'Не доступно',
        'Clear all' => 'Очистить всё',
        'Clear search' => 'Очистить параметры поиска',
        '%s selection(s)...' => '%s выборка(и)',
        'and %s more...' => 'и %s более...',
        'Filters' => 'Фильтры',
        'Confirm' => 'Подтвердить',

        # Template: CustomerLogin
        'JavaScript Not Available' => 'JavaScript не доступен',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            'Для работы с OTRS вам потребуется включить JavaScript в вашем браузере.',
        'Browser Warning' => 'Предупреждение о браузере',
        'One moment please, you are being redirected...' => 'Подождите, вы будете перенаправлены...',
        'Login' => 'Вход',
        'User name' => 'Имя пользователя',
        'Your user name' => 'Ваше имя пользователя',
        'Your password' => 'Ваш пароль',
        'Forgot password?' => 'Забыли пароль?',
        '2 Factor Token' => '',
        'Your 2 Factor Token' => '',
        'Log In' => 'Войти',
        'Not yet registered?' => 'Хотите зарегистрироваться?',
        'Request new password' => 'Прислать новый пароль',
        'Your User Name' => 'Логин',
        'A new password will be sent to your email address.' => 'Новый пароль будет отправлен на ваш адрес электронной почты',
        'Create Account' => 'Создать учетную запись',
        'Please fill out this form to receive login credentials.' => 'Пожалуйста, заполните эту форму, чтобы получить учетные данные для входа',
        'How we should address you' => 'Как мы должны к вам обращаться',
        'Your First Name' => 'Ваше Имя',
        'Your Last Name' => 'Ваша Фамилия',
        'Your email address (this will become your username)' => 'Ваш адрес электронной почты (он станет вашим именем пользователя)',

        # Template: CustomerNavigationBar
        'Incoming Chat Requests' => 'Входящие запросы на Чат',
        'You have unanswered chat requests' => 'Есть неотвеченные вопросы чата',
        'Edit personal preferences' => 'Редактировать персональные настройки',
        'Logout %s %s' => 'Выход из системы %s %s',

        # Template: CustomerRichTextEditor
        'Split Quote' => '',

        # Template: CustomerTicketMessage
        'Service level agreement' => 'Соглашение об уровне сервиса',

        # Template: CustomerTicketOverview
        'Welcome!' => 'Добро пожаловать!',
        'Please click the button below to create your first ticket.' => 'Пожалуйста, нажмите на кнопку ниже, чтобы создать вашу первую заявку.',
        'Create your first ticket' => 'Создать вашу первую заявку.',

        # Template: CustomerTicketSearch
        'Profile' => 'Параметры',
        'e. g. 10*5155 or 105658*' => 'например, 10*5155 или 105658*',
        'Customer ID' => 'ID клиента',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => 'Полнотекстовый поиск в заявке (например, "Иван*в" или "Петр*")',
        'Recipient' => 'Получатель',
        'Carbon Copy' => 'Копия',
        'e. g. m*file or myfi*' => 'например,  m*file или myfi*',
        'Types' => 'Типы',
        'Time restrictions' => 'Временные рамки',
        'No time settings' => 'Без указания времени',
        'Only tickets created' => 'Заявки созданные',
        'Only tickets created between' => 'Заявки, созданные в промежутке',
        'Ticket archive system' => 'Система архивирования заявок',
        'Save search as template?' => 'Сохранить параметры поиска как шаблон?',
        'Save as Template?' => 'Сохранить как шаблон?',
        'Save as Template' => 'Сохранить как шаблон',
        'Template Name' => 'Имя шаблона',
        'Pick a profile name' => 'Выберите имя шаблона',
        'Output to' => 'Вывести как',

        # Template: CustomerTicketSearchResultShort
        'of' => 'из',
        'Search Results for' => 'Результаты поиска для',
        'Remove this Search Term.' => 'Удалить эти условия поска.',

        # Template: CustomerTicketZoom
        'Start a chat from this ticket' => 'Начать чат из этой заявки',
        'Expand article' => 'Развернуть сообщение',
        'Information' => 'Сведения',
        'Next Steps' => 'Далее',
        'Reply' => 'Ответить',
        'Chat Protocol' => 'Протокол чата',

        # Template: DashboardEventsTicketCalendar
        'All-day' => 'Целодневный',
        'Sunday' => 'Воскресенье',
        'Monday' => 'Понедельник',
        'Tuesday' => 'Вторник',
        'Wednesday' => 'Среда',
        'Thursday' => 'Четверг',
        'Friday' => 'Пятница',
        'Saturday' => 'Суббота',
        'Su' => 'Вс',
        'Mo' => 'Пн',
        'Tu' => 'Вт',
        'We' => 'Ср',
        'Th' => 'Чт',
        'Fr' => 'Пт',
        'Sa' => 'Сб',
        'Event Information' => 'Информация о событии',
        'Ticket fields' => 'Поля заявки',
        'Dynamic fields' => 'Динамические поля',

        # Template: Datepicker
        'Invalid date (need a future date)!' => 'Некорректная дата (нужна дата в будущем)!',
        'Invalid date (need a past date)!' => 'Некорректная дата (нужна дата в прошлом)!',
        'Previous' => 'Назад',
        'Open date selection' => 'Открыть выбор даты',

        # Template: Error
        'Oops! An Error occurred.' => 'Ой! Возникла ошибка.',
        'You can' => 'Вы можете',
        'Send a bugreport' => 'Отправить сообщение об ошибке',
        'go back to the previous page' => 'перейти на предыдущую страницу',
        'Error Details' => 'Детали ошибки',

        # Template: FooterJS
        'Please enter at least one search value or * to find anything.' =>
            'Пожалуйста, введите хотя бы одно значение для поиска, или * (звездочку) для поиска чего угодно.',
        'Please remove the following words from your search as they cannot be searched for:' =>
            'Удалите, пожалуйста, следующие слова из поискового запроса, так как поиск по ним невозможен:',
        'Please check the fields marked as red for valid inputs.' => 'Проверьте поля отмеченные красным цветом и исправьте их.',
        'Please perform a spell check on the the text first.' => 'Выполните сначала проверку правописания.',
        'Slide the navigation bar' => '',
        'Unavailable for chat' => 'Недоступен для чата',
        'Available for internal chats only' => 'Доступен только для внутренних чатов',
        'Available for chats' => 'Доступен для чатов',
        'Please visit the chat manager' => 'Обратитесь к управлению чатами',
        'New personal chat request' => 'Запрос на новый персональный чат',
        'New customer chat request' => 'Запрос на новый чат с клиентом',
        'New public chat request' => 'Запрос на новый общедоступный чат',
        'New activity' => 'Новое обновление',
        'New activity on one of your monitored chats.' => 'Новое обновление на одном из отслеживаемых вами чатов.',
        'Do you really want to continue?' => 'Вы действительно желаете продолжить?',
        'Information about the OTRS Daemon' => 'Информация о Планировщике OTRS',
        'This feature is part of the %s.  Please contact us at %s for an upgrade.' =>
            'Эта возможность является составной частью %s. Пожалуйста свяжитесь с нами в %s.  для обновления.',
        'Find out more about the %s' => 'Найдите ещё о %s',

        # Template: Header
        'You are logged in as' => 'Вы вошли как',

        # Template: Installer
        'JavaScript not available' => 'JavaScript недоступен',
        'Step %s' => 'Шаг %s',
        'Database Settings' => 'Настройки базы данных',
        'General Specifications and Mail Settings' => 'Общие указания и настройки почты',
        'Finish' => 'Закончить',
        'Welcome to %s' => 'Добро пожаловать в %s',
        'Web site' => 'Веб-сайт',
        'Mail check successful.' => 'Почта проверена успешно.',
        'Error in the mail settings. Please correct and try again.' => 'Ошибка в настройках почты. Пожалуйста, исправьте и попробуйте снова.',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => 'Конфигурация исходящей почты',
        'Outbound mail type' => 'Тип исходящей почты',
        'Select outbound mail type.' => 'Выберите протокол/способ для отправки исходящей почты.',
        'Outbound mail port' => 'Порт исходящей почты',
        'Select outbound mail port.' => 'Выберите порт исходящей почты.',
        'SMTP host' => 'SMTP-сервер',
        'SMTP host.' => 'SMTP-сервер.',
        'SMTP authentication' => 'SMTP-аутентификация',
        'Does your SMTP host need authentication?' => 'SMTP сервер требует аутентификацию?',
        'SMTP auth user' => 'Пользователь для SMTP-аутентификации',
        'Username for SMTP auth.' => 'Имя пользователя для использования в SMTP-аутентификации.',
        'SMTP auth password' => 'Пароль для SMTP-аутентификации',
        'Password for SMTP auth.' => 'Пароль для использования в SMTP-аутентификации',
        'Configure Inbound Mail' => 'Конфигурация входящей почты',
        'Inbound mail type' => 'Тип входящей почты',
        'Select inbound mail type.' => 'Выберите протокол/способ для получения входящей почты.',
        'Inbound mail host' => 'Почтовый сервер для входящей почты',
        'Inbound mail host.' => 'Почтовый сервер для входящей почты.',
        'Inbound mail user' => 'Имя пользователя для входящей почты',
        'User for inbound mail.' => 'Имя пользователя для входящей почты.',
        'Inbound mail password' => 'Пароль для входящей почты',
        'Password for inbound mail.' => 'Пароль для входящей почты.',
        'Result of mail configuration check' => 'Результаты проверки настроек почты',
        'Check mail configuration' => 'Проверить настройки почты',
        'Skip this step' => 'Пропустить этот шаг',

        # Template: InstallerDBResult
        'Database setup successful!' => 'База данных настроена успешно!',

        # Template: InstallerDBStart
        'Install Type' => 'Тип установки',
        'Create a new database for OTRS' => 'Создать новую базу данных для OTRS',
        'Use an existing database for OTRS' => 'Использовать существующую базу данных OTRS',

        # Template: InstallerDBmssql
        'Database name' => 'Имя базы данных',
        'Check database settings' => 'Проверить настройки БД',
        'Result of database check' => 'Результат проверки базы данных',
        'Database check successful.' => 'База данных проверена успешно.',
        'Database User' => 'Пользователь базы данных',
        'New' => 'Новое',
        'A new database user with limited permissions will be created for this OTRS system.' =>
            'Для этой системы OTRS будет создан новый пользователь базы данных с ограниченными правами.',
        'Repeat Password' => 'Повторите пароль',
        'Generated password' => 'Сгенерированный пароль',

        # Template: InstallerDBmysql
        'Passwords do not match' => 'Пароли не подходят',

        # Template: InstallerDBoracle
        'SID' => 'SID',
        'Port' => 'Порт',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'Чтобы использовать OTRS, выполните в командной строке под правами root следующую команду:',
        'Restart your webserver' => 'Перезапустите ваш веб-сервер',
        'After doing so your OTRS is up and running.' => 'После этих действий ваша система OTRS станет запущенной и работающей.',
        'Start page' => 'Главная страница',
        'Your OTRS Team' => 'Команда разработчиков OTRS',

        # Template: InstallerLicense
        'Don\'t accept license' => 'Не принимаю условия лицензии',
        'Accept license and continue' => 'Принять условия лицензии и продолжить',

        # Template: InstallerSystem
        'SystemID' => 'SystemID',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            'Идентификатор системы. Каждый номер заявки и каждый идентификатор HTTP-сессии - содержат этот номер.',
        'System FQDN' => 'Системное FQDN',
        'Fully qualified domain name of your system.' => 'Полное доменное имя вашей системы.',
        'AdminEmail' => 'Адрес администратора',
        'Email address of the system administrator.' => 'Адрес электронной почты администратора',
        'Organization' => 'Организация',
        'Log' => 'Журнал',
        'LogModule' => 'Модуль журнала ',
        'Log backend to use.' => 'Какой бэкенд использовать для собственно записи журнала.',
        'LogFile' => 'Файл журнала',
        'Webfrontend' => 'Веб-интерфейс',
        'Default language' => 'Язык по умолчанию',
        'Default language.' => 'Язык по умолчанию.',
        'CheckMXRecord' => 'Проверять записи MX',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            'Вручную вводимые адреса электронной почты будут проверяться на MX-записи в DNS. Не используйте эту опцию, если ваш DNS-сервер медленный или не разрешает публичные адреса.',

        # Template: LinkObject
        'Object#' => 'Объект#',
        'Add links' => 'Добавить связи',
        'Delete links' => 'Удалить связи',

        # Template: Login
        'Lost your password?' => 'Забыли свой пароль',
        'Request New Password' => 'Запросить новый пароль',
        'Back to login' => 'Вернуться к странице входа в систему',

        # Template: MobileNotAvailableWidget
        'Feature not available' => 'Эта возможность не доступна',
        'Sorry, but this feature of OTRS is currently not available for mobile devices. If you\'d like to use it, you can either switch to desktop mode or use your regular desktop device.' =>
            'К сожалению, эта функция OTRS в настоящее время недоступна для мобильных устройств. Если вы желаете пользоваться ею, то необходимо или переключиться в режим ПК или воспользоваться стационарным компьютером.',

        # Template: Motd
        'Message of the Day' => 'Новость дня',

        # Template: NoPermission
        'Insufficient Rights' => 'Недостаточно прав',
        'Back to the previous page' => 'Обратно на предыдущую страницу',

        # Template: Pagination
        'Show first page' => 'Показать первую страницу',
        'Show previous pages' => 'Показать предыдущие страницы',
        'Show page %s' => 'Показать страницу %s',
        'Show next pages' => 'Показать следующие страницы',
        'Show last page' => 'Показать последнюю страницу',

        # Template: PictureUpload
        'Need FormID!' => 'Требуется FormID!',
        'No file found!' => 'Файл не найден!',
        'The file is not an image that can be shown inline!' => 'Этот файл не может быть отображен как часть текста!',

        # Template: PreferencesNotificationEvent
        'Notification' => 'Уведомление',
        'No user configurable notifications found.' => 'Отсутствуют уведомления, настраиваемые пользователем.',
        'Receive messages for notification \'%s\' by transport method \'%s\'.' =>
            'Получить сообщения для уведомления \'%s\'  с помощью метода доставки \'%s\'.',

        # Template: PublicDefault
        'Welcome' => 'Добро пожаловать',

        # Template: Test
        'OTRS Test Page' => 'Тестовая страница OTRS',
        'Welcome %s %s' => 'Добро пожаловать %s %s',
        'Counter' => 'Счетчик',

        # Template: Warning
        'Go back to the previous page' => 'Перейти на предыдущую страницу',

        # Perl Module: Kernel/Modules/AdminCustomerUser.pm
        'New phone ticket' => 'Новая телефонная заявка',
        'New email ticket' => 'Новая заявка по email',

        # Perl Module: Kernel/Modules/AdminDynamicFieldCheckbox.pm
        'Currently' => 'В настоящий момент',

        # Perl Module: Kernel/Modules/AdminGenericAgent.pm
        'Please remove the following words because they cannot be used for the ticket selection:' =>
            'Удалите, пожалуйста, следующие слова, так как они не могут использоваться для выбора заявок:',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceWebservice.pm
        'Web service "%s" updated!' => 'Web-сервис "%s" обновлен!',
        'Web service "%s" created!' => 'Web-сервис "%s" создан!',
        'Web service "%s" deleted!' => 'Web-сервис "%s" удален!',

        # Perl Module: Kernel/Modules/AdminNotificationEvent.pm
        'Agent who owns the ticket' => 'Агент, который владеет заявкой',
        'Agent who is responsible for the ticket' => 'Агент, который является ответственным за заявку',
        'All agents watching the ticket' => 'Все агенты наблюдающие за заявкой',
        'All agents with write permission for the ticket' => 'Все агенты с правами -w/записи на заявку',
        'All agents subscribed to the ticket\'s queue' => 'Все агенты подписанные на эту очередь',
        'All agents subscribed to the ticket\'s service' => 'Все агенты подписанные на этот сервис',
        'All agents subscribed to both the ticket\'s queue and service' =>
            'Все агенты подписанные на этот сервис и эту очередь',
        'Customer of the ticket' => 'Клиент заявки',

        # Perl Module: Kernel/Modules/AdminPackageManager.pm
        'Package not verified due a communication issue with verification server!' =>
            'Пакет не проверен из-за неполадок со связью с сервером верификации!',

        # Perl Module: Kernel/Modules/AgentDashboardCommon.pm
        'Statistic' => 'Отчет',

        # Perl Module: Kernel/Modules/AgentLinkObject.pm
        'Can not delete link with %s!' => 'Невозможно удалить связь с %s!',
        'Can not create link with %s!' => 'Невозможно создать связь с %s!',
        'Object already linked as %s.' => 'Объект уже связан с %s.',

        # Perl Module: Kernel/Modules/AgentStatistics.pm
        'Statistic could not be imported.' => 'Отчет не может быть импортирован',
        'Please upload a valid statistic file.' => 'Пожалуйста загрузите правильный файл отчета.',

        # Perl Module: Kernel/Modules/AgentTicketActionCommon.pm
        'No subject' => 'Тема отсутствует',
        'Previous Owner' => 'Предыдущий владелец',

        # Perl Module: Kernel/Modules/AgentTicketBulk.pm
        'Ticket is locked by another agent and will be ignored!' => 'Заявка заблокирована другим агентом и будет пропущена!',

        # Perl Module: Kernel/Modules/AgentTicketPhone.pm
        '%s has left the chat.' => '%s покинул чат.',
        'This chat has been closed and will be removed in %s hours.' => 'Этот чат был закрыт и будет удален в течение %s часов.',

        # Perl Module: Kernel/Modules/AgentTicketPrint.pm
        'printed by' => 'Напечатал:',
        'Ticket Dynamic Fields' => 'Динамические поля заявки',

        # Perl Module: Kernel/Modules/AgentTicketProcess.pm
        'Pending Date' => 'Ожидать до',
        'for pending* states' => 'для состояний "ожидает ..."',

        # Perl Module: Kernel/Modules/AgentTicketSearch.pm
        'Invalid Users' => 'Недействительные пользователи',

        # Perl Module: Kernel/Modules/AgentTicketZoom.pm
        'We are sorry, you do not have permissions anymore to access this ticket in its current state. ' =>
            'Извините, но у вас больше нет прав на доступ к этой заявке в её текущем состоянии.',
        'Fields with no group' => 'Поля для которых не указана группа',

        # Perl Module: Kernel/Modules/CustomerTicketSearch.pm
        'Please remove the following words because they cannot be used for the search:' =>
            'Удалите, пожалуйста, следующие слова, так как они не могут использоваться для поиска:',

        # Perl Module: Kernel/Modules/Installer.pm
        'Error: Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            'Ошибка: Убедитесь что ваша СУБД принимает пакеты размером больше %s MB (текущее значение размера пакета - до %s MB). Измените значение параметра max_allowed_packet для вашей СУБД во избежание ошибок.',
        'Error: Please set the value for innodb_log_file_size on your database to at least %s MB (current: %s MB, recommended: %s MB). For more information, please have a look at %s.' =>
            'Ошибка: Установите значение параметра  innodb_log_file_size для вашей СУБД по крайней мере %s MB (текущее: %s MB, рекомендуемое: %s MB) Более подробно смотрите в %s.',

        # Perl Module: Kernel/Output/HTML/Dashboard/TicketGeneric.pm
        'This ticket has no title or subject' => 'У этой заявки отсутствует Тема',

        # Perl Module: Kernel/Output/HTML/Dashboard/UserOnline.pm
        'This user is currently offline' => 'Этот пользователь в настоящее время не подключен',
        'This user is currently active' => 'Этот пользователь в настоящее время активен',
        'This user is currently away' => 'Этот пользователь в настоящее время отсутствует',
        'This user is currently unavailable' => 'Этот пользователь в настоящее время недоступен',

        # Perl Module: Kernel/Output/HTML/Layout.pm
        'We are sorry, you do not have permissions anymore to access this ticket in its current state.' =>
            'Извините, но у вас больше нет прав на доступ к этой заявке в её текущем состоянии.',
        ' You can take one of the next actions:' => 'Вы можете выполнить одно из следующих действий:',

        # Perl Module: Kernel/Output/HTML/Notification/AgentOTRSBusiness.pm
        '%s Upgrade to %s now! %s' => '%s Обновление до %s сейчас! %s',

        # Perl Module: Kernel/Output/HTML/Notification/CustomerSystemMaintenanceCheck.pm
        'A system maintenance period will start at: ' => 'Период технического обслуживания начнется в:',

        # Perl Module: Kernel/Output/HTML/Notification/DaemonCheck.pm
        'Please contact your administrator!' => 'Пожалуйста, свяжитесь с вашим администратором!',

        # Perl Module: Kernel/Output/HTML/Preferences/Language.pm
        '(in process)' => '(выполняется)',

        # Perl Module: Kernel/Output/HTML/Preferences/OutOfOffice.pm
        'Please specify an end date that is after the start date.' => 'Пожалуйста, укажите Дату окончания раньше даты начала.',

        # Perl Module: Kernel/Output/HTML/Preferences/Password.pm
        'Please supply your new password!' => 'Пожалуйста, укажите ваш новый пароль!',

        # Perl Module: Kernel/Output/HTML/Statistics/View.pm
        'X-axis' => 'Ось X',
        'Y-axis' => 'Ось Y',
        'No past complete or the current+upcoming complete relative time value selected.' =>
            'Ни прошлого, ни текущего + наступающее относительного времени завершения не выбрано.',
        'The selected time period is larger than the allowed time period.' =>
            'Выбранный период времени больше, чем разрешенный период.',
        'No time scale value available for the current selected time scale value on the X axis.' =>
            '',
        'The selected date is not valid.' => 'Выбранная дата неверна.',
        'The selected end time is before the start time.' => 'Указанное время окончания раньше времени начала.',
        'There is something wrong with your time selection.' => 'какая-то ошибка при указании времени.',
        'Please select only one element or allow modification at stat generation time.' =>
            'Пожалуйста, выберите только один параметр или снимите флаг \'Fixed\' для времени создания отчета.',
        'Please select at least one value of this field or allow modification at stat generation time.' =>
            'Пожалуйста, выберите хотя бы один параметр или снимите флаг \'Fixed\' для времени создания отчета.',
        'Please select one element for the X-axis.' => 'Выберите один элемент для оси X.',
        'You can only use one time element for the Y axis.' => 'Вы можете выбрать только один параметр времени для оси Y.',
        'You can only use one or two elements for the Y axis.' => 'Вы можете выбрать только один или два параметра для оси Y.',
        'Please select at least one value of this field.' => 'Пожалуйста, выберите хотя бы одно значение для этого поля.',
        'Please provide a value or allow modification at stat generation time.' =>
            'Пожалуйста, укажите значение или снимите флаг \'Fixed\' для времени создания отчета.',
        'Please select a time scale.' => 'Пожалуйста, выберите шкалу времени.',
        'Your reporting time interval is too small, please use a larger time scale.' =>
            'Период отчетности слишком мал, укажите больший интервал.',
        'Please remove the following words because they cannot be used for the ticket restrictions: %s.' =>
            'Удалите, пожалуйста, следующие слова, так как они не могут использоваться для фильтра заявок: %s.',

        # Perl Module: Kernel/Output/HTML/TicketOverviewMenu/Sort.pm
        'Order by' => 'Сортировка по',

        # Perl Module: Kernel/System/Stats/Dynamic/Ticket.pm
        'State Type' => 'Тип состояния',
        'Created Priority' => 'Созданный Приоритет',
        'Created State' => 'Созданное Состояние',
        'CustomerUserLogin' => 'Логин клиента',
        'Create Time' => 'Время создания',
        'Close Time' => 'Время закрытия',
        'Escalation - First Response Time' => 'Эскалация - Время Первого Отклика',
        'Escalation - Update Time' => 'Эскалация - Время обновления',
        'Escalation - Solution Time' => 'Эскалация - Время решения',
        'Agent/Owner' => 'Агент (владелец)',
        'Created by Agent/Owner' => 'Создано агентом (владельцем)',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketAccountedTime.pm
        'Evaluation by' => 'Оценка по',
        'Ticket/Article Accounted Time' => 'Затраты рабочего времени на заявку или сообщение',
        'Ticket Create Time' => 'Время создания заявки',
        'Ticket Close Time' => 'Время закрытия заявки',
        'Accounted time by Agent' => 'Затраты рабочего времени по агентам',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketList.pm
        'Attributes to be printed' => 'Атрибуты для печати',
        'Sort sequence' => 'Порядок сортировки',
        'State Historic' => 'Состояние истории',
        'State Type Historic' => 'Тип состояния истории',
        'Historic Time Range' => 'Период истории',

        # Perl Module: Kernel/System/Stats/Static/StateAction.pm
        'Days' => 'Дни',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/TablePresence.pm
        'Table Presence' => 'Наличие таблиц',
        'Internal Error: Could not open file.' => 'Внутренняя ошибка: невозможно открыть файл.',
        'Table Check' => 'Таблица проверки',
        'Internal Error: Could not read file.' => 'Внутренняя ошибка: невозможно прочитать файл.',
        'Tables found which are not present in the database.' => 'Найдены таблицы, которые не существуют в базе данных.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Size.pm
        'Database Size' => 'Размер базы данных',
        'Could not determine database size.' => 'Не удалось определить размер базы данных.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Version.pm
        'Database Version' => 'Версия СУБД',
        'Could not determine database version.' => 'Не удалось определить версию базы данных.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Charset.pm
        'Client Connection Charset' => 'Кодировка клиентского соединения',
        'Setting character_set_client needs to be utf8.' => 'Значение кодировки для клиента должно быть UNICODE or UTF8.',
        'Server Database Charset' => 'Кодировка для сервера базы данных',
        'Setting character_set_database needs to be UNICODE or UTF8.' => 'Значение кодировки для сервера базы данных должно быть UNICODE или UTF8. ',
        'Table Charset' => 'Кодировка для таблицы',
        'There were tables found which do not have utf8 as charset.' => 'Найдены таблицы в кодировке, отличной от utf8.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/InnoDBLogFileSize.pm
        'InnoDB Log File Size' => 'Размер файла журнала InnoDB ',
        'The setting innodb_log_file_size must be at least 256 MB.' => 'Значение параметра innodb_log_file_size должно быть больше 256 МВ.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/MaxAllowedPacket.pm
        'Maximum Query Size' => 'Максимальный размер запроса',
        'The setting \'max_allowed_packet\' must be higher than 20 MB.' =>
            'Значение параметра \'max_allowed_packet\' должно быть больше 20 МВ.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Performance.pm
        'Query Cache Size' => 'Query Cache Size',
        'The setting \'query_cache_size\' should be used (higher than 10 MB but not more than 512 MB).' =>
            'Значение параметра \'query_cache_size\' следует использовать (больше 10 МВ, но не более 512МВ).',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/StorageEngine.pm
        'Default Storage Engine' => 'Метод доступа по умолчанию',
        'Table Storage Engine' => 'Метод доступа к таблицам',
        'Tables with a different storage engine than the default engine were found.' =>
            'Обнаружены таблицы с методом доступа отличающимся от установленного по умолчанию.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Version.pm
        'MySQL 5.x or higher is required.' => 'Требуется MySQL 5.х или выше',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/oracle/NLS.pm
        'NLS_LANG Setting' => 'Параметр NLS_LANG',
        'NLS_LANG must be set to al32utf8 (e.g. GERMAN_GERMANY.AL32UTF8).' =>
            'NLS_LANG должен быть установлен в al32utf8 (например,  GERMAN_GERMANY.AL32UTF8).',
        'NLS_DATE_FORMAT Setting' => 'Параметр NLS_DATE_FORMAT',
        'NLS_DATE_FORMAT must be set to \'YYYY-MM-DD HH24:MI:SS\'.' => 'NLS_DATE_FORMAT должен быть задан в виде \'YYYY-MM-DD HH24:MI:SS\'.',
        'NLS_DATE_FORMAT Setting SQL Check' => 'Параметр NLS_DATE_FORMAT для SQL Check',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Charset.pm
        'Setting client_encoding needs to be UNICODE or UTF8.' => 'Значение кодировки для клиента должно быть UNICODE or UTF8.',
        'Setting server_encoding needs to be UNICODE or UTF8.' => 'Значение кодировки для сервера должно быть UNICODE или UTF8. ',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/DateStyle.pm
        'Date Format' => 'Формат даты',
        'Setting DateStyle needs to be ISO.' => 'Значение DateStyle должно быть  ISO.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Version.pm
        'PostgreSQL 8.x or higher is required.' => 'PostgreSQL 8.x или выше необходим.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskPartitionOTRS.pm
        'OTRS Disk Partition' => ' раздел диска для OTRS',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpace.pm
        'Disk Usage' => 'Использование дисковой памяти.',
        'The partition where OTRS is located is almost full.' => 'Раздел, в котором размещен OTRS уже заполнен.',
        'The partition where OTRS is located has no disk space problems.' =>
            'Раздел с OTRS не имеет проблем с дисковым пространством.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpacePartitions.pm
        'Operating System/Disk Partitions Usage' => 'Операционная система/Использование разделов диска',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Distribution.pm
        'Distribution' => 'Распостранение',
        'Could not determine distribution.' => 'Не удалось определить дистрибутив ОС',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/KernelVersion.pm
        'Kernel Version' => 'Версия ядра',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Load.pm
        'System Load' => 'Нагрузка системы',
        'The system load should be at maximum the number of CPUs the system has (e.g. a load of 8 or less on a system with 8 CPUs is OK).' =>
            'Нагрузка системы должна быть не более количества процессоров в системе (например, загрузка в 8 или меньше в системе с 8 CPU будет правильной).',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/PerlModules.pm
        'Perl Modules' => 'Модули Perl',
        'Not all required Perl modules are correctly installed.' => 'Не все требуемые модули Perl установлены корректно.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Swap.pm
        'Free Swap Space (%)' => 'Свободное место для подкачки (%)',
        'No swap enabled.' => 'Подкачка не включена.',
        'Used Swap Space (MB)' => 'Использованное пространство для подкачки (MB)',
        'There should be more than 60% free swap space.' => 'Должно быть более 60% свободного места для подкачки.',
        'There should be no more than 200 MB swap space used.' => 'Нельзя использовать для подкачки более 200МВ',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ConfigSettings.pm
        'OTRS/Config Settings' => 'OTRS/Параметры конфигурации',
        'Could not determine value.' => 'Не удалось определить значение.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DaemonRunning.pm
        'OTRS' => 'OTRS',
        'Daemon' => 'Служба ',
        'Daemon is not running.' => 'Служба не запущена',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DatabaseRecords.pm
        'OTRS/Database Records' => 'OTRS/Записи базы данных',
        'Tickets' => 'Заявки',
        'Ticket History Entries' => 'Записи истории заявки',
        'Articles' => 'Заметки/сообщения',
        'Attachments (DB, Without HTML)' => 'Вложения (DB, без HTML)',
        'Customers With At Least One Ticket' => 'Клиенты, имеющие хотя бы одну заявку',
        'Dynamic Field Values' => 'Значения динамического поля',
        'Invalid Dynamic Fields' => 'Неверные динамические поля',
        'Invalid Dynamic Field Values' => 'Неверные значения динамического поля',
        'GenericInterface Webservices' => 'Веб-сервисы GenericInterface ',
        'Months Between First And Last Ticket' => 'Месяцев между первой и последней заявками',
        'Tickets Per Month (avg)' => 'Заявок в месяц (среднее)',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultSOAPUser.pm
        'Default SOAP Username And Password' => 'Логин и пароль для SOAP по умолчанию',
        'Security risk: you use the default setting for SOAP::User and SOAP::Password. Please change it.' =>
            'Риск безопасности: вы используете установки по умолчанию для SOAP::User и SOAP::Password. Измените их.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultUser.pm
        'Default Admin Password' => 'Пароль администратора по умолчанию',
        'Security risk: the agent account root@localhost still has the default password. Please change it or invalidate the account.' =>
            'Риск безопасности: учетная запись агента root@localhost имеет пароль по умолчанию. Измените его или сделайте учетную запись недействительной.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ErrorLog.pm
        'Error Log' => 'Журнал ошибок',
        'There are error reports in your system log.' => 'В системном журнале есть записи об ошибках.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FQDN.pm
        'FQDN (domain name)' => 'FQDN (Имя домена)',
        'Please configure your FQDN setting.' => 'Пожалуйста укажите ваш FQDN.',
        'Domain Name' => 'Имя домена',
        'Your FQDN setting is invalid.' => 'Значение для FQDN неверно.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FileSystemWritable.pm
        'File System Writable' => 'Файловая система доступная для записи',
        'The file system on your OTRS partition is not writable.' => 'Файловая система в разделе OTRS недоступна для записи.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageDeployment.pm
        'Package Installation Status' => 'Состояние установки пакетов',
        'Some packages are not correctly installed.' => 'Некоторые пакеты установлены некорректно.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageList.pm
        'OTRS/Package List' => 'OTRS/Список пакетов',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/SystemID.pm
        'Your SystemID setting is invalid, it should only contain digits.' =>
            'Ваш SystemID неверен. Он должен состоять только из цифр.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/IndexModule.pm
        'Ticket Index Module' => 'Модуль индексирования заявок',
        'You have more than 60,000 tickets and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            'У вас в системе более 60000 заявок и необходимо использовать опцию StaticDB. Смотрите руководство администратора (настройки производительности) для более подробной информации.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/OpenTickets.pm
        'Open Tickets' => 'Открытые заявки',
        'You should not have more than 8,000 open tickets in your system.' =>
            'У вас не должно быть более 8000 открытых заявок в системе.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/SearchIndexModule.pm
        'Ticket Search Index Module' => 'Модуль индексирования заявок для поиска',
        'You have more than 50,000 articles and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            'У вас в системе более 50000 заметок и необходимо использовать опцию StaticDB. Смотрите руководство администратора (настройки производительности) для более подробной информации.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/StaticDBOrphanedRecords.pm
        'Orphaned Records In ticket_lock_index Table' => 'Потерянные записи в таблице ticket_lock_index ',
        'Table ticket_lock_index contains orphaned records. Please run bin/otrs.Console.pl "Maint::Ticket::QueueIndexCleanup" to clean the StaticDB index.' =>
            'Таблица ticket_lock_index содержит потерянные записи. Выполните скрипт bin/otrs.Console.pl "Maint::Ticket::QueueIndexCleanup" для очистки индексов StaticDB.',
        'Orphaned Records In ticket_index Table' => 'Потерянные записи в таблице ticket_index',
        'Table ticket_index contains orphaned records. Please run otrs/bin/otrs.CleanTicketIndex.pl to clean the StaticDB index.' =>
            'Таблица ticket_index содержит потерянные записи. Выполните скрипт otrs/bin/otrs.CleanTicketIndex.pl для очистки индексов StaticDB.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/TimeSettings.pm
        'OTRS/Time Settings' => 'OTRS/Параметры времени',
        'Server time zone' => 'Временная зона сервера',
        'Computed server time offset' => 'Вычисляемое смещение времени для сервера',
        'OTRS TimeZone setting (global time offset)' => 'Параметры OTRS TimeZone (глобальное смещение времени)',
        'TimeZone may only be activated for systems running in UTC.' => 'TimeZone может быть включена только для систем работающих в UTC.',
        'OTRS TimeZoneUser setting (per-user time zone support)' => 'Параметры OTRS TimeZoneUser (поддержка временНых зон для отдельных клиентов)',
        'TimeZoneUser may only be activated for systems running in UTC that don\'t have an OTRS TimeZone set.' =>
            'TimeZoneUser может быть включена только для систем работающих в UTC, для которых не включен параметр OTRS TimeZone.',
        'OTRS TimeZone setting for calendar ' => 'Параметр OTRS TimeZone для календаря ',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/LoadedModules.pm
        'Webserver/Loaded Apache Modules' => 'Webserver/Loaded Apache Modules',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/MPMModel.pm
        'Webserver' => 'Веб-сервер',
        'MPM model' => 'MPM model',
        'OTRS requires apache to be run with the \'prefork\' MPM model.' =>
            'Для OTRS необходимо, чтобы apache работал с опцией \'prefork\' MPM model.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/Performance.pm
        'CGI Accelerator Usage' => 'Использование CGI Accelerator',
        'You should use FastCGI or mod_perl to increase your performance.' =>
            'Необходимо использовать FastCGI или mod_perl для повышения производительности.',
        'mod_deflate Usage' => 'Использование mod_deflate',
        'Please install mod_deflate to improve GUI speed.' => 'Установите mod_deflate для повышения скорости GUI.',
        'mod_filter Usage' => 'Использование mod_filter ',
        'Please install mod_filter if mod_deflate is used.' => 'Установите  mod_filter, если используете mod_deflate.',
        'mod_headers Usage' => 'Использование mod_headers',
        'Please install mod_headers to improve GUI speed.' => 'Установите mod_headers для повышения скорости GUI.',
        'Apache::Reload Usage' => 'Использование Apache::Reload',
        'Apache::Reload or Apache2::Reload should be used as PerlModule and PerlInitHandler to prevent web server restarts when installing and upgrading modules.' =>
            'Apache::Reload или Apache2::Reload должны использоваться как PerlModule и PerlInitHandler, чтобы предупредить рестарт веб-сервера при установке и обновлении модулей.',
        'Apache2::DBI Usage' => 'Использование Apache2::DBI',
        'Apache2::DBI should be used to get a better performance  with pre-established database connections.' =>
            'Apache2::DBI должен использоваться для повышения производительности с предустановленными соединениями с БД.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/EnvironmentVariables.pm
        'Webserver/Environment Variables' => 'Webserver/Environment переменные окружения',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/IIS/Performance.pm
        'You should use PerlEx to increase your performance.' => 'Необходимо использовать PerlEx для повышения производительности',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Version.pm
        'Webserver Version' => 'Версия Веб-сервера',
        'Could not determine webserver version.' => 'Не удалось определить версию Веб - сервера.',

        # Perl Module: Kernel/System/SupportDataCollector/PluginBase.pm
        'Unknown' => 'Неизвестный',
        'OK' => 'О.К.',
        'Problem' => 'Проблема',

        # Perl Module: Kernel/System/Web/InterfaceCustomer.pm
        'Reset password unsuccessful. Please contact your administrator' =>
            'Сброс пароля не выполнен. Пожалуйста, свяжитесь с вашим администратором',
        'Panic! Invalid Session!!!' => 'Паника! Неверный сеанс!!!',

        # Database XML Definition: scripts/database/otrs-initial_insert.xml
        'Group for default access.' => 'Группа доступа по умолчанию.',
        'Group of all administrators.' => 'Группа для всех администраторов.',
        'Group for statistics access.' => 'Группа для доступа к отчетам.',
        'All new state types (default: viewable).' => 'Все новые типы состояний (по умолчанию: для просмотра).',
        'All open state types (default: viewable).' => 'Все типы состояний "открыта" (по умолчанию: для просмотра).',
        'All closed state types (default: not viewable).' => 'Все типы состояний "закрыта" (по умолчанию: для просмотра).',
        'All \'pending reminder\' state types (default: viewable).' => 'Все типы состояний "ожидает напоминания" (по умолчанию: для просмотра).',
        'All \'pending auto *\' state types (default: viewable).' => 'Все типы состояний "ожидает авто*" (по умолчанию: для просмотра).',
        'All \'removed\' state types (default: not viewable).' => 'Все типы состояний "удалена" (по умолчанию: для просмотра).',
        'State type for merged tickets (default: not viewable).' => 'Все типы состояний "объединена" (по умолчанию: для просмотра).',
        'New ticket created by customer.' => 'Новая заявка созданная клиентом',
        'Ticket is closed successful.' => 'Заявка закрыта успешно.',
        'Ticket is closed unsuccessful.' => 'Заявка закрыта не успешно.',
        'Open tickets.' => 'Открытые заявки.',
        'Customer removed ticket.' => 'Заявка удаленная клиентом.',
        'Ticket is pending for agent reminder.' => 'Заявка ожидает напоминания агенту.',
        'Ticket is pending for automatic close.' => 'Заявка ожидает автозакрытия.',
        'State for merged tickets.' => 'Состояние для объединённых заявок.',
        'system standard salutation (en)' => 'стандартное приветствие системы (ru)',
        'Standard Salutation.' => 'Стандартное приветствие.',
        'system standard signature (en)' => 'стандартная подпись системы (ru)',
        'Standard Signature.' => 'Стандартная подпись.',
        'Standard Address.' => 'Стандартный адрес.',
        'Follow-ups for closed tickets are possible. Ticket will be reopened.' =>
            'Дополнения к закрытым заявкам разрешены. Заявка будет открыта заново.',
        'Follow-ups for closed tickets are not possible. No new ticket will be created.' =>
            'Дополнения к закрытым заявкам запрещены. Не будет создана новая заявка.',
        'new ticket' => 'новая заявка',
        'Follow-ups for closed tickets are not possible. A new ticket will be created..' =>
            'Дополнения к закрытым заявкам запрещены. Будет создана новая заявка.',
        'Postmaster queue.' => 'Очередь PostMaster',
        'All default incoming tickets.' => 'По умолчанию все входящие заявки.',
        'All junk tickets.' => 'Все "мусорные" заявки.',
        'All misc tickets.' => 'Все прочие заявки.',
        'Automatic reply which will be sent out after a new ticket has been created.' =>
            'Автоматический ответ, который будет выслан после создания новой заявки.',
        'Automatic reject which will be sent out after a follow-up has been rejected (in case queue follow-up option is "reject").' =>
            'Автоматический отказ, который будет выслан после того, как дополнение будет отвергнуто (если установлена опция для очереди "отвергнуть" дополнения)',
        'Automatic confirmation which is sent out after a follow-up has been received for a ticket (in case queue follow-up option is "possible").' =>
            'Автоматическое подтверждение, которое высылается после получения дополнения к заявке (если для очереди установлена возможность получения дополнений).',
        'Automatic response which will be sent out after a follow-up has been rejected and a new ticket has been created (in case queue follow-up option is "new ticket").' =>
            'Автоматический ответ, который высылается после того как дополнение было отвергнуто и была создана новая заявка (в случае, когда для очереди установлено "новая заявка").',
        'Auto remove will be sent out after a customer removed the request.' =>
            'Сообщение об автоудалении будет выслано после того как клиент удалит запрос.',
        'default reply (after new ticket has been created)' => 'Стандартный ответ (после создания новой заявки)',
        'default reject (after follow-up and rejected of a closed ticket)' =>
            'стандартный отказ (после получения дополнения и отказа для закрытой заявки)',
        'default follow-up (after a ticket follow-up has been added)' => 'стандартное сообщение о дополнении (после добавления дополнения к заявке)',
        'default reject/new ticket created (after closed follow-up with new ticket creation)' =>
            'Стандартное сообщение об отказе/создании новой заявки (после закрытия дополнения и создания новой заявки)',
        'Unclassified' => 'Неклассифицировано',
        'tmp_lock' => 'tmp_lock',
        'email-notification-ext' => 'почтовое уведомление внешнее',
        'email-notification-int' => 'почтовое уведомление внутреннее',
        'fax' => 'факс',

        # SysConfig
        '
Dear Customer,

Unfortunately we could not detect a valid ticket number
in your subject, so this email can\'t be processed.

Please create a new ticket via the customer panel.

Thanks for your help!

 Your Helpdesk Team
' => '
Уважаемый клиент,

к сожалению, мы не обнаружили правильного номера заявки
в теме, поэтому письмо не может быть обработано.

Пожалуйста, создайте новую заявку используя клиентский портал.

Спасибо за помощь и понимание!

 Группа техподдержки
',
        ' (work units)' => '(единиц времени)',
        '"%s" notification was sent to "%s" by "%s".' => '"%s" уведомление отправлено на "%s " от "%s".',
        '%s' => 'Прочее %s',
        '%s time unit(s) accounted. Now total %s time unit(s).' => 'Добавлено единиц времени: %s. Всего единиц времени: %s.',
        '(UserLogin) Firstname Lastname' => '(UserLogin) Имя Фамилия',
        '(UserLogin) Lastname, Firstname' => '(UserLogin) Фамилия, Имя',
        'A Website' => 'Веб сайт',
        'A list of dynamic fields that are merged into the main ticket during a merge operation. Only dynamic fields that are empty in the main ticket will be set.' =>
            'Список динамических полей, которые объединяются в главной заявке при слиянии. Только динамические поля, имеющие пустые значения в главной заявке будут установлены/заполнены.',
        'A picture' => 'Рисунок',
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            'ACL модуль, который позволяет закрывать родительские заявки только после того как все младшие закрыты ("State" задает доступные состояния для родительских заявок до закрытия всех младших',
        'Access Control Lists (ACL)' => 'Списки управления доступом (ACL)',
        'AccountedTime' => 'Затраченное время',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            'Включить "мигание" для очередей содержащих наиболее старые заявки',
        'Activates lost password feature for agents, in the agent interface.' =>
            'Включить функцию восстановления пароля для агентов в интерфейсе агента',
        'Activates lost password feature for customers.' => 'Включить функцию восстановления пароля для клиентов',
        'Activates support for customer groups.' => 'Включить поддержку групп клиентов',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            'Включить фильтр сообщений в подробном просмотре, для выбора сообщений для показа',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            'Включить доступные темы системы. Значение 1 - включена, 0 - отключена',
        'Activates the ticket archive system search in the customer interface.' =>
            'Включить возможность поиска заявок в архиве в интерфейсе клиента',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            'Включить функцию архивирования заявок для ускорения работы, путем перемещения некоторых заявок из ежедневного объема. Для поиска таких заявок необходимо включить архивный флажок при создании поискового запроса',
        'Activates time accounting.' => 'Включить учет времени выполнения',
        'ActivityID' => 'ActivityID',
        'Add an inbound phone call to this ticket' => 'Добавить входящий звонок клиента к этой заявке',
        'Add an outbound phone call to this ticket' => 'Добавить исходящий звонок клиенту к этой заявке',
        'Added email. %s' => 'Получено письмо от %s.',
        'Added link to ticket "%s".' => 'К заявке «%s» добавлена связь.',
        'Added note (%s)' => 'Добавлена заметка (%s)',
        'Added subscription for user "%s".' => 'Добавлена подписка для пользователя «%s».',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            'Добавляет суффикс с текущим годом и месяцем к имени лог файла OTRS. Лог-файл создается для каждого месяца.',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface. The customers email address won\'t be added if the article type is email-internal.' =>
            'Добавляет почтовые адреса клиентов - получателей на экране создания ответа в интерфейсе агента. E-mail адреса нельзя добавить, если тип сообщения - email-internal.',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Добавляет разовый выходной день для выбранного календаря. Для цифр от 1 до 9 используйте один разряд (вместо 01 - 09).',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Добавляет разовый выходной день. Для цифр от 1 до 9 используйте один разряд (вместо 01 - 09).',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Добавляет постоянный выходной день для выбранного календаря. Для цифр от 1 до 9 используйте один разряд (вместо 01 - 09).',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Добавляет постоянный выходной день. Для цифр от 1 до 9 используйте один разряд (вместо 01 - 09).',
        'After' => 'После',
        'Agent called customer.' => 'Сотрудник позвонил клиенту',
        'Agent interface article notification module to check PGP.' => 'Модуль уведомления для проверки PGP в интерфейсе агента.',
        'Agent interface article notification module to check S/MIME.' =>
            'Модуль уведомления для проверки S/MIME в интерфейсе агента.',
        'Agent interface module to access CIC search via nav bar.' => 'Отображение окна поиска по CustomerID в CIC (Центр информации о Компании) в навигационной панели в интерфейсе агента',
        'Agent interface module to access fulltext search via nav bar.' =>
            'Отображение окна полнотекстового поиска в навигационной панели в интерфейсе агента.',
        'Agent interface module to access search profiles via nav bar.' =>
            'Отображение окна поиска по сохраненным шаблонам в интерфейсе агента',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            'Модуль проверки входящих emails в окне Ticket-Zoom-View если S/MIME-key доступен и верен.',
        'Agent interface notification module to see the number of locked tickets.' =>
            'Модуль уведомлений в интерфейсе агента для просмотра количества заблокированных заявок.',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            'Включение отображения иконки с количеством заявок, по которым агент является ответственным.',
        'Agent interface notification module to see the number of tickets in My Services.' =>
            'Модуль уведомлений, для отображения количества заявок в Моих сервисах.',
        'Agent interface notification module to see the number of watched tickets.' =>
            'Включение отображения иконки с количеством наблюдаемых агентом заявок.',
        'Agents <-> Groups' => 'Агенты <-> Группы',
        'Agents <-> Roles' => 'Агенты <-> Роли',
        'All customer users of a CustomerID' => 'Все клиенты Компании (по CustomerID)',
        'Allows adding notes in the close ticket screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Позволяет добавить сообщение на экране закрытия заявки в интерфейсе агента. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Allows adding notes in the ticket free text screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Позволяет добавить сообщение на экране Свободные/Дополн. поля заявки в интерфейсе агента. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Allows adding notes in the ticket note screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Позволяет добавить сообщение на экране создания заметки в интерфейсе агента. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Позволяет добавить сообщение на экране Владелец в интерфейсе агента. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Позволяет добавить сообщение на экране Отложить в просмотре заявки в интерфейсе агента. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Позволяет добавить сообщение на экране Приоритет в просмотре заявки в интерфейсе агента. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Allows adding notes in the ticket responsible screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Позволяет добавить сообщение на экране Ответственный в просмотре заявки в интерфейсе агента. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            'Позволяет поменять местами оси графика в отчете.',
        'Allows agents to generate individual-related stats.' => 'Позволяет агентам создавать индивидуальные отчеты.',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            'Выбор варианта показа вложения к заявке - в окне браузера или как файл для загрузки(вложение).',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            'Позволяет отобразить в интерфейсе клиента возможность выбора следующего состояния заявки при ответе.',
        'Allows customers to change the ticket priority in the customer interface.' =>
            'Позволяет в интерфейсе клиента изменить приоритет заявки.',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            'Позволяет клиенту выбирать SLA для заявки.',
        'Allows customers to set the ticket priority in the customer interface.' =>
            'Позволяет в интерфейсе клиента установить приоритет заявки.',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            'Позволяет клиенту выбрать очередь для заявки. Если установить "Нет", необходимо настроить параметр QueueDefault (Очередь по умолчанию).',
        'Allows customers to set the ticket service in the customer interface.' =>
            'Позволяет клиенту выбирать Сервис для заявки.',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            'Позволяет клиенту выбирать Тип для заявки. Если установить "Нет", необходимо настроить параметр TicketTypeDefault(Тип по умолчанию).',
        'Allows default services to be selected also for non existing customers.' =>
            'Разрешает установить Сервис по умолчанию для не существующих клиентов.',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            'Позволяет определить новые Типы для заявок (если включено использование Типа).',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            'Позволяет определить Сервисы и SLA для заявок (напр. Почта, ПК, Сеть, ...), и параметры эскалации для SLA (при условии, что поддержка Сервисов и SLA включена).',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search e. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            'Позволяет задать расширенные возможности поиска в интерфейсе агента. При включении его, появится возможность поска с использованием конструкций типа "(key1&&key2)" или "(key1||key2)".',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            'Позволяет задать расширенные возможности поиска в интерфейсе клиента. При включении его, появится возможность поска с использованием конструкций типа "(key1&&key2)" или "(key1||key2)".',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            'Допускает использование medium режима просмотра заявок (CustomerInfo => 1 - показывает также информацию о клиенте).',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            'Допускает использование small(краткий) режима просмотра заявок (CustomerInfo => 1 - показывает также информацию о клиенте).',
        'Allows invalid agents to generate individual-related stats.' => 'Разрешать отчёты по агентам в статусе "invalid"',
        'Allows the administrators to login as other customers, via the customer user administration panel.' =>
            'Дает возможность администратору войти в систему как клиенту, через панель управления учетными записями клиентов.',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            'Дает возможность администратору войти в систему как обычному агенту, через панель управления агентами.',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            'Позволяет установить новое Состояние заявки на экране смены очереди в интерфейсе агента.',
        'Arabic (Saudi Arabia)' => 'Арабский (Саудовская Аравия)',
        'Archive state changed: "%s"' => 'Архивный статус изменен: «%s»',
        'ArticleTree' => 'Дерево сообщений',
        'Attachments <-> Templates' => 'Вложения <-> Шаблоны',
        'Auto Responses <-> Queues' => 'Автоответы <-> Очередь',
        'AutoFollowUp sent to "%s".' => 'Автоотклик отправлен «%s».',
        'AutoReject sent to "%s".' => 'Автоотказ отправлен «%s».',
        'AutoReply sent to "%s".' => 'Автоответ отправлен «%s».',
        'Automated line break in text messages after x number of chars.' =>
            'Автоматический перевод строки в тексте сообщения после х символов.',
        'Automatically lock and set owner to current Agent after opening the move ticket screen of the agent interface.' =>
            'Автоматически блокирует заявку и назначает ответственным текущего агента после открытия экрана смены очереди в интерфейсе агента.',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            'Автоматически блокирует заявку и назначает текущего агента владельцем при выборе массового действия',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            'Автоматически назначает Владельца заявки ее Ответственным (если возможность использования Ответственных включена).',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            'Автоматически назначает Ответственного (если это еще не произошло) после первой смены Владельца.',
        'Balanced white skin by Felix Niklas (slim version).' => 'Сбалансированный белый окрас интерфейса от Felix Niklas (уменьшенная версия).',
        'Balanced white skin by Felix Niklas.' => 'Сбалансированный белый окрас интерфейса от Felix Niklas.',
        'Basic fulltext index settings. Execute "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild" in order to generate a new index.' =>
            'Базовые настройки индексирования для полнотекстового поиска. Выполните скрипт "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild" для генерации новых индексов.',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            'Блокирует все входящие письма, не содержащие в поле Тема правильного номера заявки и имеющих в поле From(от): @example.com',
        'Bounced to "%s".' => 'Перенаправлено «%s».',
        'Builds an article index right after the article\'s creation.' =>
            'Строить индексы сообщений сразу после их создания',
        'Bulgarian' => 'Болгарский',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            'Пример настройки CMD. Игнорирует письма, если внешняя CMD возвращает некоторый вывод на STDOUT (письмо будет направлено в STDIN в некий .bin).',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            'Cache time, в сек, для аутентификации агентов в GenericInterface.',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            'Cache time, в сек, для аутентификации клиентов в GenericInterface.',
        'Cache time in seconds for the DB ACL backend.' => 'Cache time, в сек, для DB ACL backend.',
        'Cache time in seconds for the DB process backend.' => 'Cache time, в сек, для DB process backend.',
        'Cache time in seconds for the SSL certificate attributes.' => 'Cache time, в сек, для SSL certificate атрибутов.',
        'Cache time in seconds for the ticket process navigation bar output module.' =>
            'Cache time, в сек, для модуля вывода на навигационной панели процессных заявок.',
        'Cache time in seconds for the web service config backend.' => 'Cache time, в сек, для backend конфигурации веб сервисов.',
        'Catalan' => 'Каталонский',
        'Change password' => 'Изменить пароль',
        'Change queue!' => 'Сменить очередь!',
        'Change the customer for this ticket' => 'Изменить клиента для этой заявки',
        'Change the free fields for this ticket' => 'Изменить свободные поля для этой заявки',
        'Change the priority for this ticket' => 'Поменять приоритет заявки',
        'Change the responsible for this ticket' => 'Изменить ответственного за эту заявку',
        'Changed priority from "%s" (%s) to "%s" (%s).' => 'Изменен приоритет с «%s» (%s) на «%s» (%s).',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            'Изменить Владельца заявок на любого (полезно для ASP). Обычно, только агенты с rw - правами в очереди отображаются.',
        'Checkbox' => 'Checkbox',
        'Checks if an E-Mail is a followup to an existing ticket by searching the subject for a valid ticket number.' =>
            'Проверяет, является ли письмо дополнением к существующей заявке путем поиска в теме письма правильного номера заявки.',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            'Проверяет SystemID в номере заявки при обнаружении ответа коиента(follow-ups)(Используйте "Нет" если SystemID был изменен до получения ответа).',
        'Checks the availability of OTRS Business Solution™ for this system.' =>
            'Проверьте доступность OTRS Business Solution™ для этой системы.',
        'Checks the entitlement status of OTRS Business Solution™.' => 'Проверить состояние прав доступа к OTRS Business Solution™.',
        'Chinese (Simplified)' => 'Китайский (упрощённый)',
        'Chinese (Traditional)' => 'Китайский (традиционный)',
        'Choose for which kind of ticket changes you want to receive notifications.' =>
            'Выберите для какого типа изменений заявок вы будете получать уведомления.',
        'Closed tickets (customer user)' => 'Закрытые заявки (клиента)',
        'Closed tickets (customer)' => 'Закрытые заявки (клиента)',
        'Cloud Services' => 'Облачные Сервисы',
        'Cloud service admin module registration for the transport layer.' =>
            'Регистрация модуля администрирования облачных сервисов для транспортного уровня.',
        'Collect support data for asynchronous plug-in modules.' => 'Собрать данные для поддержки асинхронно подключаемых плагинов.',
        'Column ticket filters for Ticket Overviews type "Small".' => 'Фильтры в столбцах для просмотра заявок в режиме "Small".',
        'Columns that can be filtered in the escalation view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре эскалированных заявок в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Columns that can be filtered in the locked view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре заблокированных заявок в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Columns that can be filtered in the queue view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре очередей в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Columns that can be filtered in the responsible view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре заявок по ответственному в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Columns that can be filtered in the service view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре заявок по сервисам в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Columns that can be filtered in the status view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре заявок по состояниям в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Columns that can be filtered in the ticket search result view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре результатов поиска заявок в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Columns that can be filtered in the watch view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            'Колонки, по которым доступна фильтрация при просмотре наблюдаемых заявок в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - доступно, 2 - включено по умолчанию. Только атрибуты заявки и динамические поля  (DynamicField_Имя поляX), а также атрибуты Клиента (например, CustomerUserPhone, CustomerCompanyName, ...) разрешены.',
        'Comment for new history entries in the customer interface.' => 'Комметарий для новых записей истории в интерфейсе клиента.',
        'Comment2' => 'Комментарий2',
        'Communication' => 'Взаимодействие',
        'Company Status' => 'Информация по компании клиента',
        'Company Tickets' => 'Заявки компании',
        'Company name which will be included in outgoing emails as an X-Header.' =>
            'Имя Компании, включаемое в исходящее письмо как X-Header.',
        'Configure Processes.' => 'Настройка Процессов',
        'Configure and manage ACLs.' => 'Настройка и управление ACL.',
        'Configure any additional readonly mirror databases that you want to use.' =>
            'Укажите любые дополнительные, доступные только для чтения зеркальные базы данных, которые желаете использовать.',
        'Configure sending of support data to OTRS Group for improved support.' =>
            'Настройте отправку необходимых данных для поддержки в OTRS Group для расширенной поддержки.',
        'Configure which screen should be shown after a new ticket has been created.' =>
            'Выберите экран, который должен отображаться после создания новой заявки.',
        'Configure your own log text for PGP.' => 'Настроить свой собственный текст журнала для PGP.',
        'Configures a default TicketDynamicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://otrs.github.io/doc/), chapter "Ticket Event Module".' =>
            'Задает настройки TicketDynamicField по умолчанию. "Name/Имя" задает поле, которое будет использоваться, "Value/Значение" - данные которые будут заданы и "Event/Событие" определяет событие триггера. Подробнее, смотрите в руководстве разработчика (http://otrs.github.io/doc/), раздел "Ticket Event Module".',
        'Controls how to display the ticket history entries as readable values.' =>
            'Управляет способом отображения записей истории заявки в читаемом виде.',
        'Controls if customers have the ability to sort their tickets.' =>
            'Задает возможность сортировки заявок для клиента',
        'Controls if more than one from entry can be set in the new phone ticket in the agent interface.' =>
            'Задает возможность указать более одного клиента для новой телефонной заявки в интерфейсе агента.',
        'Controls if the admin is allowed to import a saved system configuration in SysConfig.' =>
            'Управляет возможностью для администратора загружать сохраненную конфигурацию системы в SysConfig.',
        'Controls if the admin is allowed to make changes to the database via AdminSelectBox.' =>
            'Задает право администратора выполнять изменения в БД используя AdminSelectBox.',
        'Controls if the ticket and article seen flags are removed when a ticket is archived.' =>
            'Управляет удалением флагов просмотра заявок и сообщений при архивирвании заявки.',
        'Converts HTML mails into text messages.' => 'Преобразовать письмо из HTML в текст',
        'Create New process ticket' => 'Создать новую процессную заявку',
        'Create and manage Service Level Agreements (SLAs).' => 'Создание Соглашений об уровне сервиса (SLA) и управление ими.',
        'Create and manage agents.' => 'Создание агентов и управление ими.',
        'Create and manage attachments.' => 'Создание вложений и управление ими.',
        'Create and manage customer users.' => 'Создание пользователей клиентов и управление ими.',
        'Create and manage customers.' => 'Создание клиентов и управление ими.',
        'Create and manage dynamic fields.' => 'Создание динамических полей и управление ими.',
        'Create and manage groups.' => 'Создание групп и управление ими.',
        'Create and manage queues.' => 'Создание очередей и управление ими.',
        'Create and manage responses that are automatically sent.' => 'Создание автоответов и управление ими.',
        'Create and manage roles.' => 'Создание ролей и управление ими.',
        'Create and manage salutations.' => 'Создание приветствий и управление ими.',
        'Create and manage services.' => 'Создание сервисов и управление ими.',
        'Create and manage signatures.' => 'Создание подписей и управление ими.',
        'Create and manage templates.' => 'Создание шаблонов и управление ими.',
        'Create and manage ticket notifications.' => 'Создание и управление уведомлениями по заявкам.',
        'Create and manage ticket priorities.' => 'Создание приоритетов заявок и управление ими.',
        'Create and manage ticket states.' => 'Создание состояний заявок и управление ими.',
        'Create and manage ticket types.' => 'Создание типов заявок и управление ими.',
        'Create and manage web services.' => 'Создание веб-сервисов и управление ими.',
        'Create new email ticket and send this out (outbound)' => 'Создать заявку по email (исходящую) и отправить ее',
        'Create new phone ticket (inbound)' => 'Создать телефонную заявку (входящую)',
        'Create new process ticket' => 'Создать новую процессную заявку',
        'Croatian' => 'Хорватский',
        'Custom RSS Feed' => 'Пользовательская лента RSS ',
        'Custom text for the page shown to customers that have no tickets yet (if you need those text translated add them to a custom translation module).' =>
            'Текст отображаемый клиенту еще не имеющему заявок (если желаете, чтобы этот текст отображался на нужном языке, добавьте его в кастомный русский файл локализации - ru_custom.pm).',
        'Customer Administration' => 'Управление клиентами',
        'Customer User <-> Groups' => 'Клиенты <-> Группы',
        'Customer User <-> Services' => 'Клиенты <-> Сервисы',
        'Customer User Administration' => 'Управление пользователями клиентов',
        'Customer Users' => 'Клиенты',
        'Customer called us.' => 'Клиент позвонил нам.',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            'Показать количество закрытых заявок клиента в Информации о клиенте. Установка CustomerUserLogin в 1 считает все заявки для логина клиента, а не по CustomerID.',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            'Показать количество открытых заявок клиента в Информации о клиенте. Установка CustomerUserLogin в 1 считает все заявки для логина клиента, а не по CustomerID.',
        'Customer request via web.' => 'Веб-запрос пользователя.',
        'Customer user search' => 'Поиск клиента',
        'CustomerID search' => 'Поиск по CustomerID',
        'CustomerName' => 'Имя Клиента',
        'Customers <-> Groups' => 'Клиенты <-> Группы',
        'Customizable stop words for fulltext index. These words will be removed from the search index.' =>
            'Настраиваемые стоп-слова для полнотекстовой индексации. Эти слова будут удалены и поискового индекса.',
        'Czech' => 'Чешский',
        'Danish' => 'Датский',
        'Data used to export the search result in CSV format.' => 'Данные используемые для экспорта результатов поиска в CSV формате',
        'Date / Time' => 'Дата/Время',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            'Отладка состояния локализации. Если установлено в "Да"("Yes"), все непереведенные строки записываются в STDERR. Это полезно при создании пользовательского файла локализации (ru_custom.pm). В рабочем режиме, значение параметра д.б. "Нет".',
        'Default ACL values for ticket actions.' => 'Стандартные значения ACL для действий по заявке.',
        'Default ProcessManagement entity prefixes for entity IDs that are automatically generated.' =>
            'Стандартные префиксы идентификаторов элементов процессов в Управлении Процессами, генерируемые автоматически (напр. A, T, AD, TA).',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            'Стандартные данные, используемые для атрибутов поиска. Например: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            'Стандартные данные, используемые для атрибутов поиска. Например: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".',
        'Default display type for recipient (To,Cc) names in AgentTicketZoom and CustomerTicketZoom.' =>
            'Способ отображения по умолчанию имен получателей (To,Cc) в AgentTicketZoom и CustomerTicketZoom.',
        'Default display type for sender (From) names in AgentTicketZoom and CustomerTicketZoom.' =>
            'Способ отображения по умолчанию имени отправителя  (From) в AgentTicketZoom и CustomerTicketZoom.',
        'Default loop protection module.' => 'Стандартный модуль защиты от зацикливания.',
        'Default queue ID used by the system in the agent interface.' => 'ID очереди по умолчанию используемый в системе в интерфейсе агента.',
        'Default skin for the agent interface (slim version).' => 'Стандартная тема оформления для интерфейса агента (slim version).',
        'Default skin for the agent interface.' => 'Стандартная тема оформления для интерфейса агента.',
        'Default skin for the customer interface.' => 'Стандартная тема оформления для интерфейса клиента.',
        'Default ticket ID used by the system in the agent interface.' =>
            'TicketID по умолчанию, для использования в интерфейсе агента.',
        'Default ticket ID used by the system in the customer interface.' =>
            'TicketID по умолчанию, для использования в интерфейсе клиента.',
        'Default value for NameX' => 'Умалчиваемое значение для NameX',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            'Задать фильтр для вывода в HTML для добавления ссылки после определенной строки. Элемент Image может быть в двух вариантах. Первый - имя рисунка (напр. faq.png). В этом случае должен использоваться путь к файлам рисунков OTRS. Во втором вставить ссылку на рисунок.',
        'Define a mapping between variables of the customer user data (keys) and dynamic fields of a ticket (values). The purpose is to store customer user data in ticket dynamic fields. The dynamic fields must be present in the system and should be enabled for AgentTicketFreeText, so that they can be set/updated manually by the agent. They mustn\'t be enabled for AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer. If they were, they would have precedence over the automatically set values. To use this mapping, you have to also activate the next setting below.' =>
            'Задать сопоставление между переменной, содержащей данные клиента (ключ) и динамическим полем заявки (значение). Целью является сохранить данные клиента в динамических полях заявки. Эти поля должны быть созданы в системе и сделаны доступными в AgentTicketFreeText, чтобы агент мог их ввести или исправить вручную. Они не должны быть доступны для ввода или редактирования в AgentTicketPhone, AgentTicketEmail или AgentTicketCustomer, во избежание перекрытия автоматическии установленных значений. Для использования этой возможности Вы должны также активизировать следующий параметр ниже.',
        'Define dynamic field name for end time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            'Задайте имя динамического поля для конца периода. Это поле надо создать как Тип "Заявка": "Date / Time" и активировать для экранов создания заявки и/или любого другого действия с заявкой.',
        'Define dynamic field name for start time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            'Задайте имя динамического поля для начала периода. Это поле надо создать как Тип "Заявка": "Date / Time" и активировать для экранов создания заявки и/или любого другого действия с заявкой.',
        'Define the max depth of queues.' => 'Задайте максимальный уровень вложенности для очередей',
        'Define the queue comment 2.' => 'Внести Комментарий 2 для очереди.',
        'Define the service comment 2.' => 'Внести Комментарий 2 для сервиса.',
        'Define the sla comment 2.' => 'Внести Комментарий 2 для SLA.',
        'Define the start day of the week for the date picker for the indicated calendar.' =>
            'Укажите первый день недели для использования при выборе даты для выбранного календаря.',
        'Define the start day of the week for the date picker.' => 'Укажите первый день недели для использовании при выборе даты',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            'Задайте список слов, игнорируемых при проверке правописания',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            'Задает фильтр для текста сообщений для подсветки определенных слов.',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            'Задать регулярное выражение для исключения некоторых адресов из проверки правописания (если "CheckEmailAddresses" установлено в "Да"). Введите regex в это поле для почтовых адресов, которые синтаксически неверны, но необходимы в системе (напр. "root@localhost").',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            'Задать регулярное выражение для  для фильтрации всех почтовых адресов, которые не будут использоваться в системе.',
        'Defines a sleep time in microseconds between tickets while they are been processed by a job.' =>
            'Задает "паузу", в микросекундах, между обработкой заявок заданием.',
        'Defines a useful module to load specific user options or to display news.' =>
            'Задать полезные модули для загрузки пользовательских опций или отображения новостей',
        'Defines all the X-headers that should be scanned.' => 'Задать все X-headers, которые должны проверятся.',
        'Defines all the languages that are available to the application. Specify only English names of languages here.' =>
            'Задает все языки доступные в приложении. Указывайте здесь только английские названия языков.',
        'Defines all the languages that are available to the application. Specify only native names of languages here.' =>
            'Задает все языки доступные в приложении. Указывайте здесь только native/родные? названия языков.',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            'Задать все параметры для объекта "Интервал обновления" в личных настройках в интерфейсе клиента',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            'Задать все параметры для объекта "Заявок на страницу" в личных настройках в интерфейсе клиента',
        'Defines all the parameters for this item in the customer preferences.' =>
            'Задать все параметры для этого элемента в личных настройках в интерфейсе клиента',
        'Defines all the parameters for this notification transport.' => 'Задает все параметры для этого типа отправки уведомлений.',
        'Defines all the possible stats output formats.' => 'Задает возможные форматы вывода отчетов',
        'Defines an alternate URL, where the login link refers to.' => 'Задает альтернативную URL, для страницы входа.',
        'Defines an alternate URL, where the logout link refers to.' => 'Задает альтернативную URL, для страницы выхода.',
        'Defines an alternate login URL for the customer panel..' => 'Задает альтернативную URL, для входа  клиента.',
        'Defines an alternate logout URL for the customer panel.' => 'Задает альтернативную URL, для выхода  клиента.',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=[% Data.CustomerID %]\' or \'\').' =>
            'Задает внешнюю ссылку на БД клиента  (например, \'http://yourhost/customer.php?CID=[% Data.CustomerID %]\' или \'\').',
        'Defines from which ticket attributes the agent can select the result order.' =>
            'Задает какие атрибуты заявки агент может выбрать для сортировки в обзоре заявок в очередях.',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            'Задает состав атрибутов в поле От письма (отправляемых в ответах и почтовых заявках)',
        'Defines if a pre-sorting by priority should be done in the queue view.' =>
            'Устанавливает, должна ли быть выполнена предварительная сортировка по приоритету в обзоре очередей.',
        'Defines if a pre-sorting by priority should be done in the service view.' =>
            'Устанавливает, должна ли быть выполнена предварительная сортировка по приоритету в обзоре заявок по сервисам.',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при закрытии заявки в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the email outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Определяет необходимость блокировки заявки на экране email outbound в интерфейсе агента (если заявка еще не блокирована, она блокируется и текущий агент автоматически назначается ее владельцем).',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при пересылке заявки в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при ответе на заявку в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при перенаправлении (forward) заявки в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при редактировании Дополнительных полей заявки в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при слиянии на заявок в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при написании Заметки к заявке в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при изменении Владельца заявки в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при переводе заявки в ожидание в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при регистрации входящего звонка клиента в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при регистрации исходящего звонка клиенту в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при изменении приоритета заявки в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при изменении Ответственного за заявку в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            'Требуется ли блокировка заявки при изменении клента заявки в интерфейсе агента (если заявка еще не заблокирована, она блокируется и текущий агент становится ее Владельцем)',
        'Defines if agents should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            'Включает проверку правописания при написании сообщений.',
        'Defines if customers should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if the enhanced mode should be used (enables use of table, replace, subscript, superscript, paste from word, etc.).' =>
            'Включает расширенные средства редактирования.',
        'Defines if the list for filters should be retrieve just from current tickets in system. Just for clarification, Customers list will always came from system\'s tickets.' =>
            'Определяет, должен ли список для фильтров загружаться непосредственно из текущих заявок в системе. Для уточнения, список клиентов всегда будет загружаться из системных заявок.',
        'Defines if the previously valid token should be accepted for authentication. This is slightly less secure but gives users 30 seconds more time to enter their one-time password.' =>
            'Определяет, должен ли предыдущий правильный token  должен быть принят для проверки подлинности. Это немного менее безопасно, но дает пользователям на 30 секунд больше времени для ввода их одноразового пароля.',
        'Defines if time accounting is mandatory in the agent interface. If activated, a note must be entered for all ticket actions (no matter if the note itself is configured as active or is originally mandatory for the individual ticket action screen).' =>
            'Задает, является ли поле "затраченное время" обязательным в интерфейсе агента. Если включено, заметка должна быть написана для любого действия по заявке (независимо от того, является ли написание заметки включенным или исходно обязательным для  отдельных экранов действий по заявке).',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            'Включить Учет времени для всех заявок при массовом действии.',
        'Defines queues that\'s tickets are used for displaying as calendar events.' =>
            'Выбор очередей, заявки из которых будут отображаться в Календаре событий по заявкам в Дайджесте.',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            'Задает регулярное выражение для IP для доступа к локальному репозиторию. его надо указать, чтбы иметь доступ к вашему локальному репозиторию и package::RepositoryList требуется для удаленного хоста.',
        'Defines the URL CSS path.' => 'Задает путь к URL CSS.',
        'Defines the URL base path of icons, CSS and Java Script.' => 'Задает путь в виде URL к icons, CSS и Java Script.',
        'Defines the URL image path of icons for navigation.' => 'Задает путь в виде URL к файлам иконок навигационной панели.',
        'Defines the URL java script path.' => 'Задает путь в виде URL к java скриптам.',
        'Defines the URL rich text editor path.' => 'Задает путь в виде URL к rich text editor',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            'Задать адрес выделенного DNS сервера , если необходимо, для проверки "CheckMXRecord".',
        'Defines the agent preferences key where the shared secret key is stored.' =>
            'Задает ключ личных настроек агента в котором хранится общий секретный ключ.',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            'Задает текст письма в почтовом уведомлении, посылаемом агентам, о новом пароле (после использования этой ссылки, будет выслан новый пароль).',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            'Задает текст письма в почтовом уведомлении, посылаемом агентам, с сообщением о запросе нового пароля (после использования этой ссылки, будет выслан новый пароль).',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            'Задает текст письма в почтовом уведомлении, посылаемом клиентам, о создании новой учетной записи.',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            'Задает текст письма в почтовом уведомлении, посылаемом клиентам, о новом пароле (после использования этой ссылки, будет выслан новый пароль)',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            'Задает текст письма в почтовом уведомлении, посылаемом клиентам, с сообщением о запросе нового пароля (после использования этой ссылки, будет выслан новый пароль).',
        'Defines the body text for rejected emails.' => 'Задает содержание сообщения для отвергнутых писем',
        'Defines the calendar width in percent. Default is 95%.' => 'Задает ширину фрейма для Календаря в процентах. Стандартно - 95%.',
        'Defines the cluster node identifier. This is only used in cluster configurations where there is more than one OTRS frontend system. Note: only values from 1 to 99 are allowed.' =>
            'Задает идентификатор узла кластера. Это используется только в кластерных конфигурациях на которых разворачиваются более одной системы OTRS. Значение может быть в пределах от 1 до 99.',
        'Defines the column to store the keys for the preferences table.' =>
            'Задает колонку для хранения ключей для таблицы личных настроек.',
        'Defines the config options for the autocompletion feature.' => 'Задает настройки для функции автозавершения.',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            'Задает параметры для этого элемента, которые будут отображаться на экране личных настроек.',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            'Задает параметры для этого элемента, которые будут отображаться на экране личных настроек. Следите за содержанием соответствующих словарей в системе.',
        'Defines the connections for http/ftp, via a proxy.' => 'Задает параметры для соединения для http/ftp, через proxy.',
        'Defines the customer preferences key where the shared secret key is stored.' =>
            'Задает ключ личных настроек клиента в котором хранится общий секретный ключ.',
        'Defines the date input format used in forms (option or input fields).' =>
            'Задает способ ввода даты (выбором (option) или прямым вводом в поле (input).',
        'Defines the default CSS used in rich text editors.' => 'Задает стандартные CSS, используемые в текстовом редакторе (rich text editor).',
        'Defines the default auto response type of the article for this operation.' =>
            'Задает стандартный тип автоответа для этой операции.',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            'Задает стандартный текст заметки при редактировании Дополнительных полей (ticket free text) в интерфейсе агента.',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. If you like, you can add your own theme. Please refer the administrator manual located at http://otrs.github.io/doc/.' =>
            'Задает имя темы (HTML theme - имя папки для альтернативных модулей), которая будет использоваться в интерфейсах агентов и клиентов. По желанию, вы можете добавить свою собственную тему. Подробности в руководстве администратора http://otrs.github.io/doc/.',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            'Задает язык интерфейса по умолчанию. Все доступные значения определяются наличием соответствующих языковых файлов в системе (см. следующий параметр).',
        'Defines the default history type in the customer interface.' => 'Задает тип записи истории в интерфейсе клиента.',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            'Задает максимальное количество атрибутов для оси - Х для временНой шкалы.',
        'Defines the default maximum number of statistics per page on the overview screen.' =>
            'Задает стандартное значение максимального количества отчетов на странице экрана просмотра.',
        'Defines the default next state for a ticket after customer follow-up in the customer interface.' =>
            'Задает следующее состояние по умолчанию для заявки, после ответа клиентом на сообщение или дополнение к заявке в интерфейсе клиента  .',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки при закрытии заявки в интерфейсе агента.',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки при массовом действии (bulk action) в интерфейсе агента.',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки при редактировании Дополнительных полей в интерфейсе агента.',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки в интерфейсе агента.',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки при смене Владельца заявки при ее просмотре в интерфейсе агента.',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки при переводе заявки в ожидание в интерфейсе агента.',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки при изменении приоритета заявки в интерфейсе агента.',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после добавления заметки при смене Ответственного за заявку в интерфейсе агента.',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после отправки (bounce) на экране Отправить заявки в интерфейсе агента.',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после перенаправлении (forward) заявки на экране Переслать в интерфейсе агента.',
        'Defines the default next state of a ticket after the message has been sent, in the email outbound screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки после отправки сообщения на экране создания исходящего почтового сообщения в интерфейсе агента.',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию для заявки при создании ответа/сообщения в интерфейсе агента.',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            'Задать стандартный текст для телефонной заявки при регистрации входящего звонка клиента в интерфейсе агента.',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            'Задать стандартный текст для телефонной заявки при регистрации исходящего звонка клиенту в интерфейсе агента.',
        'Defines the default priority of follow-up customer tickets in the ticket zoom screen in the customer interface.' =>
            'Задает приоритет по умолчанию при ответе клиента через клиентский интерфейс.',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            'Задает приоритет по умолчанию для новой заявки клиента через клиентский интерфейс.',
        'Defines the default priority of new tickets.' => 'Задает умалчиваемый приоритет для новых заявок',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            'Задает умалчиваемую очередь для новых заявок, создаваемых клиентом в WEB интерфейсе.',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            'Задает стандартный выбор для выпадающего меню для динамических объектов (Экран: Общие характеристики).',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            'Задает стандартный выбор для выпадающего меню для прав доступа (Экран: Общие характеристики).',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            'Задает стандартный выбор для выпадающего меню для формата вывода (Экран: Общие характеристики). Выберите тип формата (смотрите параметр Формат вывода).',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            'Выберите умалчиваемый тип отправителя для телефонной заявки при регистрации входящего звонка в интерфейсе агента.',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            'Выберите умалчиваемый тип отправителя для телефонной заявки при регистрации исходящего звонка клиенту в интерфейсе агента.',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            'Выберите умалчиваемый тип отправителя для заявки при ответе в интерфейсе клиента.',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            'Выберите атрибут по умолчанию для показа на экране поискового запроса.',
        'Defines the default shown ticket search attribute for ticket search screen. Example: "Key" must have the name of the Dynamic Field in this case \'X\', "Content" must have the value of the Dynamic Field depending on the Dynamic Field type,  Text: \'a text\', Dropdown: \'1\', Date/Time: \'Search_DynamicField_XTimeSlotStartYear=1974; Search_DynamicField_XTimeSlotStartMonth=01; Search_DynamicField_XTimeSlotStartDay=26; Search_DynamicField_XTimeSlotStartHour=00; Search_DynamicField_XTimeSlotStartMinute=00; Search_DynamicField_XTimeSlotStartSecond=00; Search_DynamicField_XTimeSlotStopYear=2013; Search_DynamicField_XTimeSlotStopMonth=01; Search_DynamicField_XTimeSlotStopDay=26; Search_DynamicField_XTimeSlotStopHour=23; Search_DynamicField_XTimeSlotStopMinute=59; Search_DynamicField_XTimeSlotStopSecond=59;\' and or \'Search_DynamicField_XTimePointFormat=week; Search_DynamicField_XTimePointStart=Before; Search_DynamicField_XTimePointValue=7\';.' =>
            'Выберите атрибут по умолчанию для показа на экране поискового запроса. Пример: "Ключ" должен содержать имя динамического поля в этом случае \'X\', "Содержание" значение динамического поля в зависимости от его типа,  Текст: \'текст\', Dropdown: \'1\', Date/Time: \'Search_DynamicField_XTimeSlotStartYear=1974; Search_DynamicField_XTimeSlotStartMonth=01; Search_DynamicField_XTimeSlotStartDay=26; Search_DynamicField_XTimeSlotStartHour=00; Search_DynamicField_XTimeSlotStartMinute=00; Search_DynamicField_XTimeSlotStartSecond=00; Search_DynamicField_XTimeSlotStopYear=2013; Search_DynamicField_XTimeSlotStopMonth=01; Search_DynamicField_XTimeSlotStopDay=26; Search_DynamicField_XTimeSlotStopHour=23; Search_DynamicField_XTimeSlotStopMinute=59; Search_DynamicField_XTimeSlotStopSecond=59;\' и или \'Search_DynamicField_XTimePointFormat=week; Search_DynamicField_XTimePointStart=Before; Search_DynamicField_XTimePointValue=7\';.',
        'Defines the default sort criteria for all queues displayed in the queue view.' =>
            'Умалчиваемый критерий сортировки для всех очередей отображаемых в обзоре очередей.',
        'Defines the default sort criteria for all services displayed in the service view.' =>
            'Умалчиваемый критерий сортировки для всех сервисов отображаемых в обзоре сервисов.',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            'Умалчиваемый порядок сортировки для всех очередей отображаемых в обзоре очередей, после сортировки по приоритету.',
        'Defines the default sort order for all services in the service view, after priority sort.' =>
            'Умалчиваемый порядок сортировки для всех сервисов отображаемых в обзоре сервисов, после сортировки по приоритету.',
        'Defines the default spell checker dictionary.' => 'Словарь для проверки правописания.',
        'Defines the default state of new customer tickets in the customer interface.' =>
            'Умалчиваемое состояние для новых заявок в интерфейсе клиента.',
        'Defines the default state of new tickets.' => 'Задает состояние по умалчанию для новых заявок',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            'Тема по умолчанию для телефонной заявки на экране регистрации входящего звонка клиента в интерфейсе агента.',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            'Тема по умолчанию для телефонной заявки на экране регистрации исходящего звонка клиенту в интерфейсе агента.',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            'Тема по умолчанию для сообщения при редактировании Дополнительных полей в интерфейсе агента',
        'Defines the default the number of seconds (from current time) to re-schedule a generic interface failed task.' =>
            'Задает время по умолчанию, в секундах (от текущего времени) для перезапуска невыполненного задания. ',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок при поиске в интерфейсе клиента.',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок в обзоре эскалаций в интерфейсе агента.',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок в обзоре блокированных заявок в интерфейсе агента.',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок в обзоре заявок Ответственного в интерфейсе агента.',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок в обзоре статусов заявок в интерфейсе агента.',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок в обзоре наблюдаемых заявок в интерфейсе агента.',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок в обзоре результатов поиска в интерфейсе агента.',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of this operation.' =>
            'Задает атрибут заявки по умолчанию для сортировки заявок в обзоре результатов поиска для этой операции.',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            'Задает  стандартный текст сообщения об отправке заявки  для клиента/получателя заявки на экране Отправить в интерфейсе агента.',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию после регистрации входящего звонка клиента в интерфейсе агента.',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            'Задает следующее состояние по умолчанию после регистрации исходящего звонка клиента в интерфейсе агента.',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки (после приоритета) в обзоре эскалаций в интерфейсе агента. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки (после приоритета) в обзоре статусов в интерфейсе агента. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки в обзоре Ответственных в интерфейсе агента. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки в обзоре заблокированных в интерфейсе агента. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки в результатах поиска в интерфейсе агента. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket order in the ticket search result of the this operation. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки в результатах поиска для этой операции. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки в обзоре наблюдаемых заявок в интерфейсе агента. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            'Задает стандартный порядок сортировки в результатах поиска в интерфейсе клиента. Up: старые вверху. Down: новые вверху.',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране закрытия заявки в интерфейсе агента.',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране массовых действий в интерфейсе агента.',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране изменения Дополнительных полей заявки в интерфейсе агента.',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране создания заметки к заявке в интерфейсе агента.',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране назначения Владельца при просмотре заявки в интерфейсе агента.',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране перевода заявки в ожидание при просмотре заявки в интерфейсе агента.',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране назначения Приоритета при просмотре заявки в интерфейсе агента.',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            'Задает умалчиваемый приоритет заявки на экране назначения Ответственного при просмотре заявки в интерфейсе агента.',
        'Defines the default ticket type for new customer tickets in the customer interface.' =>
            'Задает умалчиваемый приоритет заявки для новой заявки в интерфейсе клиента.',
        'Defines the default type for article in the customer interface.' =>
            'Задает умалчиваемый тип сообщения в интерфейсе клиента.',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения при пересылке на экране Переслать в интерфейсе агента.',
        'Defines the default type of the article for this operation.' => 'Задает умалчиваемый тип сообщения для этой операции.',
        'Defines the default type of the message in the email outbound screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране создания исходящего почтового сообщения при просмотре заявки в интерфейсе агента.',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране закрытия в интерфейсе агента.',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения при массовых действиях в интерфейсе агента.',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране изменения Дополнительных полей в интерфейсе агента.',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране создания Заметки в интерфейсе агента.',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране назначения Владельца при просмотре заявки в интерфейсе агента.',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране при переводе заявки в ожидание при просмотре заявки в интерфейсе агента.',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране регистрации входящего звонка при просмотре заявки в интерфейсе агента.',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране регистрации исходящего звонка при просмотре заявки в интерфейсе агента.',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране изменения приоритета при просмотре заявки в интерфейсе агента.',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            'Задает умалчиваемый тип сообщения на экране назначения Ответственного при просмотре заявки в интерфейсе агента.',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            'Задает умалчиваемый тип сообщения на экране просмотра в интерфейсе клиента.',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            'Задает модуль по умолчанию, если никакой параметр Action (в url)не указан в интерфейсе агента.',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            'Задает модуль по умолчанию, если никакой параметр Action (в url)не указан в интерфейсе клиента.',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            'Задает умалчиваемое значение параметра Action для общедоступного (public) интерфейса. Параметр Action используется в скриптах системы.',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            'Задает умалчиваемый отображаемый тип отправителя заявки (стандартно: customer).',
        'Defines the dynamic fields that are used for displaying on calendar events.' =>
            'Задает динамическое поле, отображаемое при событиях календаря.',
        'Defines the fall-back path to open fetchmail binary. Note: The name of the binary needs to be \'fetchmail\', if it is different please use a symbolic link.' =>
            'Задает путь к расположению модуля приема почты. Обратите внимание - имя модуля должно быть \'fetchmail\', если ого отличается - используйте символьную ссылку.',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            'Задает фильтр для текста сообщений для подсветки URLs.',
        'Defines the format of responses in the ticket compose screen of the agent interface ([% Data.OrigFrom | html %] is From 1:1, [% Data.OrigFromName | html %] is only realname of From).' =>
            'Задает формат ответа на экране формирования сообщения в интерфейсе агента ([% Data.OrigFrom | html %] is From 1:1, [% Data.OrigFromName | html %] является действительным именем в From).',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            'Задает полный доменный адрес системы. ОН используется в качестве тэга OTRS_CONFIG_FQDN при написании текстов сообщений для ссылки на заявки. ',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            'Задает список групп, в которые включаются все клиенты (если CustomerGroupSupport включена и вы не желаете делать это для каждого клиента по отдельности).',
        'Defines the height for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            'Задает высоту окна текстового редактора на этом экране. Введите число пикселей и значение в процентах.',
        'Defines the height for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            'Задает высоту окна текстового редактора. Введите число пикселей и значение в процентах.',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории при закрытии заявки, в интерфейсе агента.',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для новой почтовой заявки, в интерфейсе агента.',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для новой телефонной заявки, в интерфейсе агента.',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            'Задает текст комментария в записи истории при изменении Дополнительных полей, в интерфейсе агента.',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для новой заметки, в интерфейсе агента.',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории при назначении Владельца заявки, в интерфейсе агента.',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для экрана перевода заявки в ожидание, в интерфейсе агента.',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для экрана регистрации входящего звонка клиента, в интерфейсе агента.',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для экрана регистрации исходящего звонка клиента, в интерфейсе агента.',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для экрана изменения приоритета, в интерфейсе агента.',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для экрана назначения Ответственного, в интерфейсе агента.',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            'Задает текст комментария в записи истории для экрана подробного просмотра заявки, в интерфейсе агента.',
        'Defines the history comment for this operation, which gets used for ticket history in the agent interface.' =>
            'Задает текст комментария в записи истории для этой операции, в интерфейсе агента.',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана закрытия заявки, в интерфейсе агента.',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана новой почтовой заявки, в интерфейсе агента.',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана новой телефонной заявки, в интерфейсе агента.',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            'Задает текст в записи истории для экрана изменения Дополнительных полей заявки, в интерфейсе агента.',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана новой заметки в заявке, в интерфейсе агента.',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана назначения Владельца заявки, в интерфейсе агента.',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана перевода заявки в ожидание, в интерфейсе агента.',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана регистрации входящего звонка клиента, в интерфейсе агента.',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана регистрации исходящего звонка клиента, в интерфейсе агента.',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана изменения проритета заявки, в интерфейсе агента.',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для экрана изменения Ответственного за заявку, в интерфейсе агента.',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            'Задает текст в записи истории для экрана подробного просмотра заявки, в интерфейсе агента.',
        'Defines the history type for this operation, which gets used for ticket history in the agent interface.' =>
            'Задает текст в записи истории для этой операции, в интерфейсе агента.',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            'Задает часы и дни недели в выбранном календаре для подсчета рабочего времени',
        'Defines the hours and week days to count the working time.' => 'Задает часы и дни недели для подсчета рабочего времени',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            'Задает ключ, который проверяется модулем Kernel::Modules::AgentInfo. Если этот ключ личных настроек верен, сообщение принимается системой.',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            'Задает ключ, который проверяется модулем CustomerAccept. Если этот ключ личных настроек верен, сообщение принимается системой.',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            'Задает тип связи \'Normal\'. Если исходное имя и планируемое имя содержат одинаковое значение, то результирующая связь - ненаправленная; иначе - направленная.',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            'Задает тип связи \'ParentChild\'. Если исходное имя и планируемое имя содержат одинаковое значение, то результирующая связь - ненаправленная; иначе - направленная.',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            'Задает группы типов связи. Типы связи одинаковых групп отменяют друг друга. Например: Если заявка А связана связью типа \'Normal\'с заявкой Б, то эти заявки не могут быть дополнительно связаны связью типа \'ParentChild\'.',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            'Задает список online репозиториев. Другие установленные системы могут быть использованы в качестве репозиториев, например: Ключ="http://example.com/otrs/public.pl?Action=PublicRepository;File=" и Содержание="Some Name".',
        'Defines the list of possible next actions on an error screen.' =>
            'Задает список возможных следующих действий/actions на экране сообщения об ошибке.',
        'Defines the list of types for templates.' => 'Задает список типов для шаблонов',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            'Задает расположение для получения списка online репозиториев для дополнительных пакетов. Будет использоваться первый доступный.',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            'Задает тип журнала для системы. "File" пишет все сообщения в указанный logfile, "SysLog" использует syslog daemon системы, т.е. syslogd.',
        'Defines the maximal size (in bytes) for file uploads via the browser. Warning: Setting this option to a value which is too low could cause many masks in your OTRS instance to stop working (probably any mask which takes input from the user).' =>
            'Задает максимальный размер в байтах для файлов загружаемых через браузер. Предупреждение: Не задавайте слишком малое значение этому параметру во избежание остановки работы OTRS',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            'Задает максимально возможное время (в секундах) для сессии (session id).',
        'Defines the maximum number of affected tickets per job.' => 'Определяет максимальное количество заявок, подвергаемых обработке в задании.',
        'Defines the maximum number of pages per PDF file.' => 'Задает максимальное количество страниц для PDF файла',
        'Defines the maximum number of quoted lines to be added to responses.' =>
            'Определяет максимальное количество цитируемых строк, которые будут добавлены к ответам.',
        'Defines the maximum number of tasks to be executed as the same time.' =>
            'Задает максимальное количество задач, выполняемых одновременно.',
        'Defines the maximum size (in MB) of the log file.' => 'Задает максимальный размер (в MB) для файла журнала.',
        'Defines the maximum size in KiloByte of GenericInterface responses that get logged to the gi_debugger_entry_content table.' =>
            'Задаёт максимальный размер в килобайтах для ответов GenericInterface которые регистрируются в таблице gi_debugger_entry_content.',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            'Задает модуль который показывает основные уведомления в интерфейсе агента. Либо "Text", если настроен, либо содержимое "File" будет отображаться.',
        'Defines the module that shows all the currently loged in customers in the agent interface.' =>
            'Задает модуль который показывает всех подключившихся клиентов в интерфейсе агента.',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            'Задает модуль который показывает всех подключившихся агентов в интерфейсе агента.',
        'Defines the module that shows the currently loged in agents in the customer interface.' =>
            'Задает модуль который показывает всех подключившихся агентов в интерфейсе клиента.',
        'Defines the module that shows the currently loged in customers in the customer interface.' =>
            'Задает модуль который показывает всех подключившихся клиентов в интерфейсе клиента.',
        'Defines the module to authenticate customers.' => 'Задает модуль аутентификации клиентов',
        'Defines the module to display a notification in different interfaces on different occasions for OTRS Business Solution™.' =>
            'Задает модуль, который показывает уведомление в различных интерфейсах, в различных случаях в OTRS Business Solution™.',
        'Defines the module to display a notification in the agent interface if the OTRS Daemon is not running.' =>
            'Задает модуль который показывает уведомление в интерфейсе агента, если не запущен OTRS Daemon.',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            'Задает модуль который показывает уведомление в интерфейсе агента, если агент зашел в систему при включенном режиме "Вне офиса".',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having system maintenance active.' =>
            'Задает модуль который показывает уведомление в интерфейсе агента, если агент зашел в систему, когда она в состоянии Профилактика/Обслуживание системы.',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            'Задает модуль который показывает уведомление в интерфейсе агента, что вы зашли в систему как администратор (в обычном режиме вы не должны работать под этой учетной записью).',
        'Defines the module to generate code for periodic page reloads.' =>
            'Задает модуль, генерирующий код для периодической перезагрузки страниц.',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            'Задает модуль для отправки почты. "Sendmail" непосредственно использует sendmail сервис вашей ОС. Любой из "SMTP" механизмов использует заданный (внешний) почтовый сервер. "DoNotSendEmail" отключает отправку почты, это может быть полезно при тестировании системы.',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            'Задает модуль для сохранения данных сеансов. "DB" - сохраняются в БД системы. "FS" - быстрее.',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            'Имя приложения, показываемое в веб - интерфейсе, вкладке и заголовке браузера.',
        'Defines the name of the column to store the data in the preferences table.' =>
            'Задает имя колонки для хранения данных в preferences table.',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            'адает имя колонки для хранения идентификатора пользователя в preferences table.',
        'Defines the name of the indicated calendar.' => 'Задает имя выбранного календаря.',
        'Defines the name of the key for customer sessions.' => 'Задает имя ключа для сеансов клиента.',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            'Задает имя ключа для сеанса. Т.е. Session, SessionID или OTRS.',
        'Defines the name of the table, where the customer preferences are stored.' =>
            'Задает имя таблицы в которой сохраняются личные настройки клиентов.',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            'Задает список следующих доступных состояний после ответа на заявку на экране создания ответа в интерфейсе агента.',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            'Задает список следующих доступных состояний после пресылки заявки на экране Переслать в интерфейсе агента.',
        'Defines the next possible states after sending a message in the email outbound screen of the agent interface.' =>
            'Задает список следующих доступных состояний после отправки сообщения на экране регистрации исходящего почтового сообщения в интерфейсе агента.',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            'Задает список следующих доступных состояний для заявок клиента в интерфейсе клиента.',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране закрытия заявки в интерфейсе агента.',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране Массовое действие в интерфейсе агента.',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране Дополнительные поля в интерфейсе агента.',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране Заметка (Сообщение) в интерфейсе агента.',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране назначения Вдладельца заявки в интерфейсе агента.',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране перевода заявки в состояние ожидания в интерфейсе агента.',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране смены Приоритета заявки в интерфейсе агента.',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            'Задает следующее состояние заявки после добавления заметки на экране назначения Ответственного в интерфейсе агента.',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            'Задает следующее состояние заявки после перенаправления заявки на экране перенаправления заявки в интерфейсе агента.',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            'Задает следующее состояние заявки после перемещения заявки в другую очередь на экране  перемещения заявки в другую очередь в интерфейсе агента.',
        'Defines the number of character per line used in case an HTML article preview replacement on TemplateGenerator for EventNotifications.' =>
            'Задает количество символов в строке, используемое при просмотре сообщений в HTML формате в TemplateGenerator/Генераторе_шаблонов для EventNotifications/Уведомлений_о_событиях.',
        'Defines the number of days to keep the daemon log files.' => 'Задает количество дней хранения daemon log files.',
        'Defines the number of header fields in frontend modules for add and update postmaster filters. It can be up to 99 fields.' =>
            'Задает количество полей заголовков для добавления или обновления postmaster фильтров. Можно указать до 99 полей.',
        'Defines the parameters for the customer preferences table.' => 'Задает параметры личных настроек для клиента',
        'Defines the parameters for the dashboard backend. "Cmd" is used to specify command with parameters. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            'Задает параметры для Дайджеста. "Cmd"  используется для указания команды с параметрами. "Group" используется для ограничения доступа к нему (т.е. Group: admin;group1;group2;). "Default" означает, что он доступен по умолчанию или агент может его включить сам. "CacheTTL" задает период обновления кэша в минутах.',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            'Задает параметры для Дайджеста. "Group" используется для ограничения доступа к нему (т.е. Group: admin;group1;group2;). "Default" означает, что он досупен по умолчанию или агент может его включить сам. "CacheTTL"  задает период обновления кэша в минутах.',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            'Задает параметры для Дайджеста. "Group" используется для ограничения доступа к нему (т.е. Group: admin;group1;group2;). "Default" означает, что он досупен по умолчанию или агент может его включить сам. "CacheTTLLocal" задает период обновления кэша в минутах.',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            'Задает параметры для Дайджеста. "Limit" задает количество записей отображаемых по умолчанию. "Group" используется для ограничения доступа к нему (т.е. Group: admin;group1;group2;). "Default" означает, что он досупен по умолчанию или агент может его включить сам. "CacheTTL"  задает период обновления кэша в минутах.',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            'Задает параметры для Дайджеста. "Limit" задает количество записей отображаемых по умолчанию. "Group" используется для ограничения доступа к нему (т.е. Group: admin;group1;group2;). "Default" означает, что он досупен по умолчанию или агент может его включить сам. "CacheTTLLocal"  задает период обновления кэша в минутах.',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            'Задает пароль доступа к обработчику SOAP (bin/cgi-bin/rpc.pl).',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            'Задает путь и файл TTF для bold italic monospaced font для PDF докуметов.',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            'Задает путь и файл TTF для bold italic proportional font для PDF докуметов.',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            'Задает путь и файл TTF для bold monospaced font для PDF докуметов.',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            'Задает путь и файл TTF для bold proportional font для PDF докуметов.',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            'Задает путь и файл TTF для  italic monospaced font для PDF докуметов.',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            'Задает путь и файл TTF для  italic proportional font для PDF докуметов.',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            'Задает путь и файл TTF для monospaced font для PDF докуметов.',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            'Задает путь и файл TTF для proportional font для PDF докуметов.',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Templates/Standard/CustomerAccept.tt.' =>
            'Задает путь к файлу info file/информационного сообщения, расположенного в Kernel/Output/HTML/Templates/Standard/CustomerAccept.tt.',
        'Defines the path to PGP binary.' => 'Задает путь к PGP binary.',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            'Задает путь к ssl binary. Может понадобиться переменная HOME - ($ENV{HOME} = \'/var/lib/wwwrun\';).',
        'Defines the postmaster default queue.' => 'Задает очередь по умолчанию для postmaster.',
        'Defines the priority in which the information is logged and presented.' =>
            'Задает приоритет с которым информация журналируется и отображается.',
        'Defines the receipent target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "System address" displays all system addresses) in the agent interface.' =>
            'Задает Получателя телефонной заявки и Отправителя почтовой заявки ("Queue" показывает все очереди, "System address" отображает все системные адреса) в интерфейсе агента.',
        'Defines the receipent target of the tickets ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the customer interface.' =>
            'Задает получателя заявки ("Queue" показывает все очереди, "SystemAddress" показывает все системные адреса) в интерфейсе клиента',
        'Defines the required permission to show a ticket in the escalation view of the agent interface.' =>
            'Задает требуемые права для просмотра эскалаций в интерфейсе агента.',
        'Defines the search limit for the stats.' => 'Задает лимит поиска для отчетов.',
        'Defines the sender for rejected emails.' => 'Задает отправителя для отвергнутых заявок.',
        'Defines the separator between the agents real name and the given queue email address.' =>
            'Задает разделитель между real name агента и почтовым адресом очереди.',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            'Задает стандартный набор прав для клиентов в системе. Если требуются дополнительные права, вы можете указать их здесь. Права должны существовать в системе (или добавлены в нее). При дополнении таблицы с правами помните, что строка с правом "rw" всегда должна быть последней в списке.',
        'Defines the standard size of PDF pages.' => 'Задает стандартный размер страницы при выводе в PDF',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            'Задает новое состояние заявки при получении ответа клиента, когда заявка была уже закрыта',
        'Defines the state of a ticket if it gets a follow-up.' => 'Задает состояние заявки при получении ответа клиента',
        'Defines the state type of the reminder for pending tickets.' => 'Задает тип состояния для отложенных заявок.',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            'Задает тему почтового сообщения, отправляемого агенту о новом пароле.',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            'Задает тему почтового сообщения, отправляемого агенту о вновь запрошенном пароле.',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            'Задает тему почтового сообщения, отправляемого клиенту о новой учетной записи.',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            'Задает тему почтового сообщения, отправляемого клиенту о новом пароле.',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            'Задает тему почтового сообщения, отправляемого клиенту о вновь запрошенном пароле.',
        'Defines the subject for rejected emails.' => 'Задает текст поля Тема для отвергнутых заявок',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            'Задает почтовый адрес системного администратора. Он будет отображаться в сообщениях об ошибках.',
        'Defines the system identifier. Every ticket number and http session string contains this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            'Задает идентификатор системы. Каждый номер заявки и http-сеанса содержит его. Это дает уверенность в том, что заявки только вашей системы будут обработаны как ответы (дополнения) (может быть полезно при связи между двумя установками OTRS).',
        'Defines the target attribute in the link to external customer database. E.g. \'AsPopup PopupType_TicketAction\'.' =>
            'Задает целевой атрибут в ссылке на внешнюю базу клиентов. Например, \'AsPopup PopupType_TicketAction\'.',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            'Задает целевой атрибут в ссылке на внешнюю базу клиентов. Например, \'target="cdb"\'.',
        'Defines the ticket fields that are going to be displayed calendar events. The "Key" defines the field or ticket attribute and the "Content" defines the display name.' =>
            'Задает поля, которые будут отображаться для заявки в Календаре событий по заявкам. Ключ - задает поле или атрибут заявки, а Содержание - отображаемое имя.',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            'Задает временную зону выбранног календаря, который позднее может быть назначен определенной очереди.',
        'Defines the two-factor module to authenticate agents.' => 'Задает модуль для двухфакторной аутентификации агентов.',
        'Defines the two-factor module to authenticate customers.' => 'Задает модуль для двухфакторной аутентификации клиентов.',
        'Defines the type of protocol, used by the web server, to serve the application. If https protocol will be used instead of plain http, it must be specified here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is only used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            'Задает тип протокола, используемого веб-сервером для системы. Если протокол https используется вместо простого http, он должен быть указан здесь. Этот параметр не влияет на настройки сервера/ов и не изменяет метода доступа к системе, и если указан неверно, не может закрыть возможность подключения к ней. Это значение используется лишь как переменная OTRS_CONFIG_HttpType используемая как тэг при построении сообщений/уведомлений, для построения ссылки на заявку.',
        'Defines the used character for plaintext email quotes in the ticket compose screen of the agent interface. If this is empty or inactive, original emails will not be quoted but appended to the response.' =>
            'Задает символ для выделения цитируемых почтовых сообщений на экране создания сообщения в интерфейсе агента. Если не задан или оставлено пустым, исходное сообщение не будет выделено, но будет добавлено к ответу.',
        'Defines the user identifier for the customer panel.' => 'Задает идентификатор пользователя для клиентской панели.',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            'Задает username для доступа к обработчику SOAP (bin/cgi-bin/rpc.pl).',
        'Defines the valid state types for a ticket.' => 'Задает действительные типы состояний для заявки',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.Console.pl Maint::Ticket::UnlockTimeout" can be used.' =>
            'Задает действительные состояния для разблокированных заявок. Для разблокирования заявок используйте скрипт "bin/otrs.Console.pl Maint::Ticket::UnlockTimeout".',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            'Задает отображение заявок при просмотре с этими видами блокировки . Стандартно: unlock(разблокирована), tmp_lock(временно блокировна).',
        'Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            'Задает ширину окна текстового редактора на этом экране. Введите число (пикселов) или значение в процентах.',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            'Задает ширину окна текстового редактора. Введите число (пикселов) или значение в процентах.',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            'Задает тип отправителя сообщения, показываемый при просмотре заявки.',
        'Defines which items are available for \'Action\' in third level of the ACL structure.' =>
            'Задает, какие элементы доступны для "Action" на третьем уровне структуры ACL.',
        'Defines which items are available in first level of the ACL structure.' =>
            'Задает, какие элементы доступны на первом уровне структуры ACL.',
        'Defines which items are available in second level of the ACL structure.' =>
            'Задает, какие элементы доступны на втором уровне структуры ACL.',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            'Задает, какие состояния будут установлены автоматически (Содержание), в зависимости от состояния ожидания (Ключ) после истечения его срока.',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            'Задает, какой тип сообщения открывается при входе в просмотр. Если ничего не указано, открывается последнее сообщение.',
        'Defines, which tickets of which ticket state types should not be listed in linked ticket lists.' =>
            'Задает, какие заявки с какими типами состояний не будут отображаться в списках связанных заявок.',
        'Delete expired cache from core modules.' => 'Удалить просроченный кэш модулей ядра.',
        'Delete expired loader cache weekly (Sunday mornings).' => 'Удалять просроченный кэш загрузчика еженедельно (утром в воскресенье).',
        'Delete expired sessions.' => 'Удалить просроченные сеансы.',
        'Deleted link to ticket "%s".' => 'Связь с заявкой «%s» удалена.',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            'Удаляет сеанс, если его id используется с некорректным remote IP address.',
        'Deletes requested sessions if they have timed out.' => 'Удаляет запрошенные сеансы с истекшим сроком.',
        'Deploy and manage OTRS Business Solution™.' => 'Развертывание и управление OTRS Business Solution™.',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            'Задает список доступных очередей для перемещения заявки в выпадающем списке или в новом окне в интерфейсе агента. Если выбрана опция "New Window" (в новом окне) вы можете добавить заметку о перемещении к заявке.',
        'Determines if the statistics module may generate ticket lists.' =>
            'Задает, может ли модуль статистки создавать список заявок.',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            'Задает список следующих доступных состояний после создания новой почтовой заявки в интерфейсе агента.',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            'Задает список следующих доступных состояний после создания новой телефонной заявки в интерфейсе агента.',
        'Determines the next possible ticket states, for process tickets in the agent interface.' =>
            'Задает список следующих доступных состояний после создания новой процессной заявки в интерфейсе агента.',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            'Задает какой следующий экран открывается после создания заявки в интерфейсе клиента.',
        'Determines the next screen after the follow-up screen of a zoomed ticket in the customer interface.' =>
            'Задает какой следующий экран открывается после создания ответа в экране просмотра заявки в интерфейсе клиента.',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return the last overview screen (e.g. search results, queueview, dashboard). TicketZoom will return to the TicketZoom.' =>
            'Задает какой следующий экран открывается после перемещения заявки. LastScreenOverview - возвращает к последнему экрану обзора )т.е. экран результата поиска, просмотру очередей, дайджесту). TicketZoom - возвращает в просмотр заявки.',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            'Задает возможные состояния для заявок с ожиданием, которые меняют состояние после истечения времени.',
        'Determines the strings that will be shown as receipent (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            'Задает строку, которая будет отображаться в поле получатель (To:) заявки в интерфейсе клиента. Для очереди, если CustomerPanelSelectionType, "<Queue>" отображается список имен очередей. Для SystemAddress "<Realname> <<Email>>" показывается имя и email получателя.',
        'Determines the strings that will be shown as recipient (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            'Задает строку, которая будет отображаться в поле получатель (To:) телефонной заявки или отправитель (From:) почтовой заявки в интерфейсе агента. Для очереди, если NewQueueSelectionType "<Queue>"/"Очередь" отображается список имен очередей. Для SystemAddress "<Realname> <<Email>>" показывается имя и email получателя.',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            'Задает способ отображения связанных объектов в подробных просмотрах.',
        'Determines which options will be valid of the recipient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            'Задает список доступных очередей для новой заяаки в интерфейсе клиента.',
        'Disable restricted security for IFrames in IE. May be required for SSO to work in IE8.' =>
            'Отключить ограничения безопасности для IFrames в IE. Может потребоваться SSO для работы в IE8.',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            'Отключает отправку напоминаний ответственному агенту (Ticket::Responsible должен быть включен).',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box.' =>
            'Деактивирует веб-инсталлятор (http://yourhost.example.com/otrs/installer.pl) во избежание возможности вскрытия (хакером) системы. Если установлен в "Нет", система будет переинсталлирована и текущая базовая конфигурация будет использована для предварительного заполнения ответов на вопросы установщика. Если не включено, также отключаются возможности GenericAgent, PackageManager и SQL Box.',
        'Display a warning and prevent search when using stop words within fulltext search.' =>
            'Отобразить предупреждение и прекратить поиск при использовании стоп-слов при полнотекстовом поиске',
        'Display settings to override defaults for Process Tickets.' => 'Отображает настройки, перекрывающие умалчиваемые для процессных заявок.',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            'Отображает учтенное время для заметки в подробном просмотре заявки.',
        'Dropdown' => 'Выпадающий список',
        'Dynamic Fields Checkbox Backend GUI' => 'Редактор динамических полей типа Checkbox',
        'Dynamic Fields Date Time Backend GUI' => 'Редактор динамических полей типа Date Time',
        'Dynamic Fields Drop-down Backend GUI' => 'Редактор динамических полей типа Drop-down',
        'Dynamic Fields GUI' => 'Редактор динамических полей',
        'Dynamic Fields Multiselect Backend GUI' => 'Редактор динамических полей типа Multiselect',
        'Dynamic Fields Overview Limit' => 'Количество строк списка динамических полей на странице.',
        'Dynamic Fields Text Backend GUI' => 'Редактор динамических полей типа Text',
        'Dynamic Fields used to export the search result in CSV format.' =>
            'Динамические поля включаемые в результат поиска при экспорте в формате CSV.',
        'Dynamic fields groups for process widget. The key is the name of the group, the value contains the fields to be shown. Example: \'Key => My Group\', \'Content: Name_X, NameY\'.' =>
            'Группы динамических полей для процессного виджета. Ключ - имя группы, Значение - содержит имена показываемых полей. Например: Ключ - "My Group", Содержание: "Name_X, NameY".',
        'Dynamic fields limit per page for Dynamic Fields Overview' => 'Количество строк списка динамических полей на странице.',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###DynamicField.' =>
            'Параметры отображения динамических полей при создании заявки в интерфейсе клиента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено. Внимание. Если вы желаете отобразить эти поля на экране просмотра заявки в клиентском интерфейсе, необходимо активировать их в параметре CustomerTicketZoom###DynamicField.',
        'Dynamic fields options shown in the ticket reply section in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры отображения динамических полей при создании ответа на сообщение на экране просмотра заявки в интерфейсе клиента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the email outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Список Динамических полей, показываемых на экране перенаправления почтового сообщения в интерфейсе агента. Возможные значения: 0 - не показывать, 1 - показывать, 2 - показывать, значение обязательно.',
        'Dynamic fields shown in the process widget in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей в процессном виджете на экране просмотра заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the sidebar of the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей в информации о заявке на экране просмотра заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране закрытия заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране ответа на заявку в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране создания почтовой заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране пересылки заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране Дополнительные поля в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей на экране просмотра заявок в medium формате в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране перемещения заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране создания заметки (сообщения) в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket overview screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране обзора заявок в интерфейсе клиента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране назначения Владельца в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране перевода заявки в ожидание в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране регистрации входящего звонка клиента в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране регистрации исходящего звонка клиента в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране создания телефонной заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей в режиме предварительного просмотра на экране обзора в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей на экране печати заявки в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей на экране печати заявки в интерфейсе клиента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране назначения приоритета в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Параметры показа динамических полей на экране назначения Ответственного в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать, 2 - показывать и должно быть заполнено.',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей на экране обзора результатов поиска в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and shown by default.' =>
            'Перечень динамических полей на экране выбора атрибутов поиска в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - можно выбрать из списка, 2 - включено по умолчанию.',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей на экране поиска в интерфейсе клиента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            'Параметры показа динамических полей на экране просмотра заявок в small формате в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - доступно, 2 - включено по умолчанию..',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            'Параметры показа динамических полей на экране просмотра заявки интерфейсе клиента. Возможные значения: 0 = не показывать, 1 - показывать.',
        'DynamicField backend registration.' => 'Регистрация типов используемых динамических полей (dropdown, text, checbox...).',
        'DynamicField object registration.' => 'Регистрация объектов  для динамических полей (поле заявки или сообщения/заметки).',
        'E-Mail Outbound' => 'Перенаправить почтовое сообщение',
        'Edit customer company' => 'Редактировать компанию клиента',
        'Email Addresses' => 'Адреса email',
        'Email sent to "%s".' => 'Ответ оправлен «%s».',
        'Email sent to customer.' => 'Клиенту отправлено письмо.',
        'Enable keep-alive connection header for SOAP responses.' => '',
        'Enabled filters.' => 'Доступные фильтры.',
        'Enables PGP support. When PGP support is enabled for signing and encrypting mail, it is HIGHLY recommended that the web server runs as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            'Включает поддержку PGP, когда она включается для возможности подписи и дешифровки почты, настоятельно рекомендуется, чтобы веб-сервер запускался от имени пользователя OTRS. Иначе, возможны проблемы с привилегиями при доступе к папке .gnupg.',
        'Enables S/MIME support.' => 'Включить поддержку S/MIME',
        'Enables customers to create their own accounts.' => 'Дать возможность клиентам самостоятельно создавать свои учетные записи.',
        'Enables file upload in the package manager frontend.' => 'Включает возможность загрузки дополнительных пакетов (расширений) в Управлении пакетами.',
        'Enables or disables the caching for templates. WARNING: Do NOT disable template caching for production environments for it will cause a massive performance drop! This setting should only be disabled for debugging reasons!' =>
            'Включает или отключает кэширование для шаблонов. ВНИМАНИЕ: НЕ отключайте кэширование шаблонов в рабочей системе, так как это приведет к значительному снижению производительности! Этот параметр следует отключать только для целей отладки!',
        'Enables or disables the debug mode over frontend interface.' => 'Включает или выключает режим отладки через интерфейс системы.',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            'Включает/выключает функцию наблюдения за заявками, чтобы иметь возможность отслеживания заявок не будучи ее владельцем или ответственным.',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            'Включает журналирование производительности (время загрузки страниц). Этот параметр снижает производительность системы. Параметр Frontend::Module###AdminPerformanceLog должен быть активирован.',
        'Enables spell checker support.' => 'Включает проверку правописания',
        'Enables the minimal ticket counter size (if "Date" was selected as TicketNumberGenerator).' =>
            'Включает минимальный размер счетчика заявок (Если "Date" было выбрано в качестве TicketNumberGenerator).',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            'Включает возможность массовых операций с заявками',
        'Enables ticket bulk action feature only for the listed groups.' =>
            'Включает возможность массовых операций с заявками только для выбранных групп.',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            'Включает возможностьназначения Ответственных для заявки.',
        'Enables ticket watcher feature only for the listed groups.' => 'Включает возможность Наблюдения для заявок для выбранных групп агентов.',
        'English (Canada)' => 'Английский (Канада)',
        'English (United Kingdom)' => 'Английский (Великобритания)',
        'English (United States)' => 'Английский (США)',
        'Enroll process for this ticket' => 'Зарегистрировать процесс для этой заявки',
        'Enter your shared secret to enable two factor authentication.' =>
            'Введите ваш общий ключ для включения двухфакторной аутентификации.',
        'Escalation response time finished' => 'Эскалация - время первого ответа наступило',
        'Escalation response time forewarned' => 'Эскалация - предупреждение о наступлении времени первого ответа',
        'Escalation response time in effect' => 'Эскалация по времени отклика включена',
        'Escalation solution time finished' => 'Эскалация - время выполнения наступило',
        'Escalation solution time forewarned' => 'Эскалация - предупреждение о наступлении времени решения',
        'Escalation solution time in effect' => 'Эскалация по времени решения включена',
        'Escalation update time finished' => 'Срок эскалации по времени обновления наступил',
        'Escalation update time forewarned' => 'Срок эскалации по времени обновления скоро наступит',
        'Escalation update time in effect' => 'Эскалация по времени обновления включена',
        'Escalation view' => 'Просмотр эскалированных заявок',
        'EscalationTime' => 'EscalationTime',
        'Estonian' => 'Эстонский',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate).' =>
            'Регистрация модуля обработки события. Для большей производительности вы должны задать событие (например: Event => TicketCreate).',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            'Регистрация модуля обработки события. Для большей производительности вы должны задать событие (например: Event => TicketCreate). Это возможно только в случае, если все динамические поля заявки нуждаются в одном и том же событии.',
        'Event module that performs an update statement on TicketIndex to rename the queue name there if needed and if StaticDB is actually used.' =>
            'Модуль обработки события, который выполняет команду обновления для TicketIndex для переименования очереди, если необходимо, и если используется StaticDB.',
        'Event module that updates customer user search profiles if login changes.' =>
            'Модуль обработки события, который обновляет профили поиска для клиента при смене логина.',
        'Event module that updates customer user service membership if login changes.' =>
            'Модуль обработки события, который обновляет принадлежность сервисов клиентов после смены логина клиента.',
        'Event module that updates customer users after an update of the Customer.' =>
            'Модуль обработки события, который обновляет заявки клиентов после обновления учетной записи клиента.',
        'Event module that updates tickets after an update of the Customer User.' =>
            'Модуль обработки события, который обновляет заявки клиентов после обновления учетной записи клиента.',
        'Event module that updates tickets after an update of the Customer.' =>
            'Модуль обработки события, который обновляет заявки клиентов после обновления учетной записи клиента.',
        'Events Ticket Calendar' => 'Календарь событий по заявкам',
        'Execute SQL statements.' => 'Выполнить SQL-запросы.',
        'Executes a custom command or module. Note: if module is used, function is required.' =>
            'Выполняет пользовательскую команду или модуль. Внимание: если используется модуль, требуется указание функции.',
        'Executes follow-up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            'Выполняет проверку ответа клиента в In-Reply-To или References заголовках для писем, не содержащих в Теме номер заявки.',
        'Executes follow-up checks on attachment contents for mails that don\'t have a ticket number in the subject.' =>
            'Выполняет проверку вложения к почтовым ответам клиента, не имеющим в Теме номера заявки.',
        'Executes follow-up checks on email body for mails that don\'t have a ticket number in the subject.' =>
            'Выполняет проверку тела сообщения в почтовых ответах клиента, не имеющих в Теме номер заявки.',
        'Executes follow-up checks on the raw source email for mails that don\'t have a ticket number in the subject.' =>
            'Выполняет проверку тела сообщения в исходном формате/raw в почтовых ответах клиента, не имеющих в Теме номер заявки.',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            'Экспортирует все дерево сообщений в результат поиска (приводит к снижению производительности).',
        'Fetch emails via fetchmail (using SSL).' => 'Получение писем через fetchmail (используя SSL).',
        'Fetch emails via fetchmail.' => 'Получение писем через fetchmail.',
        'Fetch incoming emails from configured mail accounts.' => 'Получение входящих писем от настроенных учетных записей.',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            'Получает пакеты через proxy. Перекрывает параметр "WebUserAgent::Proxy".',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Templates/Standard/AgentInfo.tt.' =>
            'Файл отображаемый модулем Kernel::Modules::AgentInfo, если он помещен в Kernel/Output/HTML/Templates/Standard/AgentInfo.tt.',
        'Filter for debugging ACLs. Note: More ticket attributes can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            'Фильтр для отладки ACL. Примечание: атрибуты могут быть добавлены в формате <OTRS_TICKET_Attribute> например, <OTRS_TICKET_Priority>.',
        'Filter for debugging Transitions. Note: More filters can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            'Фильтр для отладки Переходов. Примечание: можно добавить фильты в формате <OTRS_TICKET_Attribute> например, <OTRS_TICKET_Priority>. ',
        'Filter incoming emails.' => 'Фильтрация входящей почты.',
        'Finnish' => 'Финский',
        'First Queue' => 'Имя первой Очереди',
        'FirstLock' => 'Дата первой блокировки',
        'FirstResponse' => 'Дата первого ответа',
        'FirstResponseDiffInMin' => 'FirstResponseDiffInMin',
        'FirstResponseInMin' => 'FirstResponseInMin',
        'Firstname Lastname' => 'Имя Фамилия',
        'Firstname Lastname (UserLogin)' => 'Имя Фамилия (UserLogin)',
        'FollowUp for [%s]. %s' => 'Отклик на [%s]. %s',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            'Устанавливает кодировку исходящей почты (7bit|8bit|quoted-printable|base64).',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            'Принудительно устанавливает новое состояние (отличное от текущего) поле блокрования заявки. Задайте текущее состояние как Ключ и следующее состояние как Содержание.',
        'Forces to unlock tickets after being moved to another queue.' =>
            'Сброс блокировки заявки при перемещении в другую очередь.',
        'Forwarded to "%s".' => 'Переcлано «%s».',
        'French' => 'Французский',
        'French (Canada)' => 'Французский (Канада)',
        'French stop words for fulltext index. These words will be removed from the search index.' =>
            'Французские стоп-слова для полнотекстовой индексации. Эти слова будут удалены и поискового индекса.',
        'Frontend module registration (disable AgentTicketService link if Ticket Serivice feature is not used).' =>
            'Frontend module registration (отключает ссылку AgentTicketService если опция Ticket Serivice не используется). ',
        'Frontend module registration (disable company link if no company feature is used).' =>
            'Frontend module registration (отключает ссылку на компанию, если отключена поддержка компаний).',
        'Frontend module registration (disable ticket processes screen if no process available) for Customer.' =>
            'Frontend module registration (отключает экран процессеой заявки, если нет доступных процессов) для клиента.',
        'Frontend module registration (disable ticket processes screen if no process available).' =>
            'Frontend module registration (отключает экран процессеой заявки, если нет доступных процессов).',
        'Frontend module registration for the agent interface.' => 'Frontend module registration для интерфейса агента.',
        'Frontend module registration for the customer interface.' => 'Frontend module registration для интерфейса клиента.',
        'Frontend theme' => 'Тема интерфеса',
        'Full value' => 'Полное значение',
        'Fulltext index regex filters to remove parts of the text.' => 'Регулярное выражение для удаления части текста в запросе полнотекстового поиска.',
        'Fulltext search' => 'Полнотекстовый поиск',
        'Galician' => 'Галисийский',
        'General ticket data shown in the ticket overviews (fall-back). Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note that TicketNumber can not be disabled, because it is necessary.' =>
            'Общие данные заявки отображаемые при обзорах заявок (fall-back). Возможные значения: 0 = отключено, 1 - доступно, 2 - включено по умолчанию. Номер заявки не может быть отключен, т.к. он обязателен.',
        'Generate dashboard statistics.' => 'Создать отчет для дайджеста.',
        'GenericAgent' => 'Планировщик задач',
        'GenericInterface Debugger GUI' => 'GenericInterface Debugger GUI',
        'GenericInterface Invoker GUI' => 'GenericInterface Invoker GUI',
        'GenericInterface Operation GUI' => 'GenericInterface Operation GUI',
        'GenericInterface TransportHTTPREST GUI' => 'GenericInterface TransportHTTPREST GUI',
        'GenericInterface TransportHTTPSOAP GUI' => 'GenericInterface TransportHTTPSOAP GUI',
        'GenericInterface Web Service GUI' => 'GenericInterface Web Service GUI',
        'GenericInterface Webservice History GUI' => 'GenericInterface Webservice History GUI',
        'GenericInterface Webservice Mapping GUI' => 'GenericInterface Webservice Mapping GUI',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'German' => 'Немецкий',
        'German stop words for fulltext index. These words will be removed from the search index.' =>
            'Немецкие стоп-слова для полнотекстовой индексации. Эти слова будут удалены и поискового индекса.',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            'Дает конечному пользователю возможность переопределить символ - разделитель для файла CSV, заданный в файле локализации.',
        'Go back' => 'Назад',
        'Google Authenticator' => 'Аутентификатор Google ',
        'Grants access, if the customer ID of the ticket matches the customer user\'s ID and the customer user has group permissions on the queue the ticket is in.' =>
            'Разрешает доступ, если customer ID заявки совпадает с customer user\'s ID и клент имеет групповые права на доступ к очереди в которой находится заявка.',
        'Greek' => 'Греческий',
        'Hebrew' => 'Иврит',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild".' =>
            'Позволяет расширить возможности полнотекстового поиска (в полях From, To, Cc, Subject и Body). Runtime - выполняет поиск по "живым" данным (хорошо работает при количестве заявок до 50.000). StaticDB удаляет все сообщения/заметки и строит индекс после их создания, увеличивая скорость поиска до 50%. Для создания начальных индексов используйте скрипт "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild".',
        'Hindi' => 'Хинди',
        'Hungarian' => 'Венгерский',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, драйвер СУБД (обычно используется автоопределение) должен быть задан.',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, пароль для доступа к таблице клиентов должен быть указан.',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, имя пользователя для доступа к таблице клиентов должно быть указано.',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, имя файла для доступа к таблице клиентов должно быть указано.',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, имя колонки для CustomerPassword (пароль клиента) в таблице клиентов должно быть указано.',
        'If "DB" was selected for Customer::AuthModule, the crypt type of passwords must be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, тип шифрования для пароля должен быть задан.',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, имя колонки для CustomerKey в таблице клиентов должно быть задано.',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            'Если "DB" выбрано для Customer::AuthModule, имя таблицы где будут храниться данные клиентов должно быть задано.',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            'Если "DB" выбрано для SessionModule, таблица в БД, где будут храниться сеансы должна быть указана.',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            'Если "DB" выбрано для SessionModule, папка в БД, где будут храниться сеансы должна быть указана.',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            'Если "HTTPBasicAuth" было выбрано для Customer::AuthModule, вы можете задать (используя RegExp) удаление части REMOTE_USER (т.е. для удаления имени домена). RegExp-Note, $1 будет новый Login.',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            'Если "HTTPBasicAuth" было выбрано для Customer::AuthModule, вы можете задать удаление части имени пользователя ( т.е. для домена типа example_domain\user получится user).',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule и вы желаете добавить суффикс к каждому логину пользователя, задайте его здесь, т.е. вы вы хотите имя пользователя user, но в вашем LDAP существует user@domain.',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule и специальные параметры необходимы для Net::LDAP perl module, вы можете задать их здесь. См. "perldoc Net::LDAP" для дополнительной информации о параметрах.',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule и ваши пользователи имеют только анонимный доступ к LDAP, но вы желаете осуществлять поиск данных в нем, вы можете осуществить это с учетной записью пользователя, имеющего доступ к LDAP. Задайте пароль такого пользователя здесь.',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule и ваши пользователи имеют только анонимный доступ к LDAP, но вы желаете осуществлять поиск данных в нем, вы можете осуществить это с учетной записью пользователя, имеющего доступ к LDAP. Задайте его username такого пользователя здесь.',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule, BaseDN должен быть указан.',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule, хост для LDAP должен быть указан.',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule, идентификатор пользователя должен быть указан.',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule, атрибуты пользователя должны быть указаны. для LDAP posixGroups используйте UID, для не LDAP posixGroups используйте полный DN пользователя.',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule, вы можете задать атрибуты доступа здесь.',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule, вы можете задать должно ли приложение быть остановлено если, например, соединение с сервером не может быть установлено из-за проблем с сетью.',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            'Если "LDAP" было выбрано для Customer::AuthModule, вы можете проверять позволено ли клиенту входить, т.к. он член posixGroup, например, пользователь должен быть в группе xyz длч работы в OTRS. Задайте группу, которая имеет доступ к системе.',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            'Если "LDAP" было выбрано, вы можете добавить фильтр для каждого LDAP запроса, например (mail=*), (objectclass=user) или (!objectclass=computer).',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            'Если "Radius" выбрано для Customer::AuthModule, пароль для аутентификации на сервере radius должен быть задан.',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            'Если "Radius" выбрано для Customer::AuthModule, сервер radius должен быть задан.',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            'Если "Radius" было выбрано для Customer::AuthModule, вы можете указать, должно ли приложение быть остановлено, если, например, соединение с сервером не может быть установлено из-за проблем с сетью.',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            'Если "Sendmail" было выбрано для  SendmailModule, расположение модулей sendmail и требуемых параметров должно быть задано.',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            'Если "SysLog" было выбрано для LogModule, параметры записи в журнал можут быть заданы.',
        'If "SysLog" was selected for LogModule, a special log sock can be specified (on solaris you may need to use \'stream\').' =>
            'Если "SysLog" было выбрано для LogModule, специальный log sock может быть задан (для Solaris может потребоваться использовать  \'stream\').',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            'Если "SysLog" было выбрано для LogModule, набор символов (charset) для запси в журнал может быть задан.',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            'Если "file" было выбрано для LogModule, файл должен быть задан. Если файл не существует, он будет создан системой.',
        'If a note is added by an agent, sets the state of a ticket in the close ticket screen of the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на экране закрытия в интерфейсе агента.',
        'If a note is added by an agent, sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на экране массового действия в интерфейсе агента.',
        'If a note is added by an agent, sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на экране Дополнительные поля в интерфейсе агента.',
        'If a note is added by an agent, sets the state of a ticket in the ticket note screen of the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на экране создания сообщения/заметки в интерфейсе агента.',
        'If a note is added by an agent, sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на экране назначения Ответственного в интерфейсе агента.',
        'If a note is added by an agent, sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на экране назначения Владельца в интерфейсе агента.',
        'If a note is added by an agent, sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на экране перевода в ожидание в интерфейсе агента.',
        'If a note is added by an agent, sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Если сообщение/заметка добавлена агентом, задает состояние заявки на смены приоритета в интерфейсе агента.',
        'If active, none of the regular expressions may match the user\'s email address to allow registration.' =>
            'Если включено, адрес электронной почты пользователя  для разрешения регистрации может не соответствовать ни одному из регулярных выражений.',
        'If active, one of the regular expressions has to match the user\'s email address to allow registration.' =>
            'Если включено, адрес электронной почты пользователя  для разрешения регистрации должен соответствовать хотя бы одному из регулярных выражений.',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            'Если любой из "SMTP" механизмов был выбран для SendmailModule, и аутентификация на почтовом серевере необходима, пароль должен быть задан.',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            'Если любой из "SMTP" механизмов был выбран для SendmailModule, и аутентификация на почтовом серевере необходима, username должно быть задано.',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            'Если любой из "SMTP" механизмов был выбран для SendmailModule, mailhost, который отправляет почту, должен быть задан',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            'Если любой из "SMTP" механизмов был выбран для SendmailModule, порт, на котором, почтовый серевер проверяет входящие соединения, должен быть задан.',
        'If enabled debugging information for ACLs is logged.' => 'Включить журналирование отладки ACL.',
        'If enabled debugging information for transitions is logged.' => 'Включить журналирование отладки Переходов.',
        'If enabled the daemon will redirect the standard error stream to a log file.' =>
            'Если включено, демон перенаправит стандартный поток сообщений об ошибках в лог-файл.',
        'If enabled the daemon will redirect the standard output stream to a log file.' =>
            'Если включено, демон перенаправит стандартный вывод в лог-файл.',
        'If enabled, OTRS will deliver all CSS files in minified form. WARNING: If you turn this off, there will likely be problems in IE 7, because it cannot load more than 32 CSS files.' =>
            'Если включено, OTRSбудет использовать все CSS файлы в уменьшенном виде. ВНИМАНИЕ: если выключить, вы можете столкнуться с проблемами при использовании IE7, т.к. он не может загружать более 32 CSS файлов.',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            'Если включено, OTRS выполняет все JavaScript в минимизированной форме.',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            'Если включено, TicketPhone and TicketEmail будут открываться в новом окне браузера.',
        'If enabled, the OTRS version tag will be removed from the Webinterface, the HTTP headers and the X-Headers of outgoing mails.' =>
            'Если включено, номер версии OTRS будет удален из веб-интерфейса, HTTP-заголовков и X-Headers в исходящей почте.',
        'If enabled, the customer can search for tickets in all services (regardless what services are assigned to the customer).' =>
            'Если включено, клиент может производить поиск заявок во всех Сервисах (в зависимости от того, какие Сервисы назначены клиенту).',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            'Если включено, экраны обзоров (дайджест, просмотр заблокированных, просмотр очереди) будут автоматически обновляться по истечении указанного времени.',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            'Если включено, первый уровень меню будет открываться по наведению указателя мыши (вместо только "клика").',
        'If set, this address is used as envelope sender header in outgoing notifications. If no address is specified, the envelope sender header is empty.' =>
            '',
        'If set, this address is used as envelope sender in outgoing messages (not notifications - see below). If no address is specified, the envelope sender is equal to queue e-mail address.' =>
            '',
        'If this option is enabled, then the decrypted data will be stored in the database if they are displayed in AgentTicketZoom.' =>
            'Если включено, то расшифрованное содержимое будет сохраняться в БД, если оно отображается в AgentTicketZoom.',
        'If this option is set to \'Yes\', tickets created via the web interface, via Customers or Agents, will receive an autoresponse if configured. If this option is set to \'No\', no autoresponses will be sent.' =>
            'Если установлено в "Да", заявки, созданные через веб - интерфес клиента или агента, будут получать автоответы (если они заданы). Иначе, автоответы посылаться не будут.',
        'If this regex matches, no message will be send by the autoresponder.' =>
            'Если это регулярное выражение верно, сообщение не будет посылаться автоответчиком.',
        'Ignore article with system sender type for new article feature (e. g. auto responses or email notifications).' =>
            'Игнорировать системные сообщения для новых сообщений (например автоответы или почтовые уведомления).',
        'Include tickets of subqueues per default when selecting a queue.' =>
            'Включает заявки подочередей по умолчанию при выборе очереди.',
        'Includes article create times in the ticket search of the agent interface.' =>
            'Включить время создания сообщений/заметок в атрибуты поиска в интерфейсе агента.',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the command "bin/otrs.Console.pl Maint::Ticket::QueueIndexRebuild" for initial index creation.' =>
            'IndexAccelerator: для выбора серверного TicketViewAccelerator модуля. "RuntimeDB" - строит каждый обзор на лету из таблицы заявок (не будет проблем с производительностью, примерно, до общего объема в 60.000 заявок и 6.000 открытых). "StaticDB" - наиболее мощный модуль, он использует внешнюю таблицу индексов заявок (рекомендуется при объеме более 80.000 заявок при 6.000 открытых хранимых в системе). Используйте скрипт "bin/otrs.Console.pl Maint::Ticket::QueueIndexRebuild"  для первичного создания индексов.',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            'Устананавливает использование ispell или aspell в системе, если вы желаете использовать проверку правописания. Укажите путь к модулям ispell или aspell в вашей ОС.',
        'Interface language' => 'Язык интерфейса',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            'Можно задать разные схемы оформления, напрмер, чтобы отличать агентов из разных доменов. Используя регулярные выражения (regex), вы можете задать пары Ключ/Содержание, соответствующие доменам. Значение Ключа должно соответствовать домену, а значение Содержания - имя схемы (skin) в системе. Смотрите пример для правильного построения регулярного выражения.',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            'Можно задать разные схемы оформления, напрмер, чтобы отличать клиентов из разных доменов. Используя регулярные выражения (regex), вы можете задать пары Ключ/Содержание, соответствующие доменам. Значение Ключа должно соответствовать домену, а значение Содержания - имя схемы (skin) в системе. Смотрите пример для правильного построения регулярного выражения.',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            'Можно задать разные схемы оформления, напрмер, чтобы отличать агентов и клиентов, на основе принадлежности к доменам. Используя регулярные выражения (regex), вы можете задать пары Ключ/Содержание, соответствующие доменам. Значение Ключа должно соответствовать домену, а значение Содержания - имя схемы (skin) в системе. Смотрите пример для правильного построения регулярного выражения.',
        'Italian' => 'Итальянский',
        'Italian stop words for fulltext index. These words will be removed from the search index.' =>
            'Итальянские стоп-слова для полнотекстовой индексации. Эти слова будут удалены и поискового индекса.',
        'Japanese' => 'Японский',
        'JavaScript function for the search frontend.' => '',
        'Lastname, Firstname' => 'Фамилия, Имя',
        'Lastname, Firstname (UserLogin)' => 'Фамилия, Имя (UserLogin)',
        'Latvian' => 'Латышский',
        'Left' => 'Левый',
        'Link agents to groups.' => 'Связать агентов с группами.',
        'Link agents to roles.' => 'Связать агентов с ролями.',
        'Link attachments to templates.' => 'Связать вложения с шаблонами.',
        'Link customer user to groups.' => 'Связать клиентов с группами.',
        'Link customer user to services.' => 'Связать клиентов с сервисами.',
        'Link queues to auto responses.' => 'Связать очереди с автоответами.',
        'Link roles to groups.' => 'Связать роли с группами.',
        'Link templates to queues.' => 'Связать шаблоны с очередями.',
        'Links 2 tickets with a "Normal" type link.' => 'Связывает 2 заявки связью типа "Normal".',
        'Links 2 tickets with a "ParentChild" type link.' => 'Связывает 2 заявки связью типа "ParentChild".',
        'List of CSS files to always be loaded for the agent interface.' =>
            'Список CSS файлов всегда загружаемых в интерфейсе агента.',
        'List of CSS files to always be loaded for the customer interface.' =>
            'Список CSS файлов всегда загружаемых в интерфейсе клиента.',
        'List of JS files to always be loaded for the agent interface.' =>
            'Список JS файлов всегда загружаемых в интерфейсе агента.',
        'List of JS files to always be loaded for the customer interface.' =>
            'Список JS файлов всегда загружаемых в интерфейсе клиента.',
        'List of all CustomerCompany events to be displayed in the GUI.' =>
            'Список всех событий для Компаний клиента отображаемых в интерфейсе.',
        'List of all CustomerUser events to be displayed in the GUI.' => 'Список всех событий для Клиента отображаемых в интерфейсе.',
        'List of all DynamicField events to be displayed in the GUI.' => 'Список всех событий для DynamicField, отображаемых в интерфейсе.',
        'List of all Package events to be displayed in the GUI.' => 'Список всех событий для Package, отображаемых в интерфейсе.',
        'List of all article events to be displayed in the GUI.' => 'Список всех событий для сообщений/заметок, отображаемых в интерфейсе.',
        'List of all queue events to be displayed in the GUI.' => 'Список всех событий, для очередей, отображаемых в интерфейсе.',
        'List of all ticket events to be displayed in the GUI.' => 'Список всех событий, для заявок, отображаемых в интерфейсе.',
        'List of default Standard Templates which are assigned automatically to new Queues upon creation.' =>
            'Список по умолчанию для Стандартных Шаблонов, которые назначаются автоматически при создании новой очереди.',
        'List of responsive CSS files to always be loaded for the agent interface.' =>
            'Список CSS файлов всегда загружаемых в интерфейсе агента.',
        'List of responsive CSS files to always be loaded for the customer interface.' =>
            'Список CSS файлов всегда загружаемых в интерфейсе клиента.',
        'List view' => 'Вид в виде списка',
        'Lithuanian' => 'Литовский',
        'Lock / unlock this ticket' => 'Заблокировать / разблокировать эту заявку',
        'Locked ticket.' => 'Заблокирована заявка.',
        'Log file for the ticket counter.' => 'Файл для счетчика заявок',
        'Loop-Protection! No auto-response sent to "%s".' => 'Защита от зацикливания! Авто-ответ на «%s» не отправлен.',
        'Mail Accounts' => 'Почтовые аккаунты',
        'Main menu registration.' => 'ModuleRegistration для главного меню.',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            'Включает проверку MX record почтовых адресов клиента до отправки почты или приема почтовой или телефонной заявки.',
        'Makes the application check the syntax of email addresses.' => 'Включает проверку синтаксиса адреса электронной почты.',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            'Позволяет использовать html cookies для управления сеансами. Если html cookies выключены, или в браузере клиента выключено использование html cookies, в этом случае система работает как обычно и добавляет session id к ссылке.',
        'Malay' => 'Малайский',
        'Manage OTRS Group cloud services.' => 'Управление облачными сервисами OTRS Group.',
        'Manage PGP keys for email encryption.' => 'Управления PGP ключами для шифрования почтовых сообщений.',
        'Manage POP3 or IMAP accounts to fetch email from.' => 'Управление учётными записями POP3 или IMAP для получения почтовых сообщений.',
        'Manage S/MIME certificates for email encryption.' => 'Управление S/MIME сертификатами для шифрования почты',
        'Manage existing sessions.' => 'Управление активными сеансами.',
        'Manage support data.' => 'Управление данными для поддержки.',
        'Manage system registration.' => 'Регистрация системы на портале OTRS Group',
        'Manage tasks triggered by event or time based execution.' => 'Управление заданиями, основанными на событиях или времени выполнения',
        'Mark this ticket as junk!' => 'Пометить эту заявку как мусор!',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            'Максимальный размер (в символах) таблицы с информацией о клиенте (при создании заявки или ответа).',
        'Max size (in rows) of the informed agents box in the agent interface.' =>
            'Максимальный размер (в строках) списка информируемых агентов, в агентском интерфейсе.',
        'Max size (in rows) of the involved agents box in the agent interface.' =>
            'Максимальный размер (в строках) списка привлекаемых агентов, в агентском интерфейсе.',
        'Max size of the subjects in an email reply.' => 'Максимальная длина Темы в почтовом ответе.',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            'Максимальное количество почтовых автоответов на собственный почтовый адрес в день (Loop-Protection).',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            'Максимальный размер в KBytes для писем принимаемых через POP3/POP3S/IMAP/IMAPS.',
        'Maximum length (in characters) of the dynamic field in the article of the ticket zoom view.' =>
            'Максимальная длина (в символах) для динамических полей в сообщении в подробном просмотре заявки.',
        'Maximum length (in characters) of the dynamic field in the sidebar of the ticket zoom view.' =>
            'Максимальная длина (в символах) для динамических полей в информации о заявке в подробном просмотре заявки.',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            'Максимальное количество заявок отображаемых в результате поиска в интерфейсе агента.',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            'Максимальное количество заявок отображаемых в результате поиска в интерфейсе клиента.',
        'Maximum number of tickets to be displayed in the result of this operation.' =>
            'Максимальное количество заявок отображаемых в результате этой операции.',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            'Максимальная длина (в символах) для таблицы информации о клиенте при просмотре заявки.',
        'Merge this ticket and all articles into a another ticket' => 'Объединить эту заявку и все ее заметки/сообщения с другой заявкой',
        'Merged Ticket <OTRS_TICKET> to <OTRS_MERGE_TO_TICKET>.' => 'Объединена заявка <OTRS_TICKET> с <OTRS_MERGE_TO_TICKET>.',
        'Miscellaneous' => 'Разное',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            'Модуль для выбора значения поля To в новой заявке в интерфейсе клиента.',
        'Module to check customer permissions.' => 'Модуль для проверки прав клиента.',
        'Module to check if a user is in a special group. Access is granted, if the user is in the specified group and has ro and rw permissions.' =>
            'Модуль проверки принадлежности пользователя к определенной группе. Доступ разрешается, если он принадлежит указанной группе и имеет в ней ro или rw права.',
        'Module to check if arrived emails should be marked as email-internal (because of original forwarded internal email). ArticleType and SenderType define the values for the arrived email/article.' =>
            'Модуль для проверки, должно ли  поступившее почтовое сообщение помечено как email-internal (т.к. исходное переслано как internal email). ArticleType и SenderType задают значения для поступивших email/сообщений.',
        'Module to check the agent responsible of a ticket.' => 'Модуль для проверки агента ответственного за заявку.',
        'Module to check the group permissions for the access to customer tickets.' =>
            'Модуль проверки прав в группах для доступа к заявкам клиента.',
        'Module to check the owner of a ticket.' => 'Модуль для проверки владельца заявки.',
        'Module to check the watcher agents of a ticket.' => 'Модуль проверки прав наблюдения за заявкой для агента',
        'Module to compose signed messages (PGP or S/MIME).' => 'Модуль создания подписанных сообщений (PGP or S/MIME).',
        'Module to crypt composed messages (PGP or S/MIME).' => 'Модуль шифрования созданных сообщений (PGP or S/MIME).',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            'Модуль фильтрации и управления входящими сообщениями. Блокировать/Игнорировать весь спам от отправителей: noreply@ address.',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            'Модуль для фильтрации и управления входящими сообщениями. Получите 4-х значный номер в свободное поле заявки, используйте регулярное выражение в Match т.е. From => \'(.+?)@.+?\', и используйте () как [***] в Set =>.',
        'Module to generate accounted time ticket statistics.' => 'Модуль для формирования статистки о затраченном времени по заявкам.',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            'Модуль для генерации HTML OpenSearch шаблонов для быстрого поиска заявок в интерфейсе агента.',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            'Модуль для генерации HTML OpenSearch шаблонов для быстрого поиска заявок в интерфейсе клиента.',
        'Module to generate ticket solution and response time statistics.' =>
            'Модуль для формирования статистки по времени реакции и разрешения заявки.',
        'Module to generate ticket statistics.' => 'Модуль для формирования статистки по заявкам.',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            'Модуль для показа уведомлений и эскалаций (ShownMax: мак. кол-во показываемых эскалаций, EscalationInMinutes: Показать эскалированные заявки, CacheTime: Cache для вычисленных эскалаций в сек.).',
        'Module to use database filter storage.' => '',
        'Multiselect' => 'Multiselect - множественный выбор',
        'My Services' => 'Мои сервисы',
        'My Tickets' => 'Мои заявки',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            'Имя пользовательского списка очередей. Это набор очередей, выбранных из списка доступных очередей в личных настройках.',
        'Name of custom service. The custom service is a service selection of your preferred services and can be selected in the preferences settings.' =>
            'Имя пользовательского сервиса. Это сервис, выбранный из списка предпочтительных сервисов и он может быть выбран в личных настройках.',
        'NameX' => 'ИмяХ',
        'Nederlands' => 'Голландский',
        'New Ticket [%s] created (Q=%s;P=%s;S=%s).' => 'Новая заявка [%s] (Q=%s;P=%s;S=%s).',
        'New Window' => 'Новое окно',
        'New owner is "%s" (ID=%s).' => 'Новый владелец «%s» (ID=%s).',
        'New process ticket' => 'Новая процессная заявка',
        'New responsible is "%s" (ID=%s).' => 'Новый ответственный теперь «%s» (ID=%s)',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            'Следующее доступное состояние после добавления заметки при регистрации входящего звонка в интерфейсе агента.',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            'Следующее доступное состояние после добавления заметки при регистрации исходящего звонка в интерфейсе агента.',
        'None' => 'Нет',
        'Norwegian' => 'Норвежский',
        'Notification sent to "%s".' => 'Уведомление отправлено на %s.',
        'Number of displayed tickets' => 'Количество отображаемых заявок',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            'Количество строк (на заявку) которое показывается при выводе результатов поиска в интерфейсе агента.',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            'Количество заявок которое показывается на каждой странице при выводе результатов поиска в интерфейсе агента.',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            'Количество заявок которое показывается на каждой странице при выводе результатов поиска в интерфейсе клиента.',
        'OTRS can use one or more readonly mirror databases for expensive operations like fulltext search or statistics generation. Here you can specify the DSN for the first mirror database.' =>
            'OTRS может использовать одну или более зеркальных БД, в режиме только для чтения, для ресурсоёмких операций, типа полнотекстового поиска или генерации отчетов. Здесь вы можете указать имя/DSN для первой зеркальной БД.',
        'Old: "%s" New: "%s"' => 'Прежнее состояние: %s, новое состояние: %s',
        'Online' => 'Online',
        'Open tickets (customer user)' => 'Открытые заявки (клиента)',
        'Open tickets (customer)' => 'Открытые заявки (клиента)',
        'Out Of Office' => 'Вне офиса',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            'Переопределяет функции заданные в Kernel::System::Ticket::(имя папки с альтернативными модулями). Применяется для облегчения кастомизации.',
        'Overview Escalated Tickets' => 'Обзор эскалированных заявок',
        'Overview Refresh Time' => 'Время обновления обзоров',
        'Overview of all open Tickets.' => 'Обзор всех заявок',
        'PGP Key Management' => 'Управление ключами PGP',
        'PGP Key Upload' => 'Загрузить PGP ключ',
        'Package event module file a scheduler task for update registration.' =>
            '',
        'Parameters for .' => 'Параметры для .',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            'Параметры для объекта CreateNextMask в личных настройках агента.',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            'Параметры для объекта CustomQueue в личных настройках агента.',
        'Parameters for the CustomService object in the preference view of the agent interface.' =>
            'Параметры для объекта CustomService в личных настройках агента.',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            'Параметры для объекта RefreshTime в личных настройках агента.',
        'Parameters for the dashboard backend of the customer company information of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            'Параметры для раздела Дайджеста (CIC - Центр информации о клиентах) с информацией о компании клиента в интерфейсе агента. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела.',
        'Parameters for the dashboard backend of the customer id status widget of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            'Параметры для раздела Дайджеста с информацией о состоянии заявок компании клиента в интерфейсе агента. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела.',
        'Parameters for the dashboard backend of the customer user list overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            'Параметры для раздела Дайджеста с информацией о списке клиентов компании в интерфейсе агента. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела.',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            'Параметры для раздела Дайджеста с информацией новых заявках в интерфейсе агента. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела. Примечание: Только атрибуты заявки и динамические поля (DynamicField_Имя поляХ) разрешены для колонок по умолчанию. Возможные значения: 0 = отключено, 1 = доступно, 2 = включено по умолчанию.',
        'Parameters for the dashboard backend of the queue overview widget of the agent interface. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "QueuePermissionGroup" is not mandatory, queues are only listed if they belong to this permission group if you enable it. "States" is a list of states, the key is the sort order of the state in the widget. "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            'Параметры для раздела Дайджеста с информацией о состоянии очередей в интерфейсе агента. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "QueuePermissionGroup" не обязателен, очереди отображаются только в случае принадлежности к этим группам. "States" задает список состояний, где в первой колонке указывается порядок сортировки состояний. "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела.',
        'Parameters for the dashboard backend of the running process tickets overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            'Параметры для раздела Дайджеста с информацией о выполняемых процессных заявках в интерфейсе агента. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "States" задает список состояний, где в первой колонке указывается порядок сортировки состояний. "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела.',
        'Parameters for the dashboard backend of the ticket calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            'Параметры для раздела Дайджеста с информацией о ближайших событиях (ticket calendar) в интерфейсе агента. "Limit" - количество строк по умолчанию. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела.',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            'Параметры для раздела Дайджеста с информацией об эскалированных заявках в интерфейсе агента. "Limit" - количество строк по умолчанию. Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела. Примечание: Только атрибуты заявки и динамические поля (DynamicField_Имя поляХ) разрешены для колонок по умолчанию. Возможные значения: 0 = отключено, 1 = доступно, 2 = включено по умолчанию.',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            'Параметры для раздела Дайджеста с информацией о заявках ожидающих напоминания в интерфейсе агента. "Limit" - количество строк по умолчанию. Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела. Примечание: Только атрибуты заявки и динамические поля (DynamicField_Имя поляХ) разрешены для колонок по умолчанию. Возможные значения: 0 = отключено, 1 = доступно, 2 = включено по умолчанию.',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            'Параметры для раздела Дайджеста с информацией о заявках ожидающих напоминания в интерфейсе агента. "Limit" - количество строк по умолчанию. Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела. Примечание: Только атрибуты заявки и динамические поля (DynamicField_Имя поляХ) разрешены для колонок по умолчанию. Возможные значения: 0 = отключено, 1 = доступно, 2 = включено по умолчанию.',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            'Параметры для раздела Дайджеста с информацией о статистике по заявкам в интерфейсе агента. "Group" используется для ограничения доступа к разделу (например, Group: admin;group1;group2;). "Default" - задает, будет ли раздел доступен по умолчанию или агент должен активировать его вручную. "CacheTTLLocal" - время обновления кэша в минутах для этого раздела.',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            'Параметры для страницы (на которой отображаются динамические поля) при обзоре динамических полей.',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            'Параметры для страницы (на которой отображаются заявки) при обзоре заявок в medium формате.',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            'Параметры для страницы (на которой отображаются заявки) при обзоре заявок в small формате.',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            'Параметры для страницы (на которой отображаются заявки) при обзоре заявок в preview (large) формате.',
        'Parameters of the example SLA attribute Comment2.' => 'Параметры для дополнительного атрибута SLA  Комментарий2(Comment2).',
        'Parameters of the example queue attribute Comment2.' => 'Параметры для дополнительного атрибута Очереди Комментарий2(Comment2).',
        'Parameters of the example service attribute Comment2.' => 'Параметры для дополнительного атрибута Сервиса Комментарий2(Comment2).',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            'Путь к лог файлу (применяется только если выбран атрибут "FS" для LoopProtectionModule и он обязателен).',
        'People' => 'Исполнители',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            'Выполняет заданное действие для каждого события (как Invoker) для каждого настроенного Webservice.',
        'Permitted width for compose email windows.' => 'Ширина окна для текста ответа.',
        'Permitted width for compose note windows.' => 'Ширина окна для текста сообщения/заметки.',
        'Persian' => 'Фарси',
        'Picture-Upload' => 'Загрузка рисунка',
        'Polish' => 'Польский',
        'Portuguese' => 'Португальский',
        'Portuguese (Brasil)' => 'Португальский (Бразилия)',
        'PostMaster Filters' => 'Фильтры PostMaster (входящей почты)',
        'PostMaster Mail Accounts' => 'Учетные записи почты для PostMaster',
        'Process Information' => 'Информация о процессе',
        'Process Management Activity Dialog GUI' => 'Управление процессами Интерфейс Диалоги Активности',
        'Process Management Activity GUI' => 'Управление процессами Интерфейс Активности',
        'Process Management Path GUI' => 'Управление процессами Интерфейс Схема',
        'Process Management Transition Action GUI' => 'Управление процессами Интерфейс Действия Переходов',
        'Process Management Transition GUI' => 'Управление процессами Интерфейс Переходы',
        'Process pending tickets.' => 'Обработать отложенные заявки.',
        'ProcessID' => 'ProcessID',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            'Защита от CSRF (Cross Site Request Forgery) эксплойтов (для более подробной информации см. http://en.wikipedia.org/wiki/Cross-site_request_forgery).',
        'Provides a matrix overview of the tickets per state per queue.' =>
            'Обеспечивает обзор количества заявок в очередях по состояниям в виде таблицы.',
        'Queue view' => 'Просмотр очередей',
        'Rebuild the ticket index for AgentTicketQueue.' => 'Перестраивает индексы заявок для AgentTicketQueue.',
        'Recognize if a ticket is a follow-up to an existing ticket using an external ticket number.' =>
            'Распознает, что ответ/дополнение к существующей заявке использует внешний номер заявки.',
        'Refresh interval' => 'Интервал обновления',
        'Removed subscription for user "%s".' => 'Удалена подписка для пользователя «%s».',
        'Removes the ticket watcher information when a ticket is archived.' =>
            'Удаляет признак наблюдения за заявкой при ее архивировании.',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            'Заменяет оригинального отправителя текущим почтовым адресом клиента при написании ответа в интерфейсе агента.',
        'Reports' => 'Отчеты',
        'Reports (OTRS Business Solution™)' => 'Отчеты (OTRS Business Solution™)',
        'Reprocess mails from spool directory that could not be imported in the first place.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            'Права, требуемые для изменения клиента заявки в интерфейсе агента.',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            'Права, требуемые для закрытия заявки в интерфейсе агента.',
        'Required permissions to use the email outbound screen in the agent interface.' =>
            'Права, требуемые для создания исходящего письма клиенуа в интерфейсе агента.',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            'Права, требуемые для перенаправлении заявки в интерфейсе агента.',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            'Права, требуемые для ответа на заявки в интерфейсе агента.',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            'Права, требуемые для пересылки заявки в интерфейсе агента.',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            'Права, требуемые для изменения Дополнительных полей заявки в интерфейсе агента.',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            'Права, требуемые для сляния заявок в интерфейсе агента.',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            'Права, требуемые для написания сообщения/заметки для заявки в интерфейсе агента.',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Права, требуемые для изменения Владельца заявки в интерфейсе агента.',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Права, требуемые для заявки в ожидание в интерфейсе агента.',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            'Права, требуемые для регистрации входящего звонка клиента в интерфейсе агента.',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            'Права, требуемые для регистрации исходящего звонка клиента в интерфейсе агента.',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Права, требуемые для изменения приоритета заявки в интерфейсе агента.',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            'Права, требуемые для изменения Ответственного заявки в интерфейсе агента.',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            'Сбрасывает Владельца и разблокирует заявку при перемещнии ее в другую очередь.',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            'Восстанавливает заявку из архива (только по событию изменения состояния из "закрыта" в любое другое доступное состояние).',
        'Retains all services in listings even if they are children of invalid elements.' =>
            'Оставляет все сервисы в списке, даже если они являются потомками от недействительных элементов.',
        'Right' => 'Правый',
        'Roles <-> Groups' => 'Роли <-> Группы',
        'Run file based generic agent jobs (Note: module name need needs to be specified in -configuration-module param e.g. "Kernel::System::GenericAgent").' =>
            'Выполняет сохраненные агентом в БД задания планировщика (Помните: Имя модуля должно быть задано в -configuration-module param, например, "Kernel::System::GenericAgent").',
        'Running Process Tickets' => 'Запущенные Процессные заявки',
        'Runs an initial wildcard search of the existing customer company when accessing the AdminCustomerCompany module.' =>
            'Выполняет начальный поиск по символу подстановки в списке компаний клиентов в модуле AdminCustomerCompany.',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            'Выполняет начальный поиск по символу подстановки в списке клиентов при доступе к модулю AdminCustomerUser.',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            'Запускает систему в режиме "Demo". Если установлено в "Да", агенты могут менять личные настройки, например, выбор языка интерфейса или темы в интерфейсе агента. Эти изменения действуют только в течение текущего сеанса. В этом режиме пароль агентом не может быть изменен.',
        'Russian' => 'Русский',
        'S/MIME Certificate Upload' => 'Загрузка сертификата S/MIME',
        'SMS' => 'SMS',
        'Sample command output' => 'Простейший пример результата выполнения',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data. Note: Searching for attachment names is not supported when "FS" is used.' =>
            'Сохраняет вложения из сообщений/заметок. "DB" - сохраняет их в БД (не рекомендуется для больших вложений). "FS" - сохраняет данные в файловой системе; это быстрее, но веб-сервер должен запускаться от имени пользователя OTRS. Вы можете переключать это значение в процессе работы без потери данных.
Примечание: Поиск по именам вложений не поддерживается при использовании "FS".',
        'Schedule a maintenance period.' => 'Управлять периодом обслуживания.',
        'Screen' => 'Экран',
        'Search Customer' => 'Искать клиента',
        'Search User' => 'Искать агента',
        'Search backend default router.' => 'Модуль поиска по умолчанию.',
        'Search backend router.' => 'Модуль поиска.',
        'Second Queue' => 'Вторая очередь',
        'Select your frontend Theme.' => 'Тема интерфейса (имя папки с кастомными модулями).',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            'Выбирает способ управления загрузкой через веб-интерфейс. "DB" - сохраняет загружаемые файлы в БД, "FS" использует файловую систему.',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            'Выбирает способ генерации номеров заявок. "AutoIncrement" - увеличивает номер на 1 (формат - SystemID.counter(например, 1010138, 1010139). "Date" - использует текущую дату, SystemID и счетчик (вид: Year.Month.Day.SystemID.counter (200206231010138, 200206231010139). "DateChecksum" - счетчик дополняется контрольной суммой к строке из даты и SystemID. Формат строится как Year.Month.Day.SystemID.Counter.CheckSum. Контрольная сумма обновляется ежедневно (вид: 2002070110101520, 2002070110101535). "Random" - генерирует случайный номер в формате "SystemID.Random" (напр. 100057866352, 103745394596).',
        'Send new outgoing mail from this ticket' => 'Отправить новое исходящее письмо от этой заявки',
        'Send notifications to users.' => 'Отправить уведомление пользователям.',
        'Sender type for new tickets from the customer inteface.' => 'Тип отправителя для новых заявок из интерфейса клиента.',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            'Отправлять уведомления агентам об откликах только владельцу, если заявка разблокирована (по умолчанию уведомляются все агенты).',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            'Отсылать всю исходящую почту через bcc на заданные адреса. Используйте эту опцию только резервного копирования.',
        'Sends customer notifications just to the mapped customer. Normally, if no customer is mapped, the latest customer sender gets the notification.' =>
            'Посылать уведомление клиента показанным клиентам. Если не показано ни одного клиента, последний отправитель получит уведомление.',
        'Sends registration information to OTRS group.' => 'Отправляет регистрационные данные в OTRS group.',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            'Посылать напоминание о разблокированных заявках после истечения времени напоминания (посылается только владельцу заявки).',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            'Отсылать уведомления, настроенные администратором в разделе Уведомленя о событиях.',
        'Serbian Cyrillic' => 'Сербский Кириллица',
        'Serbian Latin' => 'Сербский Латиница',
        'Service view' => 'Обзор сервисов',
        'Set minimum loglevel. If you select \'error\', just errors are logged. With \'debug\' you get all logging messages.' =>
            'Установить минимальный уровень записи в системный журнал. Если выберете \'error\', только сообщения об ошибках будут записываться. \'Debug\' - приведет к регистрации всех сообщений.',
        'Set sender email addresses for this system.' => 'Задать адрес отправителя для этой системы.',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            'Задает высоту (в пикселах) по умолчанию для inline HTML сообщений в AgentTicketZoom.',
        'Set the limit of tickets that will be executed on a single genericagent job execution.' =>
            'Задает предельное количество заявок, обрабатываемых за один запуск задания Планировщика.',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            'Задает максимальную высоту (в пикселах) для inline HTML сообщений в AgentTicketZoom.',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            'Установить в "Да" если вам доверены общие или личные pgp ключи, даже если они не сертифицированы заверенной подписью.',
        'Sets if SLA must be selected by the agent.' => 'Задает, что SLA должен быть выбран агентом.',
        'Sets if SLA must be selected by the customer.' => 'Задает, что SLA должен быть выбран клиентом.',
        'Sets if note must be filled in by the agent. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            'Задает, должна ли быть создана заметка агентом. Может быть перекрыто параметром Ticket::Frontend::NeedAccountedTime.',
        'Sets if service must be selected by the agent.' => 'Задает, что Сервис должен быть выбран агентом.',
        'Sets if service must be selected by the customer.' => 'Задает, что Сервис должен быть выбран клиентом.',
        'Sets if ticket owner must be selected by the agent.' => 'Задает, что Владелец должен быть выбран агентом.',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            'Устанавливает время ожидания в 0 если состояние изменяется на состояние без ожидания.',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            'Устанавливает возраст в минутах (первый уровень) для подсветки очередей, содержащих непросмотренные заявки.',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            'Устанавливает возраст в минутах (второй уровень) для подсветки очередей, содержащих непросмотренные заявки.',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            'Устанавливает уровень доступа администратора к SysConfig. В зависисмости от установленного уровня, некоторые параметры конфигурации не будут показываться. Чем выше уровень (Beginner - наивысший, всего их три - Expert, Advanced, Beginner), тем меньше вероятность внесения в конфигурацию изменений, которые могут привести ее в неработоспособное состояние.',
        'Sets the count of articles visible in preview mode of ticket overviews.' =>
            'Устанавливает видимость счетчика сообщений в preview mode (L) просмотра заявок.',
        'Sets the default article type for new email tickets in the agent interface.' =>
            'Устанавливает тип сообщения по умолчанию для новой почтовой заявки в интерфейсе агента.',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            'Устанавливает тип сообщения по умолчанию для новой телефонной заявки в интерфейсе агента.',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            'Устанавливает текст сообщения по умолчанию при закрытии заявки в интерфейсе агента.',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            'Устанавливает текст сообщения по умолчанию при перемещении заявки в другую очередь в интерфейсе агента.',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            'Устанавливает текст сообщения по умолчанию при создании сообщения к заявке в интерфейсе агента.',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Устанавливает текст сообщения по умолчанию при смене Владельца заявки в интерфейсе агента.',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Устанавливает текст сообщения по умолчанию при переводе заявки в ожидание в интерфейсе агента.',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Устанавливает текст сообщения по умолчанию при смене приоритета заявки в интерфейсе агента.',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            'Устанавливает текст сообщения по умолчанию при назначении Ответственного заявки в интерфейсе агента.',
        'Sets the default error message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            'Задает сообщение об ошибке по умолчаню для экрана ввода логина в интерфейсах агента и клиента, оно выдается когда период обслуживания системы не истек.',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            'Задает тип связи по умолчанию при разделения заявки в интерфейсе агента.',
        'Sets the default message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            'Задает сообщение по умолчаню для экрана ввода логина в интерфейсах агента и клиента, оно выдается когда период обслуживания системы не истек.',
        'Sets the default message for the notification is shown on a running system maintenance period.' =>
            'Задает сообщение по умолчанию для уведомления, отображаемого в период обслуживания системы',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            'Устанавливает следующее состояние по умолчанию для новой телефонной заявки в интерфейсе агента.',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            'Устанавливает следующее состояние по умолчанию при создании новой почтовой заявки в интерфейсе агента.',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            'Устанавливает текст заявки по умолчанию для новой телефонной заявки в интерфейсе агента.',
        'Sets the default priority for new email tickets in the agent interface.' =>
            'Устанавливает приоритет по умолчанию для новой почтовой заявки в интерфейсе агента.',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            'Устанавливает приоритет по умолчанию для новой телефонной заявки в интерфейсе агента.',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            'Устанавливает отправителя по умолчанию для новой почтовой заявки в интерфейсе агента.',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            'Устанавливает отправителя по умолчанию для новой телефонной заявки в интерфейсе агента.',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            'Устанавливает Тему по умолчанию для новых почтовых заявок в интерфейсе агента.',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            'Устанавливает Тему по умолчанию для новых телефонных заявок в интерфейсе агента.',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            'Устанавливает Тему по умолчанию для сообщений при закрытии заявок в интерфейсе агента.',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            'Устанавливает Тему по умолчанию для сообщений при перемещении заявок в интерфейсе агента.',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            'Устанавливает Тему по умолчанию для сообщений при создании сообщения к заявке в интерфейсе агента.',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Устанавливает Тему по умолчанию для сообщений при назначении Владельца заявки в интерфейсе агента.',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Устанавливает Тему по умолчанию для сообщений при переводе заявки в ожидание в интерфейсе агента.',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Устанавливает Тему по умолчанию для сообщений при назначении приоритета заявки в интерфейсе агента.',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            'Устанавливает Тему по умолчанию для сообщений при назначении Ответственного заявки в интерфейсе агента.',
        'Sets the default text for new email tickets in the agent interface.' =>
            'Устанавливает Текст по умолчанию для новых почтовых заявок в интерфейсе агента.',
        'Sets the display order of the different items in the preferences view.' =>
            'Задает порядок отображения различных атрибутов в личных настройках.',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is loged out.' =>
            'Устанавливает время неактивности (в сек) после которого сеанс прекращается и агент будет отключен от системы (loged out).',
        'Sets the maximum number of active agents within the timespan defined in SessionActiveTime.' =>
            'Задает макс. число активных анкетов в интервале заданном в SessionActiveTime.',
        'Sets the maximum number of active customers within the timespan defined in SessionActiveTime.' =>
            'Задает макс. число активных клиентов в интервале заданном в SessionActiveTime.',
        'Sets the maximum number of active sessions per agent within the timespan defined in SessionActiveTime.' =>
            'Задает макс. число активных сеансов на агента в интервале времени, заданном в SessionActiveTime.',
        'Sets the maximum number of active sessions per customers within the timespan defined in SessionActiveTime.' =>
            'Задает макс. число активных сеансов на клиента в интервале времени, заданном в SessionActiveTime.',
        'Sets the minimal ticket counter size (if "AutoIncrement" was selected as TicketNumberGenerator). Default is 5, this means the counter starts from 10000.' =>
            'Задает минимальное количество разрядов счетчика (если "AutoIncrement" выбран в качестве TicketNumberGenerator). По умочанию - 5, что означает, что счетчик стартует с 10000.',
        'Sets the minutes a notification is shown for notice about upcoming system maintenance period.' =>
            'Задает время отображения сообщения о наступлении периода техобслуживания, в минутах.',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            'Задает количество строк отображаемых в текстовых сообщениях (например, строк заявки в QueueZoom).',
        'Sets the options for PGP binary.' => 'Задает настройки для модуля PGP.',
        'Sets the order of the different items in the customer preferences view.' =>
            'Задает порядок отображения разделов личных настроек клиента.',
        'Sets the password for private PGP key.' => 'Устанавливает праоль для частного ключа PGP.',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            'Задает единицы измерения для единиц времени (например: рабочие часы, часы, минуты).',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            'Задает префикс к имени папки скриптов на сервере, как установлено в веб-сервере. Этот параметр используется как переменная OTRS_CONFIG_ScriptAlias для применения в сообщениях для построения ссылки на заявки.',
        'Sets the queue in the ticket close screen of a zoomed ticket in the agent interface.' =>
            'Задает очередь при закрытии заявки в интерфейсе агента.',
        'Sets the queue in the ticket free text screen of a zoomed ticket in the agent interface.' =>
            'Задает очередь при изменении Дополнительных полей заявки в интерфейсе агента.',
        'Sets the queue in the ticket note screen of a zoomed ticket in the agent interface.' =>
            'Задает очередь при создании сообщения/заметки к заявке в интерфейсе агента.',
        'Sets the queue in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Задает очередь при назначении Владельца заявки в интерфейсе агента.',
        'Sets the queue in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Задает очередь при переводе заявки в ожидание в интерфейсе агента.',
        'Sets the queue in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Задает очередь при изменении приоритета заявки в интерфейсе агента.',
        'Sets the queue in the ticket responsible screen of a zoomed ticket in the agent interface.' =>
            'Задает очередь при назначении Ответственног для заявки в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            'Задает Ответственного за заявку при закрытии заявки в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            'Задает Ответственного за заявку при массовом действии с заявками в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            'Задает Ответственного за заявку при изменении Дополнительных полей заявки в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            'Задает Ответственного за заявку при создании заметки к заявке в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Задает Ответственного за заявку при назначении Владельца заявки в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Задает Ответственного за заявку при переводе заявки в ожидание в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Задает Ответственного за заявку при изменении приоритета заявки в интерфейсе агента.',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            'Задает Ответственного за заявку при назначении Ответственного заявки в интерфейсе агента.',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            'Задает Сервис при закрытии заявки в интерфейсе агента. (Ticket::Service должен быть включен).',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            'Задает Сервис при изменении Дополнительных полей заявки в интерфейсе агента. (Ticket::Service должен быть включен).',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            'Задает Сервис при создании заметки к заявке в интерфейсе агента. (Ticket::Service должен быть включен).',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            'Задает Сервис при назначении Владельца заявки в интерфейсе агента. (Ticket::Service должен быть включен).',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            'Задает Сервис при переводе заявки в ожидание в интерфейсе агента. (Ticket::Service должен быть включен).',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            'Задает Сервис при изменении приоритета заявки в интерфейсе агента. (Ticket::Service должен быть включен).',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            'Задает Сервис при назначении ответственного заявки в интерфейсе агента. (Ticket::Service должен быть включен).',
        'Sets the stats hook.' => 'Задает признак (знак, префикс) для имени отчета.',
        'Sets the system time zone (required a system with UTC as system time). Otherwise this is a diff time to the local time.' =>
            'Задает для системы time zone - временНую зону (надо, чтобы в системе время задавалось с UTC). В противном случае, это будет разницей с локальным временем.',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            'Задает Владельца при закрытии заявки в интерфейсе агента.',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            'Задает Владельца при массовом действии с заявками в интерфейсе агента.',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            'Задает Владельца при измененииДополнительных полей заявки в интерфейсе агента.',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            'Задает Владельца при создании заметки к заявке в интерфейсе агента.',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Задает Владельца при назначении Владельца заявки в интерфейсе агента.',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Задает Владельца при переводе заявки в ожидание в интерфейсе агента.',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Задает Владельца при изменении приоритета заявки в интерфейсе агента.',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            'Задает Владельца при назначении Ответственного за заявку в интерфейсе агента.',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            'Задает Тип заявки при закрытии заявки в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            'Задает Тип заявки при массовом действии с заявками в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            'Задает Тип заявки при изменении Дополнительных полей заявки в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            'Задает Тип заявки при создании заметки к заявке в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            'Задает Тип заявки при назначении Владельца заявки в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            'Задает Тип заявки при переводе заявки в ожидание в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            'Задает Тип заявки при изменении приоритета заявки в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            'Задает Тип заявки при назначении Ответственного за заявку в интерфейсе агента. (Ticket::Type должен быть активирован).',
        'Sets the time (in seconds) a user is marked as active.' => 'Задает время (в сек) в течении которого агент считается активным.',
        'Sets the timeout (in seconds) for http/ftp downloads.' => 'Задает timeout (в сек) для http/ftp downloads.',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            'Задает timeout (в сек) для загрузки пакетов. Перекрывает "WebUserAgent::Timeout".',
        'Sets the user time zone per user (required a system with UTC as system time and UTC under TimeZone). Otherwise this is a diff time to the local time.' =>
            'Задает для системы time zone (временНую зону) для агента(надо, чтобы в системе время задавалось с UTC). В противном случае, это будет разницей с локальным временем.',
        'Sets the user time zone per user based on java script / browser time zone offset feature at login time.' =>
            'Задает для агента time zone (временНую зону) основанную на java script / browser time zone в момент входа.',
        'Shared Secret' => 'Общий секрет',
        'Should the cache data be help in memory?' => '',
        'Should the cache data be stored in the selected cache backend?' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            'Выводит окно выбора Ответственного при создании телефонных (почтовых) заявок в интерфейсеагента.',
        'Show article as rich text even if rich text writing is disabled.' =>
            'Показывает сообщение как rich text даже если применение rich text отключено.',
        'Show the current owner in the customer interface.' => 'Показывать текущего Владельца в интерфейсе клиента.',
        'Show the current queue in the customer interface.' => 'Показывать текущую Очередь в интерфейсе клиента.',
        'Show the history for this ticket' => 'Показать историю этой заявки',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            'Показывать количество иконок в ticket zoom, если всообщение имеет вложения.',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Наблюдать/Не наблюдать" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.  Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Связать" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Объединить" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "История" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Свободные поля" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Заметка" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            'Показывает пункт меню Заметка при просмотре заявки в интерфейсе агента.',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            'Показывает пункт меню Закрыть при просмотре заявки в интерфейсе агента.',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Закрыть" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            'Показывает пункт меню Удалить при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием параметра "Group", где В содержании указывается перечень групп, которым эта кнопка будет доступна ("rw:group1;move_into:group2").',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Удалить" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to enroll a ticket into a process in the ticket zoom view of the agent interface.' =>
            'Показывает пункт меню для преобразования заявки в Процесс при просмотре заявки в интерфейсе агента.',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Назад" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            'Показывает пункт меню Блокировать / Разблокировать при просмотре заявки в интерфейсе агента.',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Блокировать" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            'Показывает пункт меню Сменить очередь при просмотре заявки в интерфейсе агента.',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Печать" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Клиент" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            'Показывает пункт меню История при просмотре заявки в интерфейсе агента.',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Владелец" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Приоритет" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Ответственный" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to send an outbound email in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "Отказ" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "В ожидание/Отложить" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a link in the menu to set a ticket as spam in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            'Показывает пункт меню Спам при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием параметра "Group", где В содержании указывается перечень групп, которым эта кнопка будет доступна ("rw:group1;move_into:group2").',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            'Показывает пункт меню Приоритет при просмотре заявки в интерфейсе агента.',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            'Показывает пункт меню Подробно при просмотре заявок в интерфейсе агента.',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            'Показывает пункт меню для просмотра вложений к сообщениям через html online viewer при просмотре сообщений в интерфейсе агента.',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            'Показывает кнопку для загрузки вложений при просмотре сообщений в интерфейсе агента.',
        'Shows a link to see a zoomed email ticket in plain text.' => 'Показывет пункт меню для просмотра почтовой заявки как plain text.',
        'Shows a link to set a ticket as junk in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            'Показывает пункт меню "В корзину/Junk" при просмотре заявки в интерфейсе агента. Дополнительно, можно ограничить доступ к этому пункту меню, использованием ключа "Group", где в содержании указывается перечень групп, которым эта кнопка будет доступна "rw:group1;move_into:group2". Для организации пунктов меню в группы/кластеры используйте в качестве ключа "ClusterName" и в содержании укажите то имя, которое желаете увидеть в строке меню. Используйте "ClusterPriority" для настройки порядка отображения групп/кластеров в меню.',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            'Показывает список всех привлекаемых агентов по этой заявке при закрытии заявки в интерфейсе агента.',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            'Показывает список всех привлекаемых агентов по этой заявке при изменении Дополнительных полей заявки в интерфейсе агента.',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            'Показывает список всех привлекаемых агентов по этой заявке при создании зпметки к заявке в интерфейсе агента.',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Показывает список всех привлекаемых агентов по этой заявке при назначении Владельца заявки в интерфейсе агента.',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Показывает список всех привлекаемых агентов по этой заявке при переводе заявки в ожидание в интерфейсе агента.',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Показывает список всех привлекаемых агентов по этой заявке при изменении приоритета заявки в интерфейсе агента.',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            'Показывает список всех привлекаемых агентов по этой заявке при назначении Ответственного за заявку в интерфейсе агента.',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            'Показывает список всех доступных агентов (всех агентов с правами note для очереди/заявки), чтобы определить кого нужно информировать об этой заметке при закрытии заявки в интерфейсе агента.',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            'Показывает список всех доступных агентов (всех агентов с правами note для очереди/заявки), чтобы определить кого нужно информировать об этой заметке при изменении Дополнительных полей заявки в интерфейсе агента.',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            'Показывает список всех доступных агентов (всех агентов с правами note для очереди/заявки), чтобы определить кого нужно информировать об этой заметке при создании заметки к заявке в интерфейсе агента.',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Показывает список всех доступных агентов (всех агентов с правами note для очереди/заявки), чтобы определить кого нужно информировать об этой заметке при назначении Владельца заявки в интерфейсе агента.',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Показывает список всех доступных агентов (всех агентов с правами note для очереди/заявки), чтобы определить кого нужно информировать об этой заметке при переводе заявки в ожидание в интерфейсе агента.',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Показывает список всех доступных агентов (всех агентов с правами note для очереди/заявки), чтобы определить кого нужно информировать об этой заметке при изменении приоритета заявки в интерфейсе агента.',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            'Показывает список всех доступных агентов (всех агентов с правами note для очереди/заявки), чтобы определить кого нужно информировать об этой заметке при назначении Ответственного за заявку в интерфейсе агента.',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            'Допускает использование режима предпросмотра при просмотре заявок (CustomerInfo => 1 - показывает также информацию о клиенте, CustomerInfoMaxSize макс. размер в символах для Customer-Info).',
        'Shows a select of ticket attributes to order the queue view ticket list. The possible selections can be configured via \'TicketOverviewMenuSort###SortAttributes\'.' =>
            'Показывает выбор атрибутов заявки для упорядочения заявок при просмотре очередей. Доступные поля могут быть заданы в TicketOverviewMenuSort###SortAttributes.',
        'Shows all both ro and rw queues in the queue view.' => 'Показывает заявки агентов с правами ro и rw в просмотре очередей.',
        'Shows all both ro and rw tickets in the service view.' => 'Показывает заявки агентов с правами ro и rw в просмотре сервисов.',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            'Показывает все открытые заявки (даже блокированные) при просмотре эскалаций в интерфейсе агента.',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            'Показывает все открытые заявки (даже блокированные) при просмотре статусов в интерфейсе агента.',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            'Показывает все сообщения заявки в развернутом виде при подробном просмотре заявки.',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            'Показывает все идентификаторы клиентов в поле типа "multi-select" (не следует использовать при наличии большого количества таких идентификаторов).',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            'Показывает поле выбора Владельца при создании почтовых и телефонных заявок в интерфейсе агента.',
        'Shows colors for different article types in the article table.' =>
            'Показывать разные типы сообщений разным цветом в таблице сообщений/заметок. ',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            'Показывать предыдущие заявки клиента в AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            'Показывать последнюю тему сообщения клиента или тему заявки при small format обзоре заявок.',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            'Показывать список очередей Родитель/Потомок в виде списка или дерева.',
        'Shows information on how to start OTRS Daemon' => 'Показывает информацию о том как запустить OTRS Daemon',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            'Показывать атрибуты заявки в интерфейсе клмента (0 - не поакзывать, 1 - показывать).',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            'Показывать сообщения к заявке отсортированными в обычном или обратном порядке в интерфейсе агента.',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            'Показывать информацию о клиенте при создании сообщений для почтовой или телефонной заявки.',
        'Shows the customer user\'s info in the ticket zoom view.' => 'Показывать информацию о клиенте при подробном просмотре заявки.',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            'Показывать сообщение дня (MOTD) в Дайджесте. Можно ограничить доступ к его отображению указав список групп, которым они будут доступны в "Group". "Default" указывает включен ли он по умолчанию или агент сам может его включать.',
        'Shows the message of the day on login screen of the agent interface.' =>
            'Показывает сообщение дня на экране входа агента.',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            'Показывает историю заявки (в обратном порядке) в интерфейсе агента.',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            'Дает возможность изменить приоритет на экране закрытия заявки в интерфейсе агента.',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            'Дает возможность изменить приоритет на экране смены очереди заявки в интерфейсе агента.',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            'Дает возможность изменить приоритет на экране массовых действий с заявками в интерфейсе агента.',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            'Дает возможность изменить приоритет на экране изменения Дополнительных полей заявки в интерфейсе агента.',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            'Дает возможность изменить приоритет на экране создания заметки заявки в интерфейсе агента.',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Дает возможность изменить приоритет на экране назначения Владельца заявки в интерфейсе агента.',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Дает возможность изменить приоритет на экране перевода заявки в ожидание в интерфейсе агента.',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Дает возможность изменить приоритет на экране изменения приоритета заявки в интерфейсе агента.',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            'Дает возможность изменить приоритет на экране назначения Ответственного за заявку в интерфейсе агента.',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            'Показывать поле Тема при закрытии заявки в интерфейсе агента.',
        'Shows the title fields in the ticket free text screen of the agent interface.' =>
            'Показывать поле Тема при изменении Дополнительных полей заявки в интерфейсе агента.',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            'Показывать поле Тема при создании заметки к заявке в интерфейсе агента.',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Показывать поле Тема при назначении Владельца заявки в интерфейсе агента.',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Показывать поле Тема при переводе заявки в ожидание в интерфейсе агента.',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Показывать поле Тема при изменении приоритета заявки в интерфейсе агента.',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            'Показывать поле Тема при назначении Ответственного за заявку в интерфейсе агента.',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            'Показывать время в полном формате (дни, часы, минуты), если установлено "Да"; или в коротком (дни, часы), если "Нет".',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            'Показывать время, используя полное обозначение (дни, часы, минуты), если установлено "Да"; или краткое (д, ч, м), если "Нет".',
        'Skin' => 'Окрас',
        'Slovak' => 'Словацкий',
        'Slovenian' => 'Словенский',
        'SolutionDiffInMin' => 'SolutionDiffInMin',
        'SolutionInMin' => 'SolutionInMin',
        'Some description!' => 'Некоторое описание!',
        'Some picture description!' => 'Некоторое описание рисунка!',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            'Сортировать заявки (по возрастанию или убыванию) если выбрана одна очередь при просмотре очередей и после сортировки по приоритету. Значения: 0 = по возрастанию (старые сверху, по умолчанию), 1 = по убыванию (новешие сверху). Испльзуйте QueueID в качестве Ключа и 0 или 1 в Содержании.',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the service view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the ServiceID for the key and 0 or 1 for value.' =>
            'Сортировать заявки (по возрастанию или убыванию) если выбрана одна очередь при просмотре очередей и после сортировки по приоритету. Значения: 0 = по возрастанию (старые сверху, по умолчанию), 1 = по убыванию (новешие сверху). Испльзуйте QueueID в качестве Ключа и 0 или 1 в Содержании.',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            'Пример настройки Spam Assassin. Игнорирует почту помеченную с его помощью.',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            'Пример настройки Spam Assassin. Перемещает почту помеченную с его помощью в очередь для спама.',
        'Spanish' => 'Испанский',
        'Spanish (Colombia)' => 'Испанский (Колумбия)',
        'Spanish (Mexico)' => 'Испанский (Мексика)',
        'Spanish stop words for fulltext index. These words will be removed from the search index.' =>
            'Испанские стоп-слова для полнотекстовой индексации. Эти слова будут удалены и поискового индекса.',
        'Specifies if an agent should receive email notification of his own actions.' =>
            'Задает будет ли агент получать уведомления о собственных действиях.',
        'Specifies the available note types for this ticket mask. If the option is deselected, ArticleTypeDefault is used and the option is removed from the mask.' =>
            'Задает доступные типы заметок/сообщений для этого набора. Если этот параметр не включен, используются значения из ArticleTypeDefault и окно выбора не отображается.',
        'Specifies the default article type for the ticket compose screen in the agent interface if the article type cannot be automatically detected.' =>
            'Задает тип сообщения по умолчанию для экрана создания ответа на заявку в интерфейсе агента, если тип сообщения не может быть автоматически определен.',
        'Specifies the different article types that will be used in the system.' =>
            'Задает различные типы сообщений для использования в системе.',
        'Specifies the different note types that will be used in the system.' =>
            'Задает различные типы сообщений/заметок для использования в системе.',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            'Задает каталог для хранения данных если "FS" выбрано в TicketStorageModule.',
        'Specifies the directory where SSL certificates are stored.' => 'Задает каталог для хранения SSL сертификатов.',
        'Specifies the directory where private SSL certificates are stored.' =>
            'Задает каталог для хранения частных SSL сертификатов.',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address.' =>
            'Задает email address, который должен использоваться при отсылке уведомлений. Он используется построения полного отображаемого имени для мастера уведомлений (например, "OTRS Notifications" otrs@your.example.com). Вы можете использовать переменную OTRS_CONFIG_FQDN заданную в конфигурации или выбрать другой адрес.',
        'Specifies the email addresses to get notification messages from scheduler tasks.' =>
            'Задает почтовые адреса для получения уведомляющих сообщений от Планировщика.',
        'Specifies the group where the user needs rw permissions so that he can access the "SwitchToCustomer" feature.' =>
            'Задает группу с rw правами для агента, члены которой могут использовать возможность "SwitchToCustomer" (войти как клиент).',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com).' =>
            'Задает имя, которое будет использоваться при отсылке уведомлений. Оно используется для построения полного отображаемого имени для мастера уведомлений (например, "OTRS Notifications" otrs@your.example.com). ',
        'Specifies the order in which the firstname and the lastname of agents will be displayed.' =>
            'Задает порядок в котором отображаются Фамилия и Имя агентов.',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            'Задает путь к файлу логотипа на отображаемого в заголовке страницы (gif|jpg|png, 700 x 100 pixel).',
        'Specifies the path of the file for the performance log.' => 'Задает путь к файлу журнала производительности.',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            'Задает путь к модулю конвертера, позволяющему просматривать файлы Microsoft Excel в веб-интерфейсе.',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            'Задает путь к модулю конвертера, позволяющему просматривать файлы Microsoft Word в веб-интерфейсе.',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            'Задает путь к модулю конвертера, позволяющему просматривать файлы PDF в веб-интерфейсе.',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            'Задает путь к модулю конвертера, позволяющему просматривать файлы XML в веб-интерфейсе.',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            'Задает текст, который записывается в лог для регистрации обращения к скриптам CGI.',
        'Specifies user id of the postmaster data base.' => 'Задает user id БД postmaster.',
        'Specifies whether all storage backends should be checked when looking for attachments. This is only required for installations where some attachments are in the file system, and others in the database.' =>
            'Указывет, должны ли все виды хранилищ проверятся при просмотре вложений. Это необходимо лишь в случае, когда часть вложений хранится в файловой системе, а остальные в базе данных.',
        'Specify how many sub directory levels to use when creating cache files. This should prevent too many cache files being in one directory.' =>
            'Задает количество уровней подкаталога для кэш файлов. параметр предотвращает от создания большого количества файлов в одном каталоге.',
        'Specify the channel to be used to fetch OTRS Business Solution™ updates. Warning: Development releases might not be complete, your system might experience unrecoverable errors and on extreme cases could become unresponsive!' =>
            'Задает канал для получения обновлений OTRS Business Solution™. Предупреждение: Development-релизы могут быть незавершенными, в вашей системе могут проявляться неисправимые ошибки и в экстремальных случаях она может перестать отвечать на запросы!',
        'Specify the password to authenticate for the first mirror database.' =>
            'Задайте пароль для аутентификации для первой зеркалируемой БД.',
        'Specify the username to authenticate for the first mirror database.' =>
            'Задайте имя пользователя для аутентификации в первой зеркальной БД.',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            'Задает набор доступных прав агентов в системе. Если требуются дополнительные права, они могут быть заданы здесь. Права должны быть определены, чтобы использоваться в системе. Некоторые другие полезные права, также встроены в систему: note, close, pending, customer, freetext, move, compose, responsible, forward, и bounce. Последней строкой в таблице всегда дорлжна быть строка с "rw".',
        'Start number for statistics counting. Every new stat increments this number.' =>
            'Начальный номер для нумерации отчетов. Каждый новый отчет увеличивает этот номер.',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            'Запускает поиск с символами подстановки активного объекта в окне связывания объектов.',
        'Stat#' => 'Отчет#',
        'Status view' => 'Просмотр статусов',
        'Stores cookies after the browser has been closed.' => 'Сохраняет cookies после закрытия браузера.',
        'Strips empty lines on the ticket preview in the queue view.' => 'Убирает пустые строки при предпросмотре заявки в обзоре очередей.',
        'Strips empty lines on the ticket preview in the service view.' =>
            'Убирает пустые строки при предпросмотре заявки в обзоре сервисов.',
        'Swahili' => 'Суахили',
        'Swedish' => 'Шведский',
        'System Maintenance' => 'Обслуживание системы',
        'System Request (%s).' => 'Системный запрос (%s)',
        'Templates <-> Queues' => 'Шаблоны <-> Очереди',
        'Textarea' => 'Поле ввода текста',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            'Внутреннее имя окраса (skin) экрана для интерфейса агента. Доступные варианты заданы в Frontend::Agent::Skins.',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            'Внутреннее имя окраса (skin) экрана для интерфейса клиента. Доступные варианты заданы в Frontend::Customer::Skins.',
        'The daemon registration for the scheduler cron task manager.' =>
            '',
        'The daemon registration for the scheduler future task manager.' =>
            '',
        'The daemon registration for the scheduler generic agent task manager.' =>
            '',
        'The daemon registration for the scheduler task worker.' => '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            'Разделитель между символом номера и его значением. (Например ":", ".").',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            'Период в минутах, после наступления события, в который новое уведомление об эскалации подавляется.',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the latter case you should verify that the setting PostMaster::CheckFollowUpModule###0200-References is activated to recognize followups based on email headers.' =>
            'Формат поля Тема. "Left" означает "[TicketHook#:12345] текст темы", "Right" - "текст темы [TicketHook#:12345]", "None" "текст темы без номера заявки". В последнем случае вы должны убедиться, что параметр PostMaster::CheckFollowUpModule###0200-References активирован для распознавания ответов/дополнений, на основании анализа заголовка/темы письма.',
        'The headline shown in the customer interface.' => 'Заголовок, отображаемый в интерфейсе клиента.',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            'Идентфикатор заявки, например, Заявка№, Звонок#. По умолчанию - Ticket#.',
        'The logo shown in the header of the agent interface for the skin "default". See "AgentLogo" for further description.' =>
            'Логотип, отображаемый в заголовке экрана в интерфейсе агента для окраса "default". Смотрите описание "AgentLogo" для дальгейших пояснений.',
        'The logo shown in the header of the agent interface for the skin "ivory". See "AgentLogo" for further description.' =>
            'Логотип, отображаемый в заголовке экрана в интерфейсе агента для окраса "ivory". Смотрите описание "AgentLogo" для дальгейших пояснений.',
        'The logo shown in the header of the agent interface for the skin "ivory-slim". See "AgentLogo" for further description.' =>
            'Логотип, отображаемый в заголовке экрана в интерфейсе агента для окраса "ivory-slim". Смотрите описание "AgentLogo" для дальгейших пояснений.',
        'The logo shown in the header of the agent interface for the skin "slim". See "AgentLogo" for further description.' =>
            'Логотип, отображаемый в заголовке экрана в интерфейсе агента для окраса "slim". Смотрите описание "AgentLogo" для дальгейших пояснений.',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            'Логотип, отображаемый в заголовке экрана в интерфейсе агента. URL ссылка может быть относительным URL на каталог с файлами (skin) или быть полным URL на внешний веб-сервер.',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            'Логотип, отображаемый в заголовке экрана в интерфейсе клиента. URL ссылка может быть относительным URL на каталог с файлами (skin) или быть полным URL на внешний веб-сервер.',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            'Логотип, отображаемый в рамке окна входа (login box) экрана в интерфейсе агента. URL ссылка должен быть относительным URL на каталог с файлами (skin).',
        'The maximal number of articles expanded on a single page in AgentTicketZoom.' =>
            'Максимальное количество раскрытых сообщений/заметок отображаемых на одном экране в AgentTicketZoom.',
        'The maximal number of articles shown on a single page in AgentTicketZoom.' =>
            'Максимальное количество сообщений/заметок отображаемых на одном экране в AgentTicketZoom.',
        'The maximum number of mails fetched at once before reconnecting to the server.' =>
            'Максимальное количество писем, получаемых за одно подключение к серверу.',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            'Текст, предшествующий теме в ответе на письмо, например, RE, AW, или AS.',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            'Текст, предшествующий теме при пересылке письма, например, FW, Fwd, или WG.',
        'This event module stores attributes from CustomerUser as DynamicFields tickets. Please see the setting above for how to configure the mapping.' =>
            'Модуль, который сохраняет атрибуты клиента в динамических полях заявки. Смотрите в параметрах выше как настроить соответствие.',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            'Этот модуль и его PreRun() функция будет запускаться, если он определен для каждого запроса. Он полезен для проверки некоторых атрибутов пользователя или отображать новости о новых приложениях.',
        'This option defines the dynamic field in which a Process Management activity entity id is stored.' =>
            'Этот параметр задает динамическое поле для хранения идентификаторов элементов Активности в Управлении Процессами.',
        'This option defines the dynamic field in which a Process Management process entity id is stored.' =>
            'Этот параметр задает динамическое поле для хранения идентификаторов элементов Процесса в Управлении Процессами.',
        'This option defines the process tickets default lock.' => 'Задает блокировку по умолчанию для процессной заявки.',
        'This option defines the process tickets default priority.' => 'Задает приоритет по умолчанию для процессной заявки.',
        'This option defines the process tickets default queue.' => 'Задает очередь по умолчанию для процессной заявки.',
        'This option defines the process tickets default state.' => 'Задает состояние по умолчанию для процессной заявки.',
        'This option will deny the access to customer company tickets, which are not created by the customer user.' =>
            'Этот параметр запрещает доступ к заявкам Компании клиента, которые не созданы этим клиентом.',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            'Позволяет переопределить встроенный список стран своим списком. Это позволит сократить отображаемый список до необходимого минимума.',
        'This will allow the system to send SMS messages.' => 'Это позволяет системе отправлять SMS.',
        'Ticket Notifications' => 'Уведомления по заявкам',
        'Ticket Queue Overview' => 'Итоги по очередям',
        'Ticket event module that triggers the escalation stop events.' =>
            'Модуль управления событием остановки эскалации.',
        'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).' => 'Заявка перемещена в очередь «%s» (%s) из очереди «%s» (%s).',
        'Ticket notifications' => 'Уведомления по заявкам',
        'Ticket overview' => 'Обзор заявок',
        'TicketNumber' => 'Заявка №',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            'Время (в сек) добавляемое к текущему, если установлено состояние ожидания. (по умолчанию: 86400 = 1 день).',
        'Title updated: Old: "%s", New: "%s"' => 'Обновлен заголовок заявки: старый: "%s", новый: "%s"',
        'Toggles display of OTRS FeatureAddons list in PackageManager.' =>
            'Переключает отображение списка OTRS FeatureAddons в Управлении пакетами.',
        'Toolbar Item for a shortcut.' => 'Описание ярлыка(иконки) для навигационной панели.',
        'Transport selection for ticket notifications.' => 'Выбор способа отправки для уведомлений по заявкам.',
        'Tree view' => 'Иерархический вид',
        'Turkish' => 'Турецкий',
        'Turns off SSL certificate validation, for example if you use a transparent HTTPS proxy. Use at your own risk!' =>
            'Выключает проверку SSL сертификата, например, при использовании "прозрачного" HTTPS proxy. Вы иможете использовать эту опцию на свой страх и риск.',
        'Turns on drag and drop for the main navigation.' => 'Включает возможность "drag and drop" для основной навигации.',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            'Включает анимацию в интерфейсе. Если у вас будут проблемы с ней (проблемы производительности), вы можете выключить ее здесь.',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            'Включает проверку remote ip address. Его можно установить в "Нет" если система работает, например, через proxy или используется dialup подключение, т.к. remote ip address может отличаться от запроса к запросу. ',
        'Ukrainian' => 'Украинский',
        'Unlock tickets that are past their unlock timeout.' => 'Разблокировать заявки с истекшим сроком блокировки.',
        'Unlock tickets whenever a note is added and the owner is out of office.' =>
            'Разблокирует заявку всякий раз, когда добавляется новое сообщение к заявке и владелец установил состояние - вне офиса.',
        'Unlocked ticket.' => 'Разблокирована заявка.',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            'Обновляет значение флага "Seen"(прочитано), если каждое сообщение просмотрено или создано новое сообщение.',
        'Update and extend your system with software packages.' => 'Обновление и расширение системы с помощью программных пакетов.',
        'Updated SLA to %s (ID=%s).' => 'SLA изменен на %s (ID=%s).',
        'Updated Service to %s (ID=%s).' => 'Сервис изменен на %s (ID=%s).',
        'Updated Type to %s (ID=%s).' => 'Тип изменен на %s (ID=%s).',
        'Updated: %s' => 'Обновлено: %s',
        'Updated: %s=%s;%s=%s;%s=%s;' => 'Обновлено: %s=%s;%s=%s;%s=%s;',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            'Обновляет индексы эскалации заявок после изменения атрибутов заявки.',
        'Updates the ticket index accelerator.' => 'Обновляет ticket index accelerator.',
        'Use new type of select and autocomplete fields in agent interface, where applicable (InputFields).' =>
            'Используйте новый способ выбора и автозавершения при заполнении полей в интерфейсе агента, где это применимо (InputFields/Поля ввода).',
        'Use new type of select and autocomplete fields in customer interface, where applicable (InputFields).' =>
            'Используйте новый способ выбора и автозавершения при заполнении полей в интерфейсе клиента, где это применимо (InputFields/Поля ввода).',
        'UserFirstname' => 'Имя',
        'UserLastname' => 'Фамилия',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            'Использует Сс получателей в списке Сс при создании почтового ответа в интерфейсе агента.',
        'Uses richtext for viewing and editing ticket notification.' => 'Использует форматированный текст для просмотра и редактирования уведомлений о заявках.',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard templates, auto responses and notifications.' =>
            'Использует форматированный текст для просмотра и редактирования: сообщений, приветствий, подписей, стандартных шаблонов, автоответов и уведомлений.',
        'Vietnam' => 'Вьетнамский',
        'View performance benchmark results.' => 'Просмотр результатов измерения производительности.',
        'View system log messages.' => 'Просмотр системных сообщений.',
        'Watch this ticket' => 'Наблюдать за этой заявкой',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the body of this note (this text cannot be changed by the agent).' =>
            'Когда выполняется слияние заявок, заметка автоматически добавляется к заявке, которая более неактивна. Здесь можно задать текст сообщения/заметки (он не может быть изменен агентом).',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the subject of this note (this subject cannot be changed by the agent).' =>
            'Когда выполняется слияние заявок, заметка автоматически добавляется к заявке, которая более неактивна. Здесь можно задать Тему сообщения/заметки (она не может быть изменена агентом).',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            'При слиянии/объединении заявок, клиент может быть информирован об этом почтовым сообщением, активацией параметра "Inform Sender". Здесь вы можете задать текст, который  потом может быть изменен агентом.',
        'Yes, but hide archived tickets' => 'Да, скрыть архивированные заявки',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            'Ваше письмо с номером заявки "<OTRS_TICKET>" переправлено адресату "<OTRS_BOUNCE_TO>". Контактируйте по этому адресу для получения дальнейшей информации.',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            'Выбор очередей, которые вас интересуют. Вы также будете уведомляться по электронной почте, если эта функция включена.',
        'Your service selection of your favorite services. You also get notified about those services via email if enabled.' =>
            'Выбор сервисов, которые вас интересуют. Вы также будете уведомляться по электронной почте об этих сервисах, если эта функция включена.',

    };
    # $$STOP$$
    return;
}

1;
