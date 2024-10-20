import Foundation
import Testing

extension Bool {
    @discardableResult
    public func shouldBeTrue(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self == true, sourceLocation: sourceLocation)
        return self
    }

    @discardableResult
    public func shouldBeFalse(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self == false, sourceLocation: sourceLocation)
        return self
    }
}

extension Comparable {
    public func shouldBeGreaterThan(_ value: Self) {
        #expect(self > value)
    }

    public func shouldBeGreaterThanOrEqualTo(_ value: Self) {
        #expect(self >= value)
    }

    public func shouldBeLessThan(_ value: Self) {
        #expect(self < value)
    }

    public func shouldBeLessThanOrEqualTo(_ value: Self) {
        #expect(self <= value)
    }
}

extension String {
    @discardableResult
    public func shouldStartWith(_ value: String, sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self.hasPrefix(value), sourceLocation: sourceLocation)
        return self
    }

    @discardableResult
    public func shouldNotStartWith(_ value: String, sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(!self.hasPrefix(value), sourceLocation: sourceLocation)
        return self
    }

    @discardableResult
    public func shouldContain(_ value: String, sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self.contains(value), sourceLocation: sourceLocation)
        return self
    }

    @discardableResult
    public func shouldNotContain(_ value: String, sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(!self.contains(value), sourceLocation: sourceLocation)
        return self
    }

    @discardableResult
    public func shouldEndWith(_ value: String, sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self.hasSuffix(value), sourceLocation: sourceLocation)
        return self
    }

    @discardableResult
    public func shouldNotEndWith(_ value: String, sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(!self.hasSuffix(value), sourceLocation: sourceLocation)
        return self
    }
}

extension Optional {
    @discardableResult
    public func shouldBeNil(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self == nil, sourceLocation: sourceLocation)
        return self
    }

    @discardableResult
    public func shouldNotBeNil(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self != nil, sourceLocation: sourceLocation)
        return self
    }
}

extension Equatable {
    @discardableResult
    public func shouldBe(_ expected: Self) -> Self {
        #expect(self == expected)
        return self
    }

    @discardableResult
    public func shouldNotBe(_ expected: Self) -> Self {
        #expect(self != expected)
        return self
    }
}
