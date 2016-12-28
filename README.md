# Font configuration for a multi-language topic with the DITA-OT PDF plugin

This project tries to present how to configure a **DITA-OT PDF** transformation 
when the published topic contains paragraphs in different languages. In this sample project we'll use the [Apache FOP](http://xmlgraphics.apache.org/) processor.

As sample document, we have used [I Can Eat Glass](https://en.wikipedia.org/wiki/I_Can_Eat_Glass) linguistic project and fonts
are taken from [Google fonts](https://fonts.google.com/) storage.

This project uses **Travis CI** for continuous integration, so a PDF sample is generated whenever the customization is modified. You can view the results of this customization by opening the latest generated PDF 
[Multi language topic](https://github.com/radu-pisoi/com.oxygenxml.pdf2.font.config/blob/gh-pages/font-configuration.pdf). You can see more details about this customization in the [Wiki](https://github.com/radu-pisoi/com.oxygenxml.pdf2.font.config/wiki) pages.

To use this PDF customization plugin, follow these steps:

1. Download **DITA-OT 2.4** 
2. Download the ZIP archive associated with this project by using the ``Clone or download`` button.
3. Install the plugin by running the command ``dita-ot-dir/bin/dita --install=plug-in-zip``. See more details in the [Installing plug-ins](http://www.dita-ot.org/2.4/dev_ref/plugins-installing.html) topic from DITA-OT documentation.
4. Invoke the PDF transformation using the **oxy-font-cfg** transtype in a command, as in the following example:

dita.bat -i "DITA sample/font-configuration.ditamap" -f oxy-font-cfg -output=publishing -Dorg.dita.pdf2.i18n.enabled=false
