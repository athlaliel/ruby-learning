SELECT name
FROM purchases;

SELECT name,price
From purchases;

SELECT *
FROM purchases;

-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」であるデータを取得してください
SELECT *
FROM purchases
WHERE category = "食費";

-- 「FROM purchases」のあとにコードを追加し、priceカラムが「1000」のデータを取得してください
SELECT *
FROM purchases
WHERE price = 1000;

-- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-07-01」のデータを取得してください
SELECT *
FROM purchases
WHERE purchased_at = "2017-07-01";

-- 「FROM purchases」のあとにコードを追加し、priceカラムが「1000以上」のデータを取得してください
-- 比較演算子
SELECT *
FROM purchases
WHERE price >= 1000;

-- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-08-01以前」のデータを取得してください
SELECT *
FROM purchases
WHERE purchased_at <= "2017-08-01";

-- 「ある文字を含むデータ」を取得したい場合は、「〜のような」という意味を持つ、「LIKE演算子」を用います。
-- 図のようにすることで「指定したカラムが〇〇を含む（〇〇のような）レコード」という条件となります。
-- LIKE演算子を用いる際に覚えておく必要があるのが「ワイルドカード」です。
-- コンピュータの世界で「ワイルドカード」とは、どんな文字列にも一致することを指す記号です。
-- LIKE演算子では「％」をワイルドカードとして扱います。これにより図では「プリン」を含むデータを全て取得しています。

-- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」を含むデータを取得してください
SELECT *
FROM purchases
WHERE name LIKE "%プリン%";

ワイルドカードを文字列の前後どちらかにのみ置くことも可能です。
図のように「〇〇%」とした場合、「〇〇」以降はどんな文字列にも一致しますので、「〇〇」で始まる文字列を検索することができます。
このような検索を「前方一致」と呼びます。

また、図のように「%〇〇」とした場合、「〇〇」より前はどんな文字列にも一致しますので「〇〇」で終わる文字列を検索することができます。
このような検索を「後方一致」と呼びます。

-- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」で始まるデータを取得してください
SELECT *
FROM purchases
WHERE name LIKE "プリン%";

-- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」で終わるデータを取得してください
SELECT *
FROM purchases
WHERE name LIKE "%プリン";

「〇〇を含まないデータ」や「〇〇に一致しないデータ」のような条件でデータを取得したい場合は「否定」を意味する「NOT演算子」を用います。
これまで学習した演算子の前に「NOT」を置くことで、その条件を満たさないデータを取得することが可能です。

-- 「FROM purchases」のあとにコードを追加し、character_nameカラムが「にんじゃわんこ」でないデータを取得してください
SELECT *
FROM purchases
WHERE NOT character_name = "にんじゃわんこ";

-- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」を含まないデータを取得してください
SELECT *
FROM purchases
WHERE NOT name LIKE "%プリン%";

NULLのデータを取得するためには「〜がNULLである」という意味になる、「IS NULL」を用います。
図のように「カラム名 IS NULL」とすることで、「指定したカラムがNULLであるデータ」を取得することが可能です。

一方、「NULLではないデータ」を取得する場合は「〜がNULLでない」という意味になる「IS NOT NULL」を用います。
「IS NOT NULL」も「IS NULL」と同様に、「カラム名 IS NOT NULL」のようにして使います。

-- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLであるデータを取得してください
SELECT *
FROM purchases
WHERE price IS NULL "";

-- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLでないデータを取得してください
SELECT *
FROM purchases
WHERE price IS NOT NULL "";

AND演算子を使うと、WHEREに複数の条件を指定することができます。
「WHERE 条件１ AND 条件２」のようにすることで、条件１と条件２を共に満たすデータを検索することができます。
OR演算子は、AND演算子と同様に、複数の条件を扱います。
「WHERE 条件１ OR 条件２」のようにすることで、条件１または条件２のどちらかを満たすデータを検索することができます。

-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」かつcharacter_nameカラムが「ひつじ仙人」であるデータを取得してください
SELECT *
FROM purchases
WHERE category = "食費"
AND character_name = "ひつじ仙人";

-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」またはcharacter_nameカラムが「にんじゃわんこ」であるデータを取得してください
SELECT *
FROM purchases
WHERE category = "食費"
OR character_name = "にんじゃわんこ";

データを並び替えるためには、「〜順に並べる」という意味の「ORDER BY」を用います。
またデータを並び替えるためには、図のように「（基準となる）並べ替えたいカラム名」と「並べ方」を指定します。
「ORDER BY」の並べ方は、「昇順」か「降順」を指定します。
「昇順」は「小さい数から大きい数へ向かう順序」、「降順」は「大きい数から小さい数へ向かう順序」です。
SQLでは「昇順」は「ASC」、「降順」は「DESC」と指定します。

「ORDER BY」は図のようにクエリの末尾に記述することで、取得結果を並び替えます。
「ORDER BY」は「WHERE」と併用することが可能です。

-- 「FROM purchases」のあとにコードを追加し、priceカラムを基準に降順に並び替えたデータを取得してください
SELECT *
FROM purchases
ORDER BY price DESC;

-- 「WHERE character_name = "にんじゃわんこ"」のあとにコードを追加し、priceカラムを基準に昇順に並び替えたデータを取得してください
SELECT *
FROM purchases
WHERE character_name = "にんじゃわんこ"
ORDER BY price ASC;

「最大で何件取得するか」を指定するためには、「制限する」という意味の「LIMIT」を用います。
「LIMIT」は左の図のように「 データの件数」を指定します。
LIMITはクエリの末尾に記述することで、取得するデータの数を制限します。
また、「LIMIT」も「ORDER BY」と同様に「WHERE」と併用することが可能です。
-- 「FROM purchases」のあとにコードを追加し、取得結果が「最大5件」となるようにデータを取得してください。
SELECT *
FROM purchases
LIMIT 5;

-- 「WHERE character_name = "にんじゃわんこ"」のあとにコードを追加し、取得結果が「最大10件」となるようにデータを取得してください。
SELECT *
FROM purchases
WHERE character_name = "にんじゃわんこ"
LIMIT 10;

「ORDER BY」と「LIMIT」を併用することも可能です。その場合、「LIMIT」を末尾にする必要があります。
このように２つを用いることで、priceが高いデータの上位５位を取得することができます。

-- 「FROM purchases」のあとにコードを追加し、purchased_atカラムが「2017-08-01以前」のデータを取得してください
SELECT *
FROM purchases
WHERE purchased_at <= "2017-08-01";

-- 「FROM purchases」のあとにコードを追加し、nameカラムが「プリン」を含むデータを取得してください

SELECT *
FROM purchases
WHERE name LIKE "%プリン%";

「FROM purchases」のあとにコードを追加し、
NOT演算子を用いてcharacter_nameカラムが「にんじゃわんこ」でないデータを取得してください。
*/

SELECT *
FROM purchases
WHERE NOT character_name = "にんじゃわんこ";

-- 「FROM purchases」のあとにコードを追加し、priceカラムがNULLであるデータを取得してください

SELECT *
FROM purchases
WHERE price IS NULL "";

-- 「FROM purchases」のあとにコードを追加し、categoryカラムが「食費」かつcharacter_nameカラムが「ひつじ仙人」であるデータを取得してください

SELECT *
FROM purchases
WHERE category = "食費"
AND character_name = "ひつじ仙人";

-- 「FROM purchases」のあとにコードを追加し、priceカラムを基準に「降順に並び替えた」データを、最大で「5件」取得してください

SELECT *
FROM purchases
ORDER BY price DESC
LIMIT 5;
