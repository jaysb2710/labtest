var object = {"a": { "b": { "c": "d" }}};

console.log("Result at 'a.b.c': ",_.get(object, 'a.b.c'));
console.log("Result at 'a.b.null key': ",_.get(object, 'a.b.null', "default result"));

var object2 = {"x":{"y":{"z":"a"}}};
console.log("Result at 'x.y.z': ",_.get(object2, 'x.y.z'));