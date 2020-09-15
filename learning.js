//switch文ないでcase文でパターン分け。
//且つ、defaultを使っていずれにも該当しないパターンを作成
const rank = 2;

switch(rank) {
  case 1:
    console.log("金メダルです");
    break;

  case 2:
    console.log("銀メダルです");
    break;

  case 3:
    console.log("銅メダルです");
    break;

  default :
  console.log("メダルは獲得できませんでした");
  break;

}

//while文（〜の間に）
//繰り返し処理
let number =1;
while(number <= 100) {
  console.log(number);
}

//for文
//よりシンプルな繰り返し処理

for (let number =1; number <= 100; number ++) {
  console.log(number);
}

//配列
const animals = ["dog", "cat", "rabit"]
console.log(animals[2]);
animals[2] = "bear";
console.log(animals[2]);

//配列＋オブジェクト＋if文
const characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人", age: 100},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
];

for (let i = 0; i < characters.length; i++) {
  console.log("--------------------");
  
  const character = characters[i];
  
  console.log(`名前は${character.name}です`);
  
  if (character.age === undefined) {
    console.log("年齢は秘密です");
  }  else {
      console.log(`${character.age}歳です`);
    }

//総合演習2
const cafe = {
  name: "Progateカフェ",
  businessHours: { 
    opening: "10:00(AM)",
    closing: "8:00(PM)"
  },
  // menusプロパティに配列を代入してください
  menus: ["コーヒー", "紅茶", "チョコレートケーキ"]
  
};

console.log(`店名: ${cafe.name}`);
console.log(`営業時間:${cafe.businessHours.opening}から${cafe.businessHours.closing}`);
console.log(`----------------------------`);
console.log("おすすめメニューはこちら");

// for文を用いて配列menusの中身を表示させてください
for (let i = 0; i < cafe.menus.length; i += 1) {
  console.log(cafe.menus[i]);
}
