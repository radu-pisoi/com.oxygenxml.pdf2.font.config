# Font configuration for a multi-language topic with the DITA-OT PDF plugin

This project tries to present how to configure the **DITA-OT PDF** transformation 
when the published topic contains paragraphs in different languages. In this sample project we'll use the [Apache FOP](http://xmlgraphics.apache.org/) processor.

The default transformation uses a font mapping mechanism for font configuration. This mechanism is explained very well in the [Font configuration in PDF2](http://www.elovirta.com/2016/02/18/font-configuration-in-pdf2.html) topic written by 
Jarno Elovirta.

As sample document, we have used [I Can Eat Glass](https://en.wikipedia.org/wiki/I_Can_Eat_Glass) linguistic project. 
Configured fonts are from [Google fonts](https://fonts.google.com/) storage.

This project uses **Travis CI** for continuous integration, so a PDF sample is generated whenever the customization is modified. 
You can view the results of this customization by opening the latest generated PDF 
[Multi language topic](https://github.com/radu-pisoi/com.oxygenxml.pdf2.font.config/blob/gh-pages/font-configuration.pdf).

To use this PDF customization plugin, follow these steps:

1. Download **DITA-OT 2.4** 
2. Copy the root folder of this customization plugin to the **DITA-OT/plugins** folder
3. Run the **DITA-OT Integrator** (ant -f integrator.xml)
4. Invoke the PDF transformation using the **oxy-ug-pdf** transtype in a command, as in the following example:

dita.bat -i "DITA sample/font-configuration.ditamap" -f oxy-font-cfg -output=publishing -Dorg.dita.pdf2.i18n.enabled=false
