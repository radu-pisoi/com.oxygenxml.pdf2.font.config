# Font configuration for the DITA-OT PDF plugin

This project tries to show you how to configure the DITA-OT PDF transformation
when the published topic is multi-language. The used XSL-FO processor is 
Apache FOP.

There are two methods to configure the PDF fonts. The main difference between 
them is that one uses a 'font mapping' mechanism while the the other not.

This project uses Travis CI for continuous integration, so a PDF sample is generated whenever the customization is modified. You can view the results of this customization by opening one of the following recently generated PDFs:

oXygen XML Editor User Manual

To use this PDF customization plugin, follow these steps:

Download DITA-OT 2.4
Copy the root folder of this customization plugin to the DITA-OT/plugins folder
Run the DITA-OT Integrator (ant -f integrator.xml)
Invoke the PDF transformation using the oxy-ug-pdf transtype in a command, as in the following example:
dita.bat -i file:/D:/workspace/userguide-private/DITA/UserManual.ditamap -f oxy-ug-pdf -output=D:/workspace/userguide-private/DITA/out-pdf --filter=D:/workspace/userguide-private/DITA/author.ditaval -Doxy-ug-distribution=author
