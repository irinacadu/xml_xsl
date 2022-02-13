<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

    <xsl:output method="html" encoding="utf-8" />
    <xsl:template match="/">
        <html>  
            <style>

                .cuerpo{
                    
                    border:black solid thin;
                    width:950px;
                    height:625px;
                    margin-right:auto;
                    margin-left:auto;
                    margin-top:2rem;
                    padding-left:2rem;
                    padding-top:2rem;
                    font-family:"Helvetica";
                    line-height:1.5rem;
                    border-style:dotted;
                    
                }

                ul{
                    list-style:none;
                    padding-bottom:1rem;
                }
                #titulo1{

                    margin-bottom:2rem;
                }
                #titulo2{

                    margin-bottom:2rem;
                }

                #firma{

                  font-size: 0.8rem;
                  color:darkgrey;
                }
            </style>
           
            <body class="cuerpo">

                <head>                
                    <h1 id="titulo1"><xsl:value-of select="/modulo/@titulo"></xsl:value-of></h1>
                    <h2 id="titulo2">Prueba escrita <xsl:value-of select="/modulo/prueba[@id='P20220301']/@titulo"></xsl:value-of></h2>        
                </head>
                <h3>Parte P2 "<xsl:value-of select="/modulo/prueba/parte[@id='P2']/@titulo"></xsl:value-of>"</h3> 
                    <ul class="lista1">
                        <xsl:for-each select="/modulo/prueba/parte[@id='P2']/ejercicio">
                        <h4 font-color="blue"><li>Ejercicio 
                            <xsl:value-of select="@id"></xsl:value-of>
                            (<xsl:value-of select="@puntos"></xsl:value-of> puntos)
                            </li></h4>                    
                            <p><xsl:value-of select="enunciado"></xsl:value-of></p>
                            <ol>
                                <xsl:for-each select="items/item[not(@oculto)]">
                                <li> 
                                    <xsl:value-of select="@descripcion"> </xsl:value-of>  
                                    (<xsl:value-of select="@peso"> </xsl:value-of>  %)
                                </li>
                                </xsl:for-each>
                            </ol>
                        </xsl:for-each>
                    </ul>
                    <p id="firma">Irina Casas Duarte </p> 
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
