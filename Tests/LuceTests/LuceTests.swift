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

@Suite("String Tests")
final class StringTests {
    @Test func shouldBe() async throws {
        "Hello World".shouldBe("Hello World")
    }

    @Test func shouldNotBe() async throws {
        "Hello World".shouldNotBe("Goodbye World")
    }

    @Test func shouldStartWith() async throws {
        "Hello World".shouldStartWith("Hello")
    }

    @Test func shouldNotStartWith() async throws {
        "Hello World".shouldNotStartWith("Goodbye")
    }

    @Test func shouldContain() async throws {
        "Hello World".shouldContain("or")
    }

    @Test func shouldNotContain() async throws {
        "Hello World".shouldNotContain("xyz")
    }

    @Test func shouldEndWith() async throws {
        "Hello World".shouldEndWith("World")
    }

    @Test func shouldNotEndWith() async throws {
        "Hello World".shouldNotEndWith("Universe")
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

@Suite("Comparable Tests")
final class ComparableTests {
    @Test func shouldBeGreaterThan() async throws {
        2.shouldBeGreaterThan(1)
    }

    @Test func shouldBeGreaterThanOrEqualTo() async throws {
        2.shouldBeGreaterThanOrEqualTo(2)
    }

    @Test func shouldBeLessThan() async throws {
        1.shouldBeLessThan(2)
    }

    @Test func shouldBeLessThanOrEqualTo() async throws {
        2.shouldBeLessThanOrEqualTo(2)
    }
}
