# XSL-Tutorial

## Task 1 (GIT)

clone this repo

## Task 2 (OXYGEN)

create an oXgen-project for this repo called `rb-xsl`

## Task 3  (OXYGEN)

Set up an `Transformation-Scenario` called `tei2html`

### input  (OXYGEN)

* XML: any file from `xsl-tutorial/source/data/editions/`
* XSL: `xsl-tutorial/xsl/xml2html.xsl`

### output (OXYGEN)

* `xsl-tutorial/target/html/{whateveryouwant.html}`

## Task 4  (OXYGEN)

Make your `Transformation-Scenario` more generic
* Transform all documents stored in one collection/directory
* store the results of the transformation as `xsl-tutorial/target/html/{nameOfSourceDoc.html}`

## Task 5 (XPATH/XSL)

The content of the `tei:title` element should show up in the `html:title` element

## Task 6 (XPATH/XSL)

Dump the whole content of `tei:body` in some division in `html:body`

## Task 7 (XSL)

Write an `xsl:template` surrounding all `tei:rs`-elemnts with an `html:strong` element

## Task 8 (XSL/XPATH/CSS)

Each different `tei:rs` type should be displayed in a different color.

## Task 9 (XSL)

Render content of `tei:header` and `tei:body` in two separate e.g. `html:panels` (`div class='panel'`)

## Task 10 (XSL/XPATH)

fetch all entities (`tei:place`) and present them in some kind of index, e.g. as `html:li` maybe using somthing like `xsl:for-each` 
