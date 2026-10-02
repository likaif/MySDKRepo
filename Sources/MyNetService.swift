import Foundation
import Alamofire

/// SDK对外网络服务，主App调用这个，完全感知不到Alamofire存在
@objc public class MyNetService: NSObject {
    
    /// GET请求，获取httpbin示例接口
    /// - Parameters:
    ///   - url: 请求地址
    ///   - completion: 回调：成功返回json字符串，失败返回error
    @objc public func requestGet(_ url:String, completion:@escaping (_ jsonString:String?, _ error:Error?) -> Void) {
        
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                let jsonStr = String(data: data, encoding: .utf8)
                completion(jsonStr, nil)
            case .failure(let err):
                completion(nil, err)
            }
        }
    }
}
