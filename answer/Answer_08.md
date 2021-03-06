#### Вопрос 08

##### Исторические зарубежные нормативные документы по сертификации компьютерных систем. «Оранжевая книга». (TCSEC)

"Критерии оценки безопасности компьютерных систем", которые по цвету обложки чаще называют "Оранжевой книгой". 

Безопасная система – система, управляющая доступом к информации таким образом, что только авторизованные лица или процессы, действующие от их имени, получают право читать, записывать, создавать и удалять информацию. 

Доверенная система – система, использующая достаточные аппаратные и программные средства, чтобы обеспечить одновременную обработку информации разной степени секретности группой пользователей без нарушения прав доступа. 

Одна из ключевых функций доверенной системы – выполнение функции монитора обращений, т. е. контроля допустимости выполнения субъектами определенных операций над объектами. 

Реализация монитора обращений называется ядром безопасности, а граница доверенной системы – периметром безопасности. 

В «Оранжевой книге» предложены три категории требований безопасности: 

* политика безопасности;
* аудит;
* корректность,

в рамках которых сформулированы и сформулированы шесть базовых требований безопасности. 

В рамках **политики безопасности** выдвинуты:

*Требование 1: Политика безопасности*

Система должна поддерживать точно определенную политику безопасности. Возможность осуществления доступа субъекта к объектам должна определяться на основании их идентификации и набора правил управления доступом. Там, где необходимо, должна использоваться политика мандатного управления доступом 

*Требование 2: Метки*

С объектами должны быть ассоциированы метки безопасности, используемые в качестве исходной информации для процедур контроля доступа 

В рамках **Аудита**:

*Требование 3: Идентификация и аутентификация*

Все субъекты должны иметь уникальные идентификаторы. Контроль доступа должны осуществлять на основании идентификации и аутентификации субъектов и объектов доступа и правил разграничения доступа 

*Требование 4: Регистрация и учет* 

Все происходящие в системе события, имеющие значение с точки зрения безопасности, должны отслеживаться и регистрироваться в защищенном протоколе. Протокол событий должен быть надежно защищен от несанкционированного доступа, модификации и уничтожения 

В рамках **корректности**

*Требование 5: Контроль корректности функционирования средств защиты*

Все средства защиты, обеспечивающие политику безопасности, управление атрибутами и штатами безопасности, идентификацию, регистрацию и учет, должны находиться под контролем средств, проверяющих корректность их функционирования. Основной принцип корректности должен состоять в том, что средства контроля должны быть полностью независимы от средств защиты 

*Требование 6: Непрерывность защиты* 

Все средства защиты должны быть защищены от несанкционированного вмешательства и/или отключения, причем эта защита должна быть постоянной и непрерывной в любом режиме функционирования системы защиты к компьютерной системы. Выполнение этого требования является одной из ключевых аксиом, используемых для функционального доказательства безопасности системы 

**Группы безопасности.** 

1. **Группа D – минимальная защита.** 

Объединяет компьютерные системы, не удовлетворяющие требованиям безопасности высших классов

​	2. **Группа C - дискреционная защита.** 

Объединяет системы, обеспечивающие набор средств защиты, применяемых пользователем, включая средства общего контроля и учета субъектов и их действий. 

Класс C1 обеспечивает базовый уровень безопасности, разделяя пользователей и данные. Информационные системы, принадлежащие к данному классу, должны отвечать следующим основным требованиям:

* доверенная база управляет доступом именованных пользователей к именованным объектам;
* пользователи четко идентифицируют себя;
* аутентификационная информация пользователей защищена от несанкционированного доступа;
* доверенная вычислительная база имеет изолированную область для собственного выполнения, защищенную от внешних воздействий;
* есть в наличии аппаратные или программные средства, позволяющие периодически проверять корректность функционирования аппаратных и микропрограммных компонентов доверенной вычислительной базы;
* защитные механизмы протестированы на отсутствие способов обхода или разрушения средств защиты доверенной вычислительной базы;
* описаны подход к безопасности и его применение при реализации доверенной вычислительной базы. 

Класс C2 (в дополнение к требованиям к C1) гарантирует ответственность пользователей за свои действия:

* права доступа гранулируются с точностью до пользователя, а доступ к любому объекту контролируется;
* при выделении объекта из пула ресурсов доверенной вычислительной базы, устраняются следы его использования;
* каждый пользователь системы уникальным образом идентифицируется, а каждое регистрируемое действие ассоциируется с конкретным пользователем;
* доверенная вычислительная база позволяет создавать, поддерживать и защищать журнал регистрационной информации, касающейся доступа к объектам, которые контролируются базой;
* тестирование подтверждает отсутствие видимых недостатков в механизмах изоляции ресурсов и защиты регистрационной информации. 

	3. **Группа B – мандатная защита** 

Система обеспечивает мандатное управление доступом с использованием меток безопасности, поддержку модели и политики безопасности. Предполагается наличие спецификаций на функции ядра безопасности. Реализуется концепция монитора безопасности обращений, контролирующего все события в системе. 

Класс B1 (в дополнение к требованиям к C2):

* доверенная вычислительная база управляет метками безопасности, ассоциированными с каждым субъектом и хранимым объектом;
* доверенная вычислительная база обеспечивает реализацию принудительного управления доступом всех субъектов ко всем хранимым объектам;
* доверенная вычислительная база обеспечивает взаимную изоляцию процессов путем разделения их адресных пространств;
* специалисты тщательно анализируют и тестируют архитектуру и исходный код системы; 
* существует неформальная или формальная модель политики безопасности, поддерживаемая доверенной вычислительной базой. 

Класс B2 (в дополнение к требованиям к B1):

* ДВБ должна поддерживать формально определенную и четко документированную модель безопасности, предусматривающую произвольное и нормативное управление доступом, которое распространяется на все субъекты
* в системе должен осуществляться контроль скрытых каналов утечки информации
* в структуре ядра защиты должны быть выделены элементы, критичные с точки зрения безопасности
* интерфейс ДВБ должен быть четко определен, а ее архитектура и реализация должны быть выполнены с учетом возможности проведения типовых испытаний
* По сравнению с классом В1 должны быть усилены средства аутентификации. Управление безопасностью должно осуществляться администратором системы. Кроме того, должны быть предусмотрены средства управления конфигураций. 

Класс B3 (в дополнение к требованиям к B2):

* для произвольного управления доступом используются списки управления доступом с указанием разрешенных режимов;
* предусмотрена возможность регистрации появления и накопления событий, несущих угрозу нарушения политики безопасности системы. Администратор безопасности немедленно получает сообщения о попытках нарушения политики безопасности; система, в случае продолжения таких попыток сразу их пресекает;
* доверенная вычислительная база спроектирована и структурирована таким образом, чтобы использовать полный и концептуально простой защитный механизм с точно определенной семантикой;
* анализируется и выявляется возможность временных тайных каналов;
* существует роль администратора безопасности, получить которую можно только после выполнения явных, протоколируемых действий;
* имеются процедуры и/или механизмы, позволяющие без ослабления защиты произвести восстановление после сбоя;
* продемонстрирована устойчивость доверенной вычислительной базы к попыткам проникновения. 

	4. **Группа A – верифицированная защита** 

Группа характеризуется применением формальных методов верификации корректности работы механизмов управления доступом (произвольного и нормативного). Требуется дополнительная документация, демонстрирующая, что архитектура и реализация ядра защиты отвечают требованиям безопасности. 

Класс A1 (в дополнение к требованиям к B3):

* тестирование продемонстрировало то, что реализация ДВБ соответствует формальным спецификациям верхнего уровня;
* представлены формальные спецификации верхнего уровня; используются современные методы формальной спецификации и верификации систем;
* механизм управления конфигурациями распространяется на весь жизненный цикл и все компоненты системы, имеющие отношение к обеспечению безопасности;
* описано соответствие между формальными спецификациями верхнего уровня и исходными текстами. 

