import Foundation

public struct Parser {
    func parse(url: URL) {
        var data = try! Data(contentsOf: url)
        print(data)
        
        do {
            let data2 = try (data as NSData).decompressed(using: .lzfse)
            print(data2)
            print(String(data: data, encoding: .ascii))
        } catch let error {
            print(error)
        }
    }
}
