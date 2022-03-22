import Foundation

public struct Parser {
    func parse(url: URL) {
        var data = try! Data(contentsOf: url)
        print(data)
        print(String(decoding: data, as: UTF8.self))
                do {
            let data2 = try (data as NSData).decompressed(using: .zlib)
            print(data2)

        } catch let error {
            print(error)
        }
    }
}
