<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/PubmedArticleSet">
        <data>
            <xsl:for-each select="PubmedArticle">
                <xsl:for-each select="MedlineCitation/Article/AuthorList/Author">
                    <author>
                        <lastName>
                            <xsl:value-of select="LastName" />
                        </lastName>
                        <foreName>
                            <xsl:choose>
                                <xsl:when test="ForeName">
                                    <xsl:value-of select="ForeName" />
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>"."</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </foreName>
                        <initials>
                            <xsl:choose>
                                <xsl:when test="Initials">
                                    <xsl:value-of select="Initials" />
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>"."</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </initials>
                    </author>
                </xsl:for-each>
            </xsl:for-each>
        </data>
    </xsl:template>
</xsl:stylesheet>