<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <AuthorShip>
                    <authorId>
                        <xsl:value-of select="MedlineCitation/Article/AuthorList/Author/authorId" />
                    </authorId>                    
                    <articleId>
                        <xsl:value-of select="MedlineCitation/Article/AuthorList/Author/AuthorShip/articleId" />
                    </articleId>                       
                </AuthorShip>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>