import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(FacebookSdkPlugin)
public class FacebookSdkPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "FacebookSdkPlugin"
    public let jsName = "FacebookSdk"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = FacebookSdk()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.logPurchase(value)
        ])
    }
}
