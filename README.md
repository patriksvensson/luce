# Luce

Luce is a test assertion library inspired by [Shouldly](https://github.com/shouldly/shouldly)
that allows you to write your test assertions fluently.

> [!NOTE]  
> Requires Swift 6.0

```swift
import PackageDescription

let package = Package(
    // ... omitted
    dependencies: [
        .package(url: "https://github.com/patriksvensson/luce", branch: "main")
    ]
)
```

# Usage

```swift
import Luce
import Testing

@Suite final class MyTestSuite {
    @Test func myTest() {
        // Given, When
        let foo: String? = "Hello World"

        // Then
        foo.shouldNotBeNil()
           .shouldBe("Hello World")
    }
}
```