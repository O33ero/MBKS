#### Вопрос 07

##### Виды политик безопасности. Политика ролевого разграничения доступа. Определение и примеры

**Виды политик безопасности.**

Политика   безопасности КС - совокупно­стью правил, регулирующих управление ресурсами, их защиту и рас­пределение в пределах КС. Известны три основных   вида   политик   управления   доступом, определяющих  способ  задания  разрешенных  прав  доступа  субъек­тов к сущностям:

- дискреционная политика управления доступом (Discretionary Access Control);
- мандатная (полномочная) политика управления доступом (Man­datory Access Control);
- политика ролевого управления доступом (Role-based Access Con­trol);

Кроме перечисленных политик выделяют *политику безопасности информационных потоков* и *политику изолированной программной среды*.

**Политика ролевого разграничения доступа. Определение и примеры**

Политика ролевого управления доступом — политика, соответствующая следующим требованиям управления до­ступом в КС:

* все сущности должны быть идентифицированы;
* задано множество ролей, каждой из которых ставится в соответ­ствие некоторое множество прав доступа к сущностям;
* каждый субъект обладает некоторым множеством разрешенных (авторизованных) для данного субъекта ролей;
* субъект обладает правом доступа к сущности КС в случае, когда субъект обладает ролью, которой соответствует множество прав доступа, содержащее данное право доступа к данной сущности. 

Ролевое управление доступом является развитием политики дискреционного управления доступом, при этом права доступа субъек­тов системы к сущностям группируются с учетом специфики их при­менения, образуя роли.

Задание ролей позволяет определить более четкие и понят­ные для пользователей КС правила управления доступом. Ролевое управление доступом позволяет реализовать гибкие, изменяющиеся динамически в процессе функционирования КС правила управления доступом. 

Основными элементами базовой модели ролевого управления до­ступом $(RBAC— Role-Based Access Control) [10, 36, 37]$ являются:
$U$ — множество пользователей; 
$R$ — множество ролей;
$P$ — множество прав доступа к объектам КС; 
$S$ — множество сессий пользователей;
$PA: R \rightarrow 2^P$ — функция, задающая для каждой роли множество прав доступа; при этом для каждого права доступа $р \in P$ существует роль $r \in R$ такая что $р \in PA(r)$;
$UA:  U \rightarrow   2^R$ — функция, задающая для каждого пользователя множество ролей, на которые он может быть авторизован;
$user: S \rightarrow U$ — функция, задающая для каждой сессии пользо­вателя, от имени которого она активизирована;
$roles: S \rightarrow 2^R$ — функция, задающая для пользователя множе­ство ролей, на которые он авторизован в данной сессии, при этом в каждый момент времени .для каждой сессии $s \in S$ выполняется условие $roles(s)\subseteq UA(user(s))$.

Политика ролевого разграничения доступа широко используется для управления пользовательскими привилегиями в пределах единой системы или приложения. Список таких систем включает в себя Microsoft, Active Directory, SELinux, FreeBSD, Solaris, СУБД Oracle, PostgreSQL 8.1 и множество других.
