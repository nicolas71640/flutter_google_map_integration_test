import UIKit
import Flutter
import GoogleMaps
import Foundation

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    if let googleMapApiKey = ProcessInfo.processInfo.environment["GOOGLE_MAP_API_KEY"] {
        GMSServices.provideAPIKey(googleMapApiKey)
    } else {
      GMSServices.provideAPIKey("AIzaSyC_vDjUyeO6YbjqxRJKRK2w4syomcbJwfs")
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
