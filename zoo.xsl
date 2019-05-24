<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <style>

  </style>
  <h3>Zwierzęta</h3>
  <table border="1">
	<ol style="text-align: justify;">    
		<xsl:for-each select="zoo/zwierzęta/zwierzę">
   		 <li>
			
			<xsl:value-of select="gromada"/>
			&#xA0;
			<b>
			<xsl:value-of select="imię"/>
			&#x2003;
			</b> 
			<xsl:value-of select="gatunek"/>
			&#x2003;
			<xsl:value-of select="wiek"/>
			&#x2003;
			<xsl:value-of select="waga"/>
			&#x2003;
			<xsl:value-of select="sekcja"/>
			<xsl:for-each select="zoo/zwierzęta/zwierzę/pożywienie">
			<xsl:value-of select="produkt"/>
			</xsl:for-each>
	 	 </li>
    	</xsl:for-each>
     </ol>
   
  <h3>Opiekunowie:</h3>
  </table>
  <table border="1">
	<ol style="text-align: justify;">    
		<xsl:for-each select="zoo/opiekunowie/opiekun">
   		 <li>
			
			<b>
			<xsl:value-of select="imię"/>
			&#x2003;
			</b> 
			<xsl:value-of select="nazwisko"/>
			&#x2003;
			<xsl:value-of select="pesel"/>
			&#x2003;
			<xsl:value-of select="telefon"/>
			&#x2003;

	
	 	 </li>
    	</xsl:for-each>
     </ol>
   
  </table>
  
  <h3>Jedzenie:</h3>
  
  <table border="1">
	<ol style="text-align: justify;">    
		<xsl:for-each select="zoo/jedzenie/produkty">
   		 <li>
			
			<b>
			<xsl:value-of select="nazwa"/>
			&#x2003;
			</b> 
			<xsl:value-of select="ilość"/>
		
	
	 	 </li>
    	</xsl:for-each>
     </ol>
   
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 
