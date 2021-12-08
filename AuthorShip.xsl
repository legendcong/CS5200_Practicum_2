<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <AuthorShip>
                    <authorId>
                        <xsl:value-of select="MedlineCitation/Article/AuthorList/Author/LastName" />
                    </authorId>                    
                    <articleId>
                        <xsl:value-of select="MedlineCitation/Article/AuthorList/Author/ForeName" />
                    </articleId> 
					<title>
                        <xsl:value-of select="MedlineCitation/Article/ArticleTitle" />
                    </title>
                </AuthorShip>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>