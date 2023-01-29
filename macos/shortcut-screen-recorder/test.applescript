-- https://apple.stackexchange.com/a/374114
--  # Setup to do a screen recording.
tell application "QuickTime Player" to new screen recording

--  # Start the screen recording.
tell application "System Events" to tell process "Screen Shot"
    repeat until exists button "Record" of its front window
        delay 0.1
    end repeat
    click button "Record" of its front window
    delay 3
end tell


tell application "System Events" to �
    click menu bar item 1 �
        of menu bar 1 �
        of application process "screencaptureui"


tell application "QuickTime Player"
    set savePath to a reference to POSIX file �
        ("/Users/hecmay/Desktop/myNewRecord.mov")
    export the front document in savePath using settings preset "720p"
end tell