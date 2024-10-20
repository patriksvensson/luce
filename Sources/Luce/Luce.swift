import Foundation
import Testing

extension Bool {
    @inline(__always)
    @discardableResult
    public func shouldBeTrue(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self == true, sourceLocation: sourceLocation)
        return self
    }

    @inline(__always)
    @discardableResult
    public func shouldBeFalse(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self == false, sourceLocation: sourceLocation)
        return self
    }
}

extension String {
    // @inline(__always)
    // @discardableResult
    // public func shouldBe(_ expected: String, sourceLocation: SourceLocation = #_sourceLocation) -> Self {
    //     #expect(self == expected, sourceLocation: sourceLocation)
    //     return self
    // }
}

extension Optional {
    @inline(__always)
    @discardableResult
    public func shouldBeNil(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self == nil, sourceLocation: sourceLocation)
        return self
    }

    @inline(__always)
    @discardableResult
    public func shouldNotBeNil(sourceLocation: SourceLocation = #_sourceLocation) -> Self {
        #expect(self != nil, sourceLocation: sourceLocation)
        return self
    }
}

extension Equatable {
    @inline(__always)
    @discardableResult
    public func shouldBe(_ expected: Self) -> Self {
        #expect(self == expected)
        return self
    }

    @inline(__always)
    @discardableResult
    public func shouldNotBe(_ expected: Self) -> Self {
        #expect(self != expected)
        return self
    }
}
