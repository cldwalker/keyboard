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
  { 'a', 'Activity Monitor'},   -- "A" for ...
  { 'b', openOrFocusChrome },   -- "B" for "Browser"
  { 'c', 'Slack' },             -- "C for "Chat"
  { 'e', 'Atom Beta' },         -- "E" for "Editor"
  { 'f', 'Finder' },            -- "F" for ...
  { 'h', 'Hammerspoon' },       -- "H" for ...
  { 'l', 'Logseq' },            -- "L" for ...
  { 'p', 'Preview'},            -- "P" for ...
  { 's', 'Slack' },             -- "S" for ...
  { 't', 'iTerm' },             -- "T" for "Terminal"
  { 'z', 'zoom.us' },           -- "Z" for ...
}
