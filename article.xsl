<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <Article>                   
                    <articleId>
                        <xsl:value-of select="MedlineCitation/Article/AuthorList/Author/AuthorShip/articleId" />
                    </articleId>   
                    <pubModel>
                        <xsl:value-of select="MedlineCitation/Article/pubModel" />
                    </pubModel>  					
                    <title>
                        <xsl:value-of select="MedlineCitation/Article/title" />
                    </title>  
                    <abstract>
                        <xsl:value-of select="MedlineCitation/Article/abstract" />
                    </abstract>                      
                </Article>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>