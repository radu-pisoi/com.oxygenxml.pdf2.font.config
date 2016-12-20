# Font configuration for the DITA-OT PDF plugin

This project tries to show you how to configure the **DITA-OT PDF** transformation when the published topic contains paragraphs in different languages. The used XSL-FO processor is [Apache FOP](http://xmlgraphics.apache.org/).

There are two methods to configure the PDF fonts. The main difference between them is that one uses a _font mapping_ mechanism while the other not.

As sample document, we have used [I Can Eat Glass](https://en.wikipedia.org/wiki/I_Can_Eat_Glass) linguistic project. In our sample we have used the [Google fonts](https://fonts.google.com/).

This project uses **Travis CI** for continuous integration, so a PDF sample is generated whenever the customization is modified. You can view the results of this customization by opening one of the following recently generated PDF [Multi language topic](https://github.com/radu-pisoi/com.oxygenxml.pdf2.font.config/blob/gh-pages/font-configuration.pdf).

To use this PDF customization plugin, follow these steps:

1. Download **DITA-OT 2.4** 
2. Copy the root folder of this customization plugin to the **DITA-OT/plugins** folder
3. Run the **DITA-OT Integrator** (ant -f integrator.xml)
4. Invoke the PDF transformation using the **oxy-ug-pdf** transtype in a command, as in the following example:

dita.bat -i "DITA sample/font-configuration.ditamap" -f oxy-font-cfg -output=publishing -Dorg.dita.pdf2.i18n.enabled=false
