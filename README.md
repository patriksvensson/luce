# Luce

Luce is a test assertion library inspired by [Shouldly](https://github.com/shouldly/shouldly)
that allows you to write your test assertions fluently.

> [!NOTE]  
> Requires Swift 6.0

# Usage

```swift
let foo: String? = "Hello World"
foo.shouldNotBeNil()
   .shouldBe("Hello World")
```