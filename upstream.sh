# Get Branches
echo "Enter clo branch/tag: "
read clobranch
echo ""
echo "Enter Exfat branch/tag: "
read exfatbranch
echo ""

# Update subtree and tree
git fetch https://git.codelinaro.org/clo/la/kernel/msm-4.19 $clobranch
git merge FETCH_HEAD
git subtree pull --prefix=drivers/staging/qcacld-3.0 https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0 $clobranch
git subtree pull --prefix=drivers/staging/fw-api https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/fw-api $clobranch
git subtree pull --prefix=drivers/staging/qca-wifi-host-cmn https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn $clobranch
git subtree pull --prefix=techpack/audio https://git.codelinaro.org/clo/la/platform/vendor/opensource/audio-kernel $clobranch
git subtree pull --prefix=fs/exfat https://github.com/namjaejeon/linux-exfat-oot $exfatbranch
