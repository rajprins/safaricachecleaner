--
--  AppDelegate.applescript
--  Safari Cache Cleaner
--
--  Created by Roy Prins on 16/06/2017.
--  Copyright © 2017 Roy Prins. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
    property textField : missing value
	
    
    
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
    
    
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
    
    
    ----------------------------------------------------------------------------
    -- Logic for deleting Safari's data
    ----------------------------------------------------------------------------
    on clearBrowserData_(sender)
        -- Check if Safari is running. If so, quit
        set appname to "Safari"
        if appIsRunning(appname) then
            set started to true
            tell application appname to quit
        else
            set started to false
        end if
        
        -- Now, remove history/cache files
        log "Deleting ~/Library/Safari/History*"
        do shell script "rm -rf ~/Library/Safari/History*"
        
        log "Deleting ~/Library/Safari/LocalStorage"
        do shell script "rm -rf ~/Library/Safari/LocalStorage"
        
        log "Deleting ~/Library/Safari/Databases"
        do shell script "rm -rf ~/Library/Safari/Databases"
        
        log "Deleting ~/Library/Caches/com.apple.Safari/Cache.db"
        do shell script "rm -f ~/Library/Caches/com.apple.Safari/Cache.db"
        
        log "Deleting ~/Library/Caches/com.apple.Safari/Webpage\\ Previews"
        do shell script "rm -rf ~/Library/Caches/com.apple.Safari/Webpage\\ Previews"
        
        log "Deleting ~/Library/Caches/Metadata/Safari/History"
        do shell script "rm -rf ~/Library/Caches/Metadata/Safari/History"
        
        log "Deleting ~/Library/Safari/RecentlyClosedTabs.plist"
        do shell script "echo '' > ~/Library/Safari/RecentlyClosedTabs.plist"
        
        --log "Deleting ~/Library/Safari/LastSession.plist"
        --do shell script "echo '' > ~/Library/Safari/LastSession.plist"
        
        log "Deleting ~/Library/Safari/TopSites.plist"
        do shell script "echo '' > ~/Library/Safari/TopSites.plist"
        
        log "Deleting ~/Library/Safari/Downloads.plist"
        do shell script "echo '' > ~/Library/Safari/Downloads.plist"
        
        if started is true then
            display dialog "Safari's history and caches have been cleaned. Safari will be restarted." buttons {"OK"} with title "Safari Cache Cleaner" with icon note
            tell application appname to activate
        else
            display dialog "Safari's history and caches have been cleaned." buttons {"OK"} with title "Safari Cache Cleaner" with icon note
        end if
    end clearBrowserData_
	
    
    ----------------------------------------------------------------------------
    -- Check if an app is running
    ----------------------------------------------------------------------------
    on appIsRunning(appname)
        tell application "System Events" to (name of processes) contains appname
    end appIsRunning
    
end script
