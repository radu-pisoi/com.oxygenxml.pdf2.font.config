#!/bin/bash

echo "Publish $TRAVIS_BRANCH !"

java -version

echo "====================================="
echo "download DITA-OT 2.4"
echo "====================================="
wget https://github.com/dita-ot/dita-ot/releases/download/2.4/dita-ot-2.4.zip

echo "====================================="
echo "extract DITA-OT"
echo "====================================="
unzip dita-ot-2.4.zip

echo "===================================================="
echo "Copy PDF customization plugin to DITA-OT/plugins"
echo "===================================================="
mkdir dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config
cp -R Customization dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config/Customization
cp -R fonts dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config/fonts
cp build.xml dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config/build.xml
cp fop.xconf dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config/fop.xconf
cp integrator.xml dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config/integrator.xml
cp plugin.xml dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config/plugin.xml

ls -la dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config
ls -la dita-ot-2.4/plugins/com.oxygenxml.pdf2.font.config/fonts/Amiri

echo "====================================="
echo "integrate plugins"
echo "====================================="
sh dita-ot-2.4/bin/dita --install

echo "====================================="
echo "Transform to PDF the sample DITA map"
echo "====================================="
sh dita-ot-2.4/bin/dita -i "DITA sample/font-configuration.ditamap" -f pdf2 -output=publishing -v  -Dorg.dita.pdf2.i18n.enabled=false -Dclean.temp=no 

# cp gh-pages/index.html publishing/index.html
echo "====================================="
echo "List output file"
echo "====================================="

echo "List sample"
ls -la "DITA sample"
echo "List sample temp"
ls -la "DITA sample/temp"

ls -la publishing