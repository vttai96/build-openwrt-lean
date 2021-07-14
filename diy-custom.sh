# Modify luci-app-adguardhome download -> latest
sed -i 's/https\:\/\/api\.github\.com\/repos\/AdguardTeam\/AdGuardHome\/releases/https\:\/\/api\.github\.com\/repos\/AdguardTeam\/AdGuardHome\/releases\/latest/g' /package/luci-app-adguardhome/root/usr/share/AdGuardHome/update_core.sh

# Modify make menuconfig language
sed -i 's/\+@LUCI_LANG_zh\-cn/\+@LUCI_LANG_zh\-cn \+@LUCI_LANG_en/g' /package/lean/default-settings/Makefile

# Modify default language, timezone
sed -i 's/uci set luci\.main\.lang\=zh_cn/uci set luci\.main\.lang\=en/g' /package/lean/default-settings/files/zzz-default-settings
sed -i 's/uci set system\.@system\[0\]\.timezone\=CST\-8/uci set system\.@system\[0\]\.timezone\='\<\+07\>\-7'/g' /package/lean/default-settings/files/zzz-default-settings
sed -i 's/uci set system\.@system\[0\]\.zonename\=Asia\/Shanghai/uci set system\.@system\[0\]\.zonename\='Asia\/Ho Chi Minh'/g' /package/lean/default-settings/files/zzz-default-settings

# Modify luci default language
sed -i 's/uci set luci\.main\.lang\=zh_cn/uci set luci\.main\.lang\=en/g' /feed/luci/modules/luci-base/root/etc/uci-defaults/luci-base
