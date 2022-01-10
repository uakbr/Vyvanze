import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var popover = NSPopover.init()
    var statusBar: StatusBarController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let contentView = MenuView()
        popover.contentViewController = MainViewController()
        popover.contentSize = NSSize(width: 360, height: 800)
        popover.contentViewController?.view = NSHostingView(rootView: contentView)
        statusBar = StatusBarController.init(popover)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
}

