import Luce
import Testing

@Suite("Boolean Tests")
final class BoolTests {
    @Test func shouldBeTrue() async throws {
        true.shouldBeTrue()
    }

    @Test func shouldBeFalse() async throws {
        false.shouldBeFalse()
    }
}

@Suite("Integer Tests")
final class IntTests {
    @Test func shouldBe() async throws {
        0.shouldBe(0)
    }

    @Test func shouldNotBe() async throws {
        0.shouldNotBe(1)
    }
}

@Suite("String Tests")
final class StringTests {
    @Test func shouldBe() async throws {
        "Hello World".shouldBe("Hello World")
    }

    @Test func shouldNotBe() async throws {
        "Hello World".shouldNotBe("Goodbye World")
    }
}

@Suite("Optional Tests")
final class OptionalTests {
    @Test func shouldBeNil() async throws {
        let foo: String? = nil
        foo.shouldBeNil()
    }

    @Test func shouldNotBeNil() async throws {
        let foo: String? = "Hello World"
        foo.shouldNotBeNil()
    }

    @Test func shouldNotBeNilAndChainArgument() async throws {
        let foo: String? = "Hello World"
        foo.shouldNotBeNil()?.shouldBe("Hello World")
    }
}

@Suite("Equatable Tests")
final class EquatableTests {
    enum Lol: Equatable {
        case foo
        case bar
    }

    @Test func shouldBe() async throws {
        Lol.foo.shouldBe(Lol.foo)
    }

    @Test func shouldNotBe() async throws {
        Lol.foo.shouldNotBe(Lol.bar)
    }
}
