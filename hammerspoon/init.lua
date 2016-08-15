require("hs.ipc")

-- Settings

hs.grid.setGrid('2x2')

-- Local Variables

local defaultHotkeys = {"cmd", "alt", "ctrl"}

-- Calculations

local padding = 5

function halfScreenRect(originX)
   local screen = screen()
   local x = originX
   local y = screen.y + padding
   local w = screen.w/2 - (padding * 1.5)
   local h = screen.h - (padding * 2)
   return hs.geometry.rect(x,y,w,h)
end

-- Helpers

function reloadConfig(files)
   doReload = false
   for _,file in pairs(files) do
      if file:sub(-4) == ".lua" then
	 doReload = true
      end
   end
   if doReload then
      hs.reload()
   end
end

-- System Notifications

function showNotification(title, text)
   hs.notify.new({title=title, informativeText=text}):send()
end

function showAlert(text)
   hs.alert.show(text)
end

-- Window Management

function screen()
   return hs.window.focusedWindow():screen():frame()
end

function moveFocusedWindow(amountX, amountY)
   local window = hs.window.focusedWindow()
   local f = window:frame()
   f.x = f.x + amountX
   f.y = f.y + amountY
   window:setFrame(f)
end

function setFocusedWindowFrame(rect)
   local window = hs.window.focusedWindow()
   local f = window:frame()
   f.x = rect.x
   f.y = rect.y
   f.w = rect.w
   f.h = rect.h
   window:setFrame(f)
end

-- Mouse Drawing

function mouseHighlight()
   local mousePoint = hs.mouse.getAbsolutePosition()
   local mouseCircle = hs.drawing.circle(hs.geometry.rect(mousePoint.x - 40, mousePoint.y - 40, 80, 80))
   mouseCircle:setStrokeColor({["red"]=1, ["blue"]=0, ["green"]=0, ["alpha"]=1})
   mouseCircle:setFill(false)
   mouseCircle:setStrokeWidth(2)
   mouseCircle:show()

   hs.timer.doAfter(2, function() mouseCircle:delete() end)
end

-- Key Bindings

hs.hotkey.bind(
   {"shift", "ctrl"}, "m", function()
      local screen = screen()
      local newRect = hs.geometry.rect(screen.x, screen.y, screen.w, screen.h)
      setFocusedWindowFrame(newRect)
end)

hs.hotkey.bind(
   defaultHotkeys, "Left", function()
      local screen = screen()
      local x = screen.x + padding
      setFocusedWindowFrame(halfScreenRect(x))
end)

hs.hotkey.bind(
   defaultHotkeys, "Right", function()
      local screen = screen()
      local middleX = screen.x + screen.w/2
      local x = padding/2 + middleX
      setFocusedWindowFrame(halfScreenRect(x))
end)

hs.hotkey.bind(
   defaultHotkeys, "g", function()
      hs.grid.show()
end)

-- Pathwatchers

hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

-- USB Events

function usbDeviceCallback(data)
   print("")
   print("Event type: " .. data["eventType"])
   print("Product name: " .. data["productName"])
   print("Vendor name: " .. data["vendorName"])
   print("Vendor ID: " .. data["vendorID"])
   print("Product ID: " .. data["productID"])
end

function controllerDeviceCallback(data)
   if (data["productName"] == "Wireless Controller") then
      if (data["eventType"] == "added") then
	 hs.application.launchOrFocus("OpenEmu")
      end
   end
end
      

usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()

controllerWatcher = hs.usb.watcher.new(controllerDeviceCallback)
controllerWatcher:start()

-- Location Events

function currentCoordinates()
   local coords = hs.location.get()
   print("\nCurrent Location:")
   print("Lat: " .. coords["latitude"])
   print("Lng: " .. coords["longitude"])
end
--// hs.location.start()

-- Wifi Helpers

function availableNetworks()
   for k,v in pairs(hs.wifi.availableNetworks()) do
      print(k, v)
   end
end

function interfaces()
   for k,v in pairs(hs.wifi.interfaces()) do
      print(k, v)
   end
end
-- end

showAlert("Hammerspoon config reloaded")
