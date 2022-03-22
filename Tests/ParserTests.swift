import XCTest
@testable import Merlin

final class ParserTests: XCTestCase {
    private var parser: Parser!
    
    override func setUp() {
        parser = .init()
    }
    
    func testParse() {
        parser.parse(url: Bundle.module.url(forResource: "DocumentMetadata", withExtension: "iwa")!)
    }
}
