# dR (another Dom Ready library)
# dr.coffee
# Author: Miguel Angel (miguel@miduga.es)
#
# URL: http://miduga.es/projects/dR
window.dR = (fn) ->
  # save document var for compression and optimization
  d = document
  # compare the readystate with a regular expression
  if /complete|loaded|interactive/.test(d.readyState) then fn
  else
    if d.addEventListener then d.addEventListener "DOMContentLoaded", fn, false
    else if d.attachEvent then d.attachEvent "onDOMContentLoaded", fn
    else d["onDOMContentLoaded"] = fn