-- Keybindings for launching apps in Hyper Mode

-- Have Chrome act like other apps with open() and only focus if it exists. With
-- open() it opens a new window if it exists
openOrFocusChrome = function()
  local chromeApp = hs.application.get('Google Chrome')
  if chromeApp then
    chromeApp:activate()
  else
    hs.application.open('Google Chrome')
  end
end

return {
  { 'a', 'Atom Beta' },         -- "A" for "Atom"
  { 'b', openOrFocusChrome },   -- "B" for "Browser"
  { 'c', 'Visual Studio Code' },-- "C for Code
  { 'E', 'Electron' },          -- "E for ...
  { 'f', 'Finder' },            -- "F" for ...
  { 'h', 'Hammerspoon' },       -- "H" for ...
  { 'i', 'iTerm' },             -- "T" for "Terminal"
  { 'l', 'Logseq' },            -- "L" for ...
  { 'm', 'Activity Monitor'},   -- "M" for Monitor
  { 'p', 'portal'},             -- "P" for ...
  { 's', 'Slack' },             -- "S" for ...
  { 't', 'iTerm' },             -- "T" for "Terminal"
  { 'z', 'zoom.us' },           -- "Z" for ...
}
