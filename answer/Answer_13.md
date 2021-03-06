#### Вопрос 13

##### Реализация моделей безопасности КС. Модели мандатного разграничения доступа. Модель Белла-Ла-Падулы. Безопасность базовой модели БЛаП. Теоремы А1,А2,А3,БТБ(без док-ва)

**Определение.** Система $\sum(Q,D,W,z_0)$ называется безопасной, если она обладает ss-свойством, *-свойством, ds-свойством.

Проверка безопасности системы по определению в большинстве случаев не может быть реализована на практике в связи с тем, что при этом требуется проверка безопасности всех реализаций систе­мы, а их бесконечно много. Следовательно, необходимо определить и обосновать иные условия безопасности системы, которые можно проверять на практике. В классической модели Белла-ЛаПадулы эти условия задаются для множества действий системы $W$.

$Q$ - множество запросов системе;

$D$ - множество ответов по запросам, например, $D = \{yes, no, error\}$

$W$ - множество действий системы, где четверка $(q, d, v^*, v) \in W$ означает, что система по запросу $q$ и ответу $d$ перешла из состояния $v$ в состояние $v^*$

$z_0$ - начальное состояние системы

**Теорема 4.1 (А1).** Система $\sum(Q,D,W,z_0)$ обладает ss-свойст­вом для любого начального состояния $z_0$, обладающего ss-свойством, тогда и только тогда, когда для каждого действия $(q,d, (b^*, m^*, f^*), (b,m,f)) \in W$ выполняются условия 1, 2.
	*Условие 1.*  Каждый доступ $(s,o, r) \in b^* \backslash b$ обладает ss-свойством относительно $f^*$.
	*Условие 2.*   Если  $(s,o, r)  \in b$  и  не обладает ss-свойством относительно $f^*$, то $(s, о,r)  \notin b^*$.

**Теорема 4.2 (А2).** Система $\sum(Q, D, W, z_0)$ обладает *-свойством  относительно $S' \subseteq S$ для любого начального состояния $z_0$ обладающего *-свойством относительно $S'$, тогда и только тогда, когда для каждого действия $(q,d, (b^\ast,m^\ast,f^\ast), (b,m, f)) \in W$ выполняются условия 1 и 2.
	*Условие 1.* Для $s \in S'$ доступ $(s, o, r) \in b^\ast\backslash b$ обладает $\ast$-свойством относительно  $f^*$.
	*Условие 2.*   Для $s \in   S'$, если доступ $(s,o,r) \in b$  и  не обладает $\ast$-свойством относительно $f^\ast$, то $(s,o,r)\notin b^\ast$.

**Теорема 4.3 (АЗ).** Система $\sum(Q, D, W, z_0)$ обладает ds-свойст­вом для любого начального состояния $z_0$, обладающего ds-свойством, тогда и только тогда, когда для каждого действия $(q,d, (b^*,m^*,f^*), (b,m,f)) \in W$ выполняются условия 1 и 2.
	*Условие  1.* Для каждого $(s,o,r)  \in   b^*\backslash b$,   выполняется усло­вие  $r\in  m^*[s,o]$;
	*Условие 2.* Если доступ $(s,o,r)\in b$ и $r\notin m^*[s,o]$, то $(s,o,r) \notin b^*$.

**Теорема 4.4 (базовая теорема безопасности — БТБ).** Си­стема $\sum(Q,D, W, z_0)$ безопасна для безопасного $z_0$ тогда и только то­гда, когда множество действий системы $W$ удовлетворяет услови­ям теорем 4.1-4.3.