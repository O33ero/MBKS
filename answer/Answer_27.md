## Вопрос №27
### Реализация моделей безопасности КС. Модели на основе дискреционного разграничения доступа. Расширенная модель take-grant. Построение замыкания графа доступов и информационных потоков. Вопрос «стоимости» или вероятности использования путей для передачи прав доступа или реализации информационных потоков

Дискреционное разграничение доступа к объектам (Discretionary Access Control — DAC) характеризуется следующим набором свойств:

* все субъекты и объекты компьютерной системы должны быть однозначно идентифицированы;

* для любого объекта компьютерной системы определен пользователь-владелец;

* владелец объекта обладает правом определения прав доступа к объекту со стороны любых субъектов компьютерной системы;

* в компьютерной системе существует привилегированный пользователь, обладающий правом полного доступа к любому объекту (или правом становиться владельцем любого объекта).

Последнее свойство определяет невозможность существования в компьютерной системе потенциально недоступных объектов, владелец которых отсутствует. Но реализация права полного доступа к любому объекту посредством предварительного назначения себя его владельцем не позволяет привилегированному пользователю (администратору) использовать свои полномочия незаметно для реального владельца объекта.

Дискреционное разграничение доступа реализуется обычно в виде матрицы доступа, строки которой соответствуют субъектам компьютерной системы, а столбцы — ее объектам. Элементы матрицы доступа определяют права доступа субъектов к объектам. В целях сокращения затрат памяти матрица доступа может задаваться в виде списков прав субъектов (для каждого из них создается список всех объектов, к которым разрешен доступ со стороны данного субъекта) или в виде списков контроля доступа (для каждого объекта информационной системы создается список всех субъектов, которым разрешен доступ к данному объекту).

К достоинствам дискреционного разграничения доступа относятся относительно простая реализация (проверка прав доступа субъекта к объекту производится в момент открытия этого объекта в процессе субъекта) и хорошая изученность (в наиболее распространенных операционных системах универсального назначения типа Microsoft Windows и Unix применяется именно эта модель разграничения доступа).

При использовании дискреционного разграничения доступа не существует возможности проверки, не приведет ли разрешение доступа к объекту для некоторого субъекта к нарушению безопасности информации в компьютерной системе (например, владелец базы данных с конфиденциальной информацией, дав разрешение на ее чтение другому пользователю, делает этого пользователя фактически владельцем защищаемой информации). Иначе говоря, дискреционное разграничение доступа не обеспечивает защиты от утечки конфиденциальной информации.

Наконец, к недостаткам дискреционного управления доступом относится автоматическое назначение прав доступа субъектам (из-за большого количества объектов в информационной системе в качестве субъектов доступа остаются только ее пользователи, а значение элемента матрицы доступа вычисляется с помощью функции, определяющей права доступа порожденного пользователем субъекта к данному объекту компьютерной системы).



1. **Определение:** Пусть  - граф доступов и информационных потоков такой, что для каждого субъекта $s\in S$ существует объект $o\in O$ такой, что выполняется условие $(s,o,(t,g,r,w))\subset E$. Тогда замыканием (или де-факто замыканием) графа $G$ называется граф доступов и информационных потоков $G^*=(S,O,E^*\cup F^*)$, полученный из $G$ применением последовательности правил take, grant и де-факто правил. При этом применение этих правил к $G^*$ не приводит к появлению новых ребер.
2. **Алгоритм построения замыкания графа доступов состоит их трех этапов:**
   1. Построение tg-замыкания.
   2. Построение де-юре-замыкания.
   3. Построение замыкания.

3. **Алгоритм построения tg-замыкания графа доступов и информационных потоков:**
   1. Для каждого $s\in S$ выполнить правило $create((t,g,r,w), s, o)$; при этом создаваемые объекты занести в множество $O$, создаваемые ребра занести в множество вершин.
   2. Инициализировать: $L=((x,y,\alpha)\in E,\alpha\in(t,g))$ - список ребер графа доступов и информационных потоков и $N=\varnothing$ - множество вершин.
   3. Выбрать из списка $L$ первое ребро $(x,y,\alpha)$. Занести $x$ и $y$ во множество $N$. Удалить ребро $(x,y,\alpha)$ из списка $L$.
   4. Для всех вершин $z\in N$ проверить возможность применения правил take или grant на троке вершин $x,y,z$  с использованием ребра $(x,y,\alpha)$, выбранного в шаге 3.  Если в результате  применения правил take или grant появляются новые ребра вида $(a,b,\beta)$, где $(a,b)\subset (x,y,z)$ и $\beta\in (t,g)$, занести их в конце списка $L$ и множество $E$.
   5. Пока список $L$ не пуст, перейти на шаг 3.
   6. Доп. сведения: вычислительная сложность алгоритма пропорциональная $|O|^3$.

4. **Алгоритм построения де-юре-замыкания графа доступов и информационных потоков:**
   1. Выполнить алгоритм построения tg-замыкания.
   2. Для каждой пары ребер вида $(x,y,t),(y,z,\alpha)\in E^{tg}$, где $x\in S$, применить правило $take(\alpha,x,y,z)$ и, если полученное ребро $(x,z,\alpha)\notin E^{tg}$, то занести его во множество $E^{tg}$.
   3. Для каждой пары ребер вида $(x,y,g),(x,z,\alpha)\in E^{tg}$, где $x\in S$, применить правило $grant(\alpha,x,y,z)$ и, если полученное ребро $(y,z,\alpha)\notin E^{tg}$, то занести его во множество $E^{tg}$.
   4. Для каждой пары ребер вида $(x,y,t),(y,z,\alpha)\in E^{tg}$, где $x\in S$, применить правило $take(\alpha,x,y,z)$ и, если полученное ребро $(x,z,\alpha)\notin E^{tg}$, то занести его во множество $E^{tg}$.
   5. Доп. сведения: вычислительная сложность алгоритма пропорциональная $|O|^3$.

5. **Алгоритм построения де-факто-замыкания графа доступов и информационных потоков:**
   1. Выполнить алгоритм построения де-юре-замыкания.
   2. Для всех ребер $(x,y,\alpha)\in E^{де-юре}\cup F$, где $x\in S, \alpha\in (w,r)$, применить первые два де-факто правила. Если будут получены новые ребра, то занести их во множество $F$.
   3. Инициализировать:$L=((x,y,\alpha)\in E^{де-юре}\cup F: \alpha\in (w,r))$ - список ребер графа доступов и информационных потоков и $N=\varnothing$ - множество вершин.
   4. Выбрать из списка $L$ первое ребро $(x,y,\alpha)$. Занести $x,y$ во множество $N$. Удалить ребро $(x,y,\alpha)$ из списка $L$.
   5. Для всех вершин $z\in N$ проверить возможность применения де-факто правил на тройке вершин $x,y,z$ с использованием ребра $(х,у,\alpha)$. Если в результате применения де-факто правил spy, find, post, pass появляются новые ребра вида $(a, b,\beta)$, где $(а, b)\subset (х, у, z)$ и $\beta\in (r,w)$, то занести их в конец списка $L$ и множество $F$.
   6. Пока список $L$ не пуст, перейти на шаг 4.
   7. Доп. сведения: вычислительная сложность алгоритма пропорциональная $|O|^3$.