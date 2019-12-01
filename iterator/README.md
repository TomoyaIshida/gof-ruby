# Iterator Pattern

## 要点
1. なぜ、Iterator Patternを使うのか？
    - 集合の外にIteratorを作る理由は、Iteratorを使うことで実装と切り離して数え上げを行うことができるから
    - 下記のwhile文ないで使われているのはhas_next?, next_itemといiteratorのメソッドのみなのでwhileループは実装に依存しない、つまり変更に強いということ
    ```
    array = ['dog', 'cat', 'bird']
    iterator = ArrayIterator.new(array)
    while iterator.has_next?
      puts "item: #{iterator.next_item}"
    end
    ```
