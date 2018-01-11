<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei" version="2.0">
    <xsl:output media-type="text/html" method="html" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="//tei:titleStmt/tei:title[@type='sub']/text()"/>
                </title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"/>
                <style>
                    .person {
                    background-color:#FF6B9C;
                    }
                    .place {
                    background-color:#AAFCFF;
                    }
                    .org {
                    background-color:#C0EDDC;
                    }
                    .work {
                    background-color:#C49593;
                    };
                </style>
            </head>
            <body>
                <div class="container">
                    <div class="panel">
                        <div class="panel panel-header">
                            TEI:HEADER
                        </div>
                        <div class="panel panel-body">
                            <xsl:apply-templates select="//tei:teiHeader"/>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel panel-header">
                            TEI:BODY
                        </div>
                        <div class="panel panel-body">
                            <xsl:apply-templates select="//tei:body"/>
                        </div>
                    </div>
                    
                </div>
            </body>      
        </html>
    </xsl:template>
    
    <xsl:template match="tei:rs">
        <strong>
            <span>
                <xsl:attribute name="class">
                    <xsl:value-of select="data(./@type)"/>
                </xsl:attribute>
                <xsl:apply-templates/>
            </span>
        </strong>
    </xsl:template>
    
    
</xsl:stylesheet>