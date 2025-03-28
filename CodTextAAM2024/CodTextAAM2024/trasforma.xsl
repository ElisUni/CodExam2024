<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet
version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:tei="http://www.tei-c.org/ns/1.0" 
xmlns="http://www.w3.org/1999/xhtml" 
>

<xsl:output method="html" encoding="UTF-8" />
<!--inizio scheletro della pagina popolato da chiamate e da elementi esterni alla codifica-->
<xsl:template match="/">
    <html>
	<!--head pagina con collegamenti a jquery e css-->
        <head>
			<title>Progetto codifica</title>
			<link rel ="stylesheet" href="stile.css"/>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
			<script src="script.js"></script> 
        </head>
		
        <body>
		<!--Header con immagini-->
		<div class="header">
			<img src="img/title.svg" alt="logo"/>
		</div>
		
		<div class="header2">
			<img src="img/line.svg" alt="logo"/>
		</div>
		
		<div class="header3">
			<img src="img/line.svg" alt="logo"/>
		</div>
		<!--bottoni per la codifica-->
        <div id="btn_div"> 
            <button id="btn_espandi" class = "btn">Espandi</button>
            <button id="btn_corr" class = "btn">Correzioni</button>
            <button id="btn_reg" class = "btn">Regolarizza</button>
            <button id="btn_persone" class = "btn">Persone</button>
            <button id="btn_opere" class = "btn">Opere</button>
            <button id="btn_luoghi" class = "btn">Luoghi</button>
            <button id="btn_luoghi_naturali" class = "btn">Natura</button>
            <button id="btn_casa_editrice" class = "btn">Editore</button>
            <button id="btn_date" class = "btn">Date</button>
			<button id="btn_themes" class = "btn">Tematiche</button>
            <button id="btn_foreign" class = "btn">Foreign</button>
            <button id="btn_cit" class = "btn">Citazioni</button>
            <button id="btn_org" class = "btn">Organizzazioni</button>
            

        </div>
		
		<!--il fronte con le informazioni e le tabelle-->

        <div class="frontefonte">
			<div class="titinfofon">
				<h2>Informazioni sulla Fonte</h2>
			</div>
			
			<div class="tabcon">
				<div class="infocartaceo">
					<xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
				</div>
			</div>
			
			<div class="tabcon">
				
				<div class="infodigitale">
					<xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc"/>
					
				</div>
			</div>
		</div>
		
		<!--spazio vuoto per la grafica-->
		<div id="space">
		</div>
		
		<!--tabella con informazioni-->
		<div class="frontecod">
			<div class="titinfocod">
				<h2>Informazioni sulla Codifica</h2>
			</div>
            <div id = "encodingDesc">
                <xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:encodingDesc"/>
            </div>
            <div id = "profileDesc">
                <xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:profileDesc"/>
            </div>
        </div>

		<!--info aggiuntive esterne ad xml-->
		
        <div id="descrizioni">
            <div id="rivista" class="descContenitore">
                <div class="descElement">
                    <h3>La Rassegna Settimanale</h3>
                    <p>La rivista venne fondata da Leopoldo <strong>Franchetti</strong> e Sidney <strong>Sonnino</strong>. Con la rivista <strong>"Rassegna settimanale"</strong> l'intento dei due era quello di far conoscere le condizioni di vita del <strong>Meridione</strong>e di render consapevole la società italiana che <strong>l'economia del Sud</strong> doveva essere riequilibrata anche per porre fine al pericoloso malcontento delle masse contadine. La rivista venne pubblicata a Firenze dalla <strong>Casa Editrice Barbera</strong>; dal n. 18 (<strong>3 novembre 1878</strong>) la sede venne spostata a Roma con Piero Pampaloni come direttore responsabile. Nel 1882 il settimanale venne trasformato nel <strong>quotidiano La Rassegna</strong>, pubblicato <strong>dal 1882 al 1886</strong> con la direzione di Michele Toracca.</p>
                </div>
                <div class="descElement">
                    <img src="img/barbera.png" alt="qui va una foto"/>
                </div>
            </div>
            
            <div id="sonnino" class="descContenitore">
                <div class="descElement2">
                    <img src="img/sonnino.png" alt="qui va una foto"/>
                </div>
                <div class="descElement2">
                    <h3>Sidney Sonnino</h3>
					<p>Laureatosi in giurisprudenza, intraprese dapprima la carriera diplomatica ed in seguito cominciò ad occuparsi dei problemi del <strong>Mezzogiorno</strong>. Insieme a L. <strong>Franchetti</strong>, a seguito di un'inchiesta a quattro mani sulla questione del latifondo in Sicilia, diresse la rivista <strong>Rassegna settimanale dal 1878 al 1882</strong>. Nel 1880 fu eletto deputato e si schierò con la destra moderata. Tornò a ricoprire un ruolo di vitale importanza nel panorama politico venendo investito delle più prestigiose cariche dello stato quali, Ministro delle Finanze, del Tesoro,  Capo dell'opposizione costituzionale, Presidente del Consiglio, Ministro degli Esteri, ritirandosi successivametne dalla vita politica, nonostante la nomina a senatore del 1920.</p>
                 </div>
            </div>

            <div id="franchetti" class="descContenitore">
                <div class="descElement">
                    <h3>Leopoldo Franchetti</h3>
					<p>Laureatosi in giurisprudenza, assieme all'amico e collega S. Sonnino, dedicò la sua giovinezza allo studio dei grandi sistemi amministrativi sul modello ingelse e tedesco. L'esigenza di approfondire lo studio dei <strong>problemi della società italiana</strong>, conscio dei disagi che andavano consumandosi nelle campagne del Mezzogiorno, <strong>lo spinse a dar vita alla Rassegna settimanale assieme a Sonnino</strong>. Fu molto attivo in campo politico legandosi alla Destra, ma mantenendosi aperto nei confronti del Centro. Leopoldo, già molto colpito dalla prematura scomparsa della moglie, muore suicida a Roma il 4 novembre 1917 lasciando il suo patrimonio a un istituto di beneficenza e le sue molte proprietà agricole ai contadini che vi lavoravano.</p>
				</div>
				<div class="descElement">
                    <img src="img/franchetti.png" alt="qui va una foto"/>
                </div>
            </div>

        
        </div>
		<div id="bottoni2">
			<button id="btn_fronte" class = "btn">Vai alla codifica</button>
		</div>
		
        <div id="immagini">
            <xsl:apply-templates select="/tei:TEI/tei:facsimile/tei:surface"/>
        </div>

        <div id="bottoni">
            <button id="indietro" class = "cambio_pagina">Pagina Precedente</button>
            <button id="avanti" class = "cambio_pagina">Pagina Successiva</button>
        </div>

        <div id="articoli">
            <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type= 'article']"/>
            <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type= 'bibliography']"/>
            <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type = 'biblio']"/>
            <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type = 'errata_corrige']"/>
            <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type = 'news']"/>
            <xsl:apply-templates select="/tei:TEI/tei:text/tei:body/tei:div[@type = 'infomagazine']"/>
        </div>
		
		<div id="bottoni3">
			<button id="btn_piusu" class = "btn">Inizio</button>
			<button id="btn_su" class = "btn">Torna su</button>
		</div>

        <footer>
            <div class="footerdiv">
                <div>
					<h3><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/></h3>
				</div>
					<table>
						<tr>
							<td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[1]/tei:resp"/></td> <td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[1]/tei:name"/></td>
						</tr>
						<tr>
							<td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[2]/tei:resp"/></td> <td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[2]/tei:name[1]"/></td>
						</tr>
						<tr>
							<td></td> <td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[2]/tei:name[2]"/></td>
						</tr>
						<tr>
							<td></td> <td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[2]/tei:name[3]"/></td>
						</tr>
					</table>
			</div>
        </footer>
        </body>
    </html>
</xsl:template>

<!--template per la gestione del fronte della pagina contenente informazioni sulla codifica e sul documento-->
<xsl:template match="tei:fileDesc">
	<table>
		<tr> 
			<td> Titolo:</td> <td> <xsl:value-of select="tei:titleStmt/tei:title[@type='main']"/></td>
		</tr>
		<tr> 
			<td> </td> <td> <xsl:value-of select="tei:titleStmt/tei:title[2]"/></td>
		</tr>
		<tr> 
			<td> </td> <td> <xsl:value-of select="tei:titleStmt/tei:title[3]"/></td>
		</tr>
		
		<tr> 
			<td>Fondatori: </td> <td> <xsl:value-of select="tei:sourceDesc/tei:biblFull/tei:titleStmt/tei:funder[1]"/></td>
		</tr>
		
		<tr> 
			<td> </td> <td><xsl:value-of select="tei:sourceDesc/tei:biblFull/tei:titleStmt/tei:funder[2]"/></td>
		</tr>
	
		<tr> 
			<td>Pubblicato da:</td><td><xsl:value-of select="tei:publicationStmt/tei:publisher"/></td>
		</tr>
		<tr> 
			<td>Pubblicato a:</td> <td><xsl:value-of select="tei:publicationStmt/tei:pubPlace"/></td>
		</tr>
		<tr> 
			<td>Pubblicato il:</td> <td><xsl:value-of select="tei:publicationStmt/tei:date"/></td> 
		</tr>
		<tr> 
			<td>Licenza:</td> <td><xsl:value-of select="tei:publicationStmt/tei:availability"/></td> 
		</tr>
	
		<tr>
			<td><xsl:apply-templates select="tei:editionStmt/tei:respStmt[1]/tei:resp"/></td> <td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[1]/tei:name"/></td>
		</tr>
		<tr>
			<td><xsl:apply-templates select="tei:editionStmt/tei:respStmt[2]/tei:resp"/></td> <td><xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt[2]/tei:name[1]"/></td>
		</tr>
		<tr>
			<td></td> <td><xsl:apply-templates select="tei:editionStmt/tei:respStmt[2]/tei:name[2]"/></td>
		</tr>
		<tr>
			<td></td> <td><xsl:apply-templates select="tei:editionStmt/tei:respStmt[2]/tei:name[3]"/></td>
		</tr>
	</table>
</xsl:template>

<xsl:template match="tei:sourceDesc">

    <table>
		<tr> 
			<td>Titolo:</td> <td><xsl:value-of select="tei:biblFull/tei:titleStmt/tei:title[@type='main']"/></td>
        </tr>
		
		<tr>
			<td></td> <td><xsl:value-of select="tei:biblFull/tei:titleStmt/tei:title[@type='sub']"/></td>
		</tr>
		
        <tr> 
			<td>Fondatori:</td> <td><xsl:value-of select="tei:biblFull/tei:titleStmt/tei:funder[1]"/></td>
        </tr>
  
        <tr>
			<td></td> <td><xsl:value-of select="tei:biblFull/tei:titleStmt/tei:funder[2]"/></td>
        </tr>
		
		<tr>
			<td>Responsabile: </td> <td><xsl:value-of select="tei:biblFull/tei:titleStmt/tei:respStmt/tei:name"/></td>
        </tr>
		
        <tr> 
			<td>Pubblicato da:</td>  <td><xsl:value-of select="tei:biblFull/tei:publicationStmt/tei:publisher"/></td>
        </tr>
		
        <tr> 
			<td>Pubblicato a:</td>  <td><xsl:value-of select="tei:biblFull/tei:publicationStmt/tei:pubPlace"/></td>
        </tr>
		
        <tr> 
			<td>Pubblicato il:</td>  <td><xsl:value-of select="tei:biblFull/tei:publicationStmt/tei:date"/></td>
        </tr>
		
        <tr>
			<td>Fascicolo:</td> <td><xsl:value-of select="tei:biblFull/tei:seriesStmt/tei:title"/></td>
        </tr>
		
        <tr>
			<td>Volume:</td> <td>N.<xsl:value-of select="tei:biblFull/tei:seriesStmt/tei:biblScope[@unit='Volume']"/></td>
        </tr>
		
        <tr>
			<td>Uscita:</td> <td>N.<xsl:value-of select="tei:biblFull/tei:seriesStmt/tei:biblScope[@unit='Issue']"/></td>
        </tr>
		
		<tr> 
			<td>Lunghezza:</td>  <td><xsl:value-of select="tei:biblFull/tei:extent"/></td>
        </tr>
		
        <tr>
			<td>Pagine:</td> <td><xsl:value-of select="tei:biblFull/tei:seriesStmt/tei:biblScope[@unit='pages']"/></td>
        </tr>
    </table>

</xsl:template>
<xsl:template match="tei:titleStmt">
 <table>
        <tr> 
            <td> Titolo:</td> <td> <xsl:value-of select="tei:title[@type='main']"/></td>
        </tr>
        <tr> 
            <td> </td> <td> <xsl:value-of select="tei:title[2]"/></td> 
        </tr>
        <tr> 
            <td> </td> <td> <xsl:value-of select="tei:title[3]"/></td>
        </tr>
        
        <tr> 
            <td>Fondatori: </td> <td> <xsl:value-of select="tei:funder[1]"/></td>
        </tr>
        
        <tr> 
            <td> </td> <td><xsl:value-of select="tei:funder[2]"/></td>
        </tr>
    </table>

</xsl:template>

<xsl:template match="tei:publicationStmt">
    <table>    
        <tr> 
            <td>Pubblicato da:</td><td><xsl:value-of select="tei:publisher"/></td>
        </tr>
        <tr> 
            <td>Pubblicato a:</td> <td><xsl:value-of select="tei:pubPlace"/></td>
        </tr>
		<tr> 
			<td>Pubblicato il:</td> <td><xsl:value-of select="tei:date"/></td> 
        </tr>
        <tr> 
			<td>Licenza:</td> <td><xsl:value-of select="tei:availability"/></td> 
        </tr>
    </table>
</xsl:template>


<xsl:template match="tei:encodingDesc">
    <table>
		<tr> <td>Descrizione progetto:</td> <td><xsl:value-of select="tei:projectDesc"/></td></tr>
        <tr> <td>Tipo di codifica:</td> <td><xsl:value-of select="tei:p"/></td></tr> 
    </table>    
    <xsl:apply-templates select="tei:editorialDecl"/>
</xsl:template>

<xsl:template match="tei:encodingDesc/tei:editorialDecl">
    <table>    
        <tr> 
            <td>Normalizzazioni:</td> <td><xsl:value-of select="tei:normalization"/></td>
        </tr>
		
		<tr> 
			<td>Segmentazioni:</td> <td><xsl:value-of select="tei:segmentation"/></td> 
        </tr>
		
		<tr> 
			<td>Interpunzioni:</td> <td><xsl:value-of select="tei:punctuation"/></td> 
        </tr>
		
		<tr> 
            <td>Correzioni:</td><td><xsl:value-of select="tei:correction"/></td>
        </tr>
		
		<tr> 
			<td>Citazioni:</td> <td><xsl:value-of select="tei:quotation"/></td> 
        </tr>
		
        <tr> 
			<td>Trattini:</td> <td><xsl:value-of select="tei:hyphenation"/></td> 
        </tr>
    </table>
</xsl:template>

<xsl:template match="tei:profileDesc">
    <table>
		<tr> <td>Supporto:</td> <td><xsl:value-of select="tei:textDesc/tei:channel"/></td></tr>  
        <tr> <td>Lingua:</td> <td><xsl:value-of select="tei:langUsage"/></td></tr>  
    </table>    
    <xsl:apply-templates select="tei:editorialDecl"/>
</xsl:template>

<!--template per la gestione delle immagini-->

<xsl:template match="tei:surface">
<div class="contenitore_immagini_aree">
    <xsl:element name="img">
        <xsl:attribute name="id"><xsl:value-of select="concat('img', @n)"/></xsl:attribute>
        <xsl:attribute name="usemap"><xsl:value-of select="concat('#', @xml:id)"/></xsl:attribute>
        <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
    </xsl:element>
    <xsl:element name="map">
        <xsl:attribute name="name"><xsl:value-of select="@xml:id"/></xsl:attribute>
        <xsl:apply-templates/>
    </xsl:element>

</div>
</xsl:template>

<xsl:template match="tei:zone">
    <xsl:element name="area">
            <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
            <xsl:attribute name="shape">rect</xsl:attribute>
            <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
    </xsl:element>
</xsl:template>

<!--template per la gestione del cambio pagina, cambio colonna, titoli, blocchi anonimi, bibliografia e fw-->

<xsl:template match="tei:div">
    <xsl:variable
        name="tipo" select="@type">
    </xsl:variable>
        
        <xsl:apply-templates select="tei:cb"/>
        <xsl:apply-templates select="tei:bibl"/>
        <xsl:apply-templates select="tei:fw/tei:ptr"/>
        <xsl:apply-templates select="tei:head"/>
        <xsl:apply-templates select="tei:ab"/>
        <xsl:apply-templates select="tei:pb"/>

</xsl:template>

<xsl:template match="tei:bibl">
    <xsl:apply-templates />
</xsl:template>

<xsl:template match="tei:fw/tei:ptr">
    <xsl:variable
        name="att" select="@target">
    </xsl:variable>
    <xsl:element name="div">
        <xsl:attribute name="id">
            <xsl:value-of select="concat('fw_', ../@n)"/>
        </xsl:attribute>
        <xsl:attribute name="class">fw</xsl:attribute>
        <xsl:value-of select="ancestor::*//*[@xml:id = substring($att,2)]"/>
    </xsl:element>
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="tei:cb">
    <xsl:element name="div" >
    <xsl:attribute name="id">
        <xsl:value-of select="concat('colonna',@n)"/>
    </xsl:attribute>
    <xsl:attribute name="class">colonna</xsl:attribute>
    </xsl:element>

</xsl:template>

<xsl:template match="tei:pb">
    <xsl:element name="div" >
    <xsl:attribute name="id">
        <xsl:value-of select="concat('pagina',@n)"/>
    </xsl:attribute>
    <xsl:attribute name="class">pagina</xsl:attribute>
    </xsl:element>
</xsl:template>


<xsl:template match="tei:head"> 
    <xsl:element name="h2" >
    <xsl:attribute name="id">
        <xsl:value-of select="concat('header',@n)"/>
    </xsl:attribute>
    <xsl:attribute name="class">header</xsl:attribute>
        <xsl:apply-templates/>

    </xsl:element>
</xsl:template>

<xsl:template match="tei:ab"> 
    <xsl:choose>
            
        <xsl:when test=".[@type='testo_colonna']">
            <xsl:element name="div">

                <xsl:attribute name="id">
                    <xsl:value-of select="concat('testo_colonna',@n)"/>
                </xsl:attribute>
                
                <xsl:attribute name="class">testo_colonna</xsl:attribute>
                
                <xsl:apply-templates/>
            
            </xsl:element>
        </xsl:when>
        <xsl:otherwise>
        <xsl:element name="p">
                <xsl:attribute name="class">paragrafo</xsl:attribute>
                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                <xsl:apply-templates/>
        </xsl:element>
            
        </xsl:otherwise>
</xsl:choose>

</xsl:template>

<!--template per i ritorni a capo-->

<xsl:template match="//tei:lb">
	<br/>
</xsl:template>

<xsl:template match="//tei:l">
    <br/>
</xsl:template>

<!--inizio template name per la creazione degli span e il collegamento dei link ipertestuali, vi sono diversi type e perciò diversi casi-->

<xsl:template match="tei:name">
    <xsl:variable 
        name="collegamento" select="@ref">
    </xsl:variable>
	
	<xsl:if test=".[@type='theme']">
		<span class="themes">
			<xsl:apply-templates/>
		</span>
	</xsl:if>
	
    <xsl:if test=".[@type='person']"> 
        <xsl:variable 
            name="percorso" select="ancestor::tei:TEI/tei:text/tei:back/tei:div/tei:listPerson/tei:person[substring-after($collegamento, '#') = (@xml:id)]"> 
        </xsl:variable>
        <span class="person">
            <xsl:element name = "a">
                <xsl:attribute name="href">
                    <xsl:value-of select="$percorso/tei:persName/tei:ref/@target"/>
                </xsl:attribute>
                <xsl:attribute name="target">_blank</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </span>
            <xsl:element name="span">
                <xsl:attribute name="class">specchietto</xsl:attribute>
                    Ruolo: <xsl:value-of select="$percorso/tei:persName/tei:roleName"/><br/>
                    Cognome: <xsl:value-of select="$percorso/tei:persName/tei:surname"/><br/>
                    Nome: <xsl:value-of select="$percorso/tei:persName/tei:forename"/><br/>
                    Nascita: <xsl:value-of select="$percorso/tei:birth"/><br/>
                    Morte: <xsl:value-of select="$percorso/tei:death"/><br/>
            </xsl:element>
    </xsl:if> 

    <xsl:if test=".[@type='organization'] || .[@type='publishinghouse']"> 
        <xsl:variable 
            name="percorso" select="ancestor::tei:TEI/tei:text/tei:back/tei:div/tei:listOrg/tei:org[substring-after($collegamento, '#') = (@xml:id)]">
        </xsl:variable>
        <xsl:element name = "span"> 
                <xsl:attribute name="class"><xsl:value-of select="@type"/></xsl:attribute>
            <xsl:element name = "a">
                <xsl:attribute name="href">
                    <xsl:value-of select="ancestor::tei:TEI/tei:text/tei:back/tei:div/tei:listOrg/tei:org[substring-after($collegamento, '#') = (@xml:id)]/tei:orgName/tei:ref/@target"/>
                </xsl:attribute>
                <xsl:attribute name="target">_blank</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:element> 
        <xsl:element name="span">
            <xsl:attribute name="class">specchietto</xsl:attribute>
                Nome Completo: <xsl:value-of select="$percorso/tei:orgName/tei:name"/><br/>
                <xsl:if test="$percorso/tei:state[@from]">
                    Data inizio: <xsl:value-of select="$percorso/tei:state/@from"/><br/>
                    <xsl:if test="$percorso/tei:state[@to]"> 
                        Data fine:  <xsl:value-of select="$percorso/tei:state/@to"/>
                    </xsl:if> 
                </xsl:if>
        </xsl:element>
    </xsl:if> 
    
    

    <xsl:if test=".[@type='place'] || .[@type='natural_place']"> 
        <xsl:variable 
            name="percorso" select="ancestor::tei:TEI/tei:text/tei:back/tei:div/tei:listPlace/tei:place[substring-after($collegamento, '#') = (@xml:id)]">
        </xsl:variable>
        <xsl:element name = "span"> 
            <xsl:attribute name="class"><xsl:value-of select="@type"/></xsl:attribute>
            <xsl:element name = "a">
                <xsl:attribute name="href">
                    <xsl:value-of select="$percorso/tei:placeName/tei:ref/@target"/>
                </xsl:attribute>
                <xsl:attribute name="target">_blank</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="class">specchietto</xsl:attribute>
            Luogo: <xsl:value-of select="$percorso/tei:placeName"/><br/>
            Si trova in: <xsl:value-of select="$percorso/tei:location/*[1]"/><br/>

        </xsl:element> 
    </xsl:if> 

    
    <xsl:if test=".[@type='opere']"> 
        <xsl:variable 
            name="percorso" select="ancestor::tei:TEI/tei:text/tei:back/tei:div/tei:listBibl/tei:bibl[substring-after($collegamento, '#') = (@xml:id)]">
        </xsl:variable>
        <span class="opere"> 
            <xsl:element name = "a">
                <xsl:attribute name="href">
                    <xsl:value-of select="$percorso/tei:ref/@target"/>
                </xsl:attribute>
                <xsl:attribute name="target">_blank</xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </span>
        <xsl:element name="span">
            <xsl:attribute name="class">specchietto</xsl:attribute>
            Titolo: <xsl:value-of select="$percorso/tei:title"/><br/>
            
            <xsl:choose>
                <xsl:when test="exists($percorso/tei:author)">
                    Autore: <xsl:value-of select="$percorso/tei:author"/><br/>
                </xsl:when>
                <xsl:otherwise>
                   <b><xsl:value-of select="$percorso/tei:respStmt/tei:resp"/></b> : <xsl:for-each select="$percorso/tei:respStmt/tei:persName"><xsl:value-of select="."/><br/></xsl:for-each>
                   
                </xsl:otherwise>

            </xsl:choose>
            
            Data di Pubblicazione: <xsl:value-of select="$percorso/tei:date"/><br/>
            Pubblicato da: <xsl:value-of select="$percorso/tei:publisher"/><br/>
        </xsl:element> 
    </xsl:if> 
    <xsl:if test=".[@type='coder']"> 
        <xsl:apply-templates/><br/>
    </xsl:if> 
    <xsl:if test="not(exists(.[@type]) )"> 
        <xsl:apply-templates/><br/>
    </xsl:if> 
    
</xsl:template>

<!--inizio template per le correzioni, abbreviazioni, espansioni ed altri span modificabili con css-->

<xsl:template match="tei:abbr">
    <span class="abbreviazione">
        <xsl:apply-templates/>   
    </span>
</xsl:template>

<xsl:template match="tei:expan">
    <span class="espansione">
        <xsl:apply-templates/>
    </span>
</xsl:template>

<xsl:template match="tei:sic">
    <span class="sbagliato">
        <xsl:apply-templates/>
    </span>
</xsl:template>

<xsl:template match="tei:corr">
    <span class="correzione">
        <xsl:apply-templates/> 
    </span>
</xsl:template>

<xsl:template match="tei:orig">
    <span class="originale">
        <xsl:apply-templates/>
    </span>
</xsl:template>

<xsl:template match="tei:reg">
    <span class="regolarizzato">
        <xsl:apply-templates/>
    </span>
</xsl:template>

<xsl:template match="tei:hi">
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="tei:foreign">
    <span class="foreign">
        <xsl:apply-templates/>
    </span>
</xsl:template>

<xsl:template match="tei:date">
    <span class="date">
        <xsl:apply-templates/>
    </span>
</xsl:template>

<xsl:template match="tei:q">
<xsl:if test=".[@type='written'] | .[@type='spoken']">
    <span class="cit">
        <xsl:apply-templates/>
    </span>
</xsl:if>
</xsl:template>

</xsl:stylesheet>