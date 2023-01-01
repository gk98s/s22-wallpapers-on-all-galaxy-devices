SKIPMOUNT=false

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false

REPLACE="
/system/priv-app/wallpaper-res/wallpaper-res.apk
"

print_modname() {
  ui_print "*******************************"
  ui_print "         S22 Wallpapers        "
  ui_print "   All credits go to Droid365  "
  ui_print "*******************************"
}

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print "- deleting package cache"
  rm -rf /data/system/package_cache/*
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644

}