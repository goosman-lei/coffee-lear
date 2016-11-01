###
这里是coffeescript的基础继承实现
extend = function(child, parent) {
    // 类静态成员拷贝
    for (var key in parent) {
        if (hasProp.call(parent, key))
            child[key] = parent[key];
    }
    // 通过ctor中转:
    //  得到child的prototype指向父类,
    //  但构造函数是子类的,
    //  同时给子类增加一个静态成员__super__保存父类原型引用
    function ctor() {
        this.constructor = child;
    }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor();
    child.__super__ = parent.prototype;
    return child;
},
hasProp = {}.hasOwnProperty;
###

class Animal
    constructor: (@name)->

    move: (meters) ->
        alert @name + "moved #{meters}m."

class Snake extends Animal
    move: ->
        alert "Slithering..."
        super 5

class Horse extends Animal
    move: ->
        alert "Galloping..."
        super 45

sam = new Snake "Sammy the python"
tom = new Horse "Tommy the palomino"

sam.move()
tom.move()

String::dasherize = ->
    this.replace /_/g, "-"