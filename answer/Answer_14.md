#### Вопрос 14

##### Реализация моделей безопасности КС. Модели мандатного разграничения доступа. Модель Белла-Ла-Падулы. Безопасность переходов БЛаП. Теоремы А1-RW, A2-RW, БТБ-RW(без док-ва)

В классической модели Белла-ЛаПадулы не описывается точный порядок действий системы при переходе из состояния в состояние. Частично этот недостаток можно устранить следующим образом: предлагается оригинальное определение свойств безопас­ности модели Белла-ЛаПадулы с использованием вместо множества действий системы функции переходов.

При рассмотрении этого подхода будем считать $R = \{read, write\}$ и для каждого $s \in S$ справедливо равенство $f_s(s) = f_c(s)$. Исклю­чим из рассмотрения матрицу доступов $m$ и множество ответов си­стемы $D$. Вместо множества действий системы $W$ используем функцию  переходов:

$T:  Q \times V\rightarrow V$,  где $T(q, v)  = v^*$  — переход из состояния $v$  по запросу (команде) $q$ в  состояние $v^*$.

В этом случае будем обозначать систему через $\sum(V, T, z_0)$.

Далее переопределим ss-свойство и *-свойство. Так как основные 
ограничения на доступ $write$ следуют из *-свойства, то в ss-свойстве 
зададим ограничения только на $read$.

Доступ $(s,o, r)\in b$  обладает ss-свойством относительно $f$, когда выполняется одно из условий:

* $r  =  write$;
* $r =  read$ и $f_s(s)\geq f_o(o)$.

Доступ (s,x,r) е Ь  обладает *-свойством 
относительно /, когда выполняется одно из условий:
• г = read и не существует у G О:  бу, write} 6 b и /об > /обі
• г = write и не существует у G  О:  (s,y, read) € b и fo(y) > /об-

**Теорема 4.7 (A1-RW).** Система $sum(V,T,z_0)$ обладает ss-свойст­вом для любого начального состояния $z_0$, обладающего ss-свойством, тогда и только тогда, когда функция переходов $Т(q,v) = v^*$ удовле­творяет условиям 1 и 2.
	*Условие 1.* Если доступ $(s, r, read)\in b*\backslash b$, то $f_s^*(s)\geq f_o^*(o)­$.
	*Условие 2.* Если  доступ  $(s, o, read)\in b$   и  $f_s^*(s)< f_o^*(o)­$,  то $(s, o, read)\notin b^*$.

**Теорема 4.8 (A2-RW).** Система S(VtT,zq) обладает $\ast$-свойст­вом для любого начального состояния $z_0$, обладающего $\ast$-свойством, тогда и только тогда, когда функция переходов $Т(q, v) = v^*$ удовле­творяет условиям 1 и 2.
	*Условие  1.* Если  $\{(s,x, read), (s, у, write)\}\cap(b^*\backslash \neq\varnothing$  и $\{(s,х, read), (s, у, write)\}\subseteq b^*$,  то $f_o^*(у) \geq f_o^*(x)­$
	*Условие 2.* Если $\{(s,x, read), (s, у, write)\}\subseteq b$  и $f_o^*(у)< f_o^*(x)­$, то $\{(s,x, read), (s, у, write)\}\not\subset b^*$.

**Теорема 4.9 (БТБ-RW).** Система $\sum(V,Т, z_0)$ безопасна для без­опасного начального состояния $z_0$ тогда и только тогда, когда вы­полнены условия теорем 4.7 и 4.8.