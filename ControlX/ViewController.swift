//
//  ViewController.swift
//  ControlX
//
//  Created by user on 4/26/16.
//  Copyright © 2016 cubix. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //----------------------------------------------
    override func viewDidAppear() {
        let presOptions: NSApplicationPresentationOptions = [
        //----------------------------------------------
        // These are all the options for the NSApplicationPresentationOptions
        // BEWARE!!!
        // Some of the Options may conflict with each other
        //----------------------------------------------
        
        //  .Default                   |
        //  .AutoHideDock              |   // Dock appears when moused to
        //  .AutoHideMenuBar           |   // Menu Bar appears when moused to
        //  .DisableForceQuit          |   // Cmd+Opt+Esc panel is disabled
        //  .DisableMenuBarTransparency|   // Menu Bar's transparent appearance is disabled
        //  .FullScreen                |   // Application is in fullscreen mode
            .HideDock,                     // Dock is entirely unavailable. Spotlight menu is disabled.
            .HideMenuBar,                 // Menu Bar is Disabled
            .DisableAppleMenu,             // All Apple menu items are disabled.
            .DisableProcessSwitching,      // Cmd+Tab UI is disabled. All Exposé functionality is also disabled.
            .DisableSessionTermination,    // PowerKey panel and Restart/Shut Down/Log Out are disabled.
            .DisableHideApplication,       // Application "Hide" menu item is disabled.
            .AutoHideToolbar
        ]
        
        let optionsDictionary = [NSFullScreenModeApplicationPresentationOptions :
            NSNumber(unsignedLong: presOptions.rawValue)]
        
        self.view.enterFullScreenMode(NSScreen.mainScreen()!, withOptions:optionsDictionary)
        self.view.wantsLayer = true
    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

