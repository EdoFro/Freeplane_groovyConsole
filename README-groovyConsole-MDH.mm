<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="README&#xa;groovyConsole" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" ID="ID_1090958577">
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<font BOLD="true"/>
<hook NAME="MapStyle" background="#f5f5dc" zoom="0.826">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="file" LAST="false">
            <script_condition>
                <script>{node.link.file &amp;&amp; !node.link.uri?.fragment}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="modifiedFile" LAST="false">
            <attribute_contains_condition ATTRIBUTE="modifiedFile" VALUE="true"/>
        </conditional_style>
    </conditional_styles>
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" mapUsesOwnSaveOptions="true" save_modification_times="false" save_last_visited_node="default" show_note_icons="true" associatedTemplateLocation="template:/light_sepia_template.mm" MDI_template="v0.0.13" save_folding="never_save_folding" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_867972350" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_1558627382" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#2c2b29" BACKGROUND_COLOR="#eedfcc" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt" NUMBERED="false" FORMAT="STANDARD_FORMAT" TEXT_ALIGN="DEFAULT" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="3 pt" COMMON_HGAP_QUANTITY="14 pt" MAX_WIDTH="10 cm" MIN_WIDTH="0 cm" CHILD_NODES_LAYOUT="AUTO">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1558627382" STARTINCLINATION="81.75 pt;-6.75 pt;" ENDINCLINATION="81.75 pt;19.5 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="9" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="bezier" COLOR="#2e3440" WIDTH="3" DASH="SOLID"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" COLOR="#ffffff" BACKGROUND_COLOR="#2e3440">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" COLOR="#2e3440">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_453968336" COLOR="#cccccc" BACKGROUND_COLOR="#333333" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font SIZE="10" ITALIC="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" COLOR="#2c2b29" BACKGROUND_COLOR="#ffffff" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_411331447" COLOR="#ffffff" BACKGROUND_COLOR="#bf616a" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_411331447"/>
<font NAME="Ubuntu" SIZE="12" BOLD="true"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="MarkdownHelperNode" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="MarkdownHelperLink" COLOR="#dbffdb" BACKGROUND_COLOR="#4c4c7f" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F517"/>
</stylenode>
<stylenode TEXT="MarkdownHelperPreview" ID="ID_647144206" COLOR="#adbac7" BACKGROUND_COLOR="#22272e">
<font NAME="Tahoma" SIZE="14"/>
<hook NAME="NodeCss">pre {
    background-color: #e5e7ff;
    border-left: 5px solid #ccc;
    display: block;
    padding: 8px;
    margin: 5px;
}
code {
    font-family: Consolas,&quot;courier new&quot;;
    font-size: 11px;
    color: #999;
}

blockquote {
    border-left: 5px solid #cccccc;
    background-color: #eeeeee;
    padding: 8px;
}</hook>
</stylenode>
<stylenode TEXT="baseFolder" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="freshNew" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" BACKGROUND_COLOR="#bcc6e0" FORMAT="NO_FORMAT" BORDER_WIDTH="2.5 px">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-1F4C1"/>
</stylenode>
<stylenode TEXT="missing" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="modifiedFile" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#00659b">
<icon BUILTIN="emoji-002A-20E3"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="locked" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="file_folder_with_icon">
<icon BUILTIN="emoji-1F4CD"/>
</stylenode>
<stylenode TEXT="notMovedRenamed" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-26D4"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#ffffff" BACKGROUND_COLOR="#2c2b29" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#2c2b29" BORDER_DASH_LIKE_EDGE="true">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt" BORDER_COLOR="#2c2b29">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" BACKGROUND_COLOR="#eedfcc" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BORDER_COLOR="#f0f0f0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BORDER_COLOR="#f0f0f0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BORDER_COLOR="#f0f0f0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BORDER_COLOR="#f0f0f0"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Freeplane_groovyConsole" POSITION="bottom_or_right" ID="ID_108058596" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovyConsole">
<attribute_layout NAME_WIDTH="117.75 pt" VALUE_WIDTH="317.99999 pt"/>
<attribute NAME="MarkdownRootFolder" VALUE="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovyConsole/" OBJECT="java.net.URI|file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovyConsole/"/>
<attribute NAME="MDHGithubBranch" VALUE="/blob/main"/>
<attribute NAME="MDHTargetRootPath" VALUE="https://github.com/EdoFro/Freeplane_groovyConsole"/>
<node TEXT="README.MD" ID="ID_181733889" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovyConsole/README.MD">
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</node>
<node TEXT="resources" ID="ID_1818290900" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovyConsole/resources/">
<attribute NAME="lastModifiedTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 10:04" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T10:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
</node>
</node>
<node TEXT="Freeplane_groovyConsole" STYLE_REF="baseFolder" POSITION="bottom_or_right" ID="ID_299419203" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/">
<attribute NAME="nameFilter" VALUE="*.md;*.png;*.svg;*.jpg"/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="linkType" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="MarkdownRootFolder" VALUE="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/" OBJECT="java.net.URI|file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/"/>
<attribute NAME="MDHGithubBranch" VALUE="/blob/main"/>
<attribute NAME="MDHTargetRootPath" VALUE="https://github.com/EdoFro/Freeplane_groovyConsole"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>
# MDI:  parameters
The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:

-----------------------------------------------------
# MDI: nameFilter:
A filter to perform on the name of traversed files. If set, only files which match are brought. 
This option allowes four types of inputs:
1. nothing (empty) means no filtering (default) 
2. regex
  - example: `~/.*\.mp3/ `
3. 'simplified' regex
  - example: `~.*\.mp3` 
4. string with *
  - example: `*.mp3`   
    (equivalent to regex      `~/(?i).*\.mp3/`  )
5. list of strings with '*' and ';'
  - example: ` *.mp3;*.png `   
    (equivalent to regex: ` ~/(?i)(.*\.mp3|.*\.png)/ `  )

-----------------------------------------------------

# MDI:  maxDepth:

The maximum number of directory levels when recursing   
(default is -1 which means no limit, set to 0 for no recursion)


-----------------------------------------------------

# MDI:  linkType:

Define if you want to use Absolute or Relative   
links for files and folders.

 set to:   

0 : to use Absolute links

1 : to use Relative links

-----------------------------------------------------
   
# MDI:  markWhenMoved:

change styles to moved/renamed file Nodes 

set to:   
 
0  : to change style only if node hasn't a previous one (default),

1  : to allways change the style,

-1 : to never change the style

-----------------------------------------------------

 
# MDI:  checkIfReallyBroken:
Check if existing nodes pointing to filtered files still exist.   
This option is only useful if you defined a nameFilter before 
but in the map there are also some files that doesn't match 
this filter definition 
(for example if you brought them manually or import them 
before the actual namefilter setting)  

- default is 0 which means don't check --&gt; Mark node as missing also if it doesn't match the current filter,

- set to 1 to extra check if a not matching file still exists in drive 


-----------------------------------------------------

</text></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      using special file filter
    </p>
  </body>
</html></richcontent>
<node TEXT="README.MD" STYLE_REF="MarkdownHelperNode" ID="ID_160804169" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/README.MD">
<attribute_layout NAME_WIDTH="143.25 pt" VALUE_WIDTH="46.5 pt"/>
<attribute NAME="headersToUnderline" VALUE="3" OBJECT="org.freeplane.features.format.FormattedNumber|3|#0.####"/>
<attribute NAME="hideFolded" VALUE="false"/>
<attribute NAME="headerNumbering" VALUE="true"/>
<attribute NAME="topHeadersNumbered" VALUE="false"/>
<attribute NAME="topHeaderStartingNumber" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1"/>
<attribute NAME="fileLinksRelative" VALUE="true"/>
<attribute NAME="lineOverHeader" VALUE="true"/>
<attribute NAME="ignoreHeaderDetails" VALUE="true"/>
<attribute NAME="ignoreHeaderNotes" VALUE="true"/>
<attribute NAME="ignoreLeafDetails" VALUE="false"/>
<attribute NAME="ignoreHeaderImageObjects" VALUE="false"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.document(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="New Groovy Console for Freeplane" ID="ID_1992959063">
<node TEXT="A groovy console that runs on groovy 4 and java 17 to replace wikdshell add-on" ID="ID_101985004"/>
<node TEXT="about &quot;groovyConsole add-on&quot;" ID="ID_1052461647">
<node TEXT="groovyConsole is an add-on for Freeplane that opens a Groovy Console and works with Groovy 4 and can be used with the new versions of Freeplane." ID="ID_422303135"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1242531216"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto">
<text>= edofro.MarkDownHelper.MDH.imageLink(node,true) 
</text></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)  " STYLE_REF="MarkdownHelperLink" ID="ID_987299215" LINK="#ID_1941588475"/>
</node>
<node TEXT="Additional features:" ID="ID_318297123">
<icon BUILTIN="emoji-1F53B"/>
<node TEXT="list" STYLE_REF="MarkdownHelperNode" ID="ID_1192258797"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.list(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="It has access to the Freeplane API so it can interact with nodes and maps" ID="ID_210953"/>
<node TEXT="It can load / save script files to be used with Freeplane" ID="ID_355686780"/>
<node TEXT="It can &apos;save&apos; scripts as node&apos;s notes or attributes" ID="ID_132684427"/>
<node TEXT="If you select a node that has a script and then you open the groovy console, the script will be automatically loaded in the console editor" ID="ID_1835156213"/>
<node TEXT="You can edit the script and &apos;save&apos; it back to the node" ID="ID_678764906"/>
<node TEXT="You can choose if you want to save the script in its original node or into the currently selected one" ID="ID_589626010">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1272649912"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1698327657" LINK="#ID_1984441739"/>
</node>
</node>
<node TEXT="You can choose if you want to &apos;save&apos; it as a note or as &apos;script1&apos; attribute" ID="ID_1419130972">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_608855915"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1544126096" LINK="#ID_1034407721"/>
</node>
</node>
</node>
<node TEXT="The script stays in the map, so you don&apos;t need to have multiple files for you short scripts" ID="ID_604112988"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1206519521"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1045513064" LINK="#ID_1693528645"/>
</node>
</node>
<node TEXT="Additional buttons" ID="ID_484549552">
<icon BUILTIN="emoji-1F53B"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_515923454"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_826496699">
<node TEXT="Button" ID="ID_888907803"/>
<node TEXT="Label" ID="ID_16150301"/>
<node TEXT="Description" ID="ID_1559268293"/>
</node>
<node TEXT="r" ID="ID_1103530420">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1698703557"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_1929736605" LINK="#ID_1471724657"/>
</node>
<node TEXT="Send to node" ID="ID_1314687521"/>
<node TEXT="Save script into node" ID="ID_920917811"/>
</node>
<node TEXT="r" ID="ID_906934789">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1563356019"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_2379355" LINK="#ID_594298952"/>
</node>
<node TEXT="Config + send to node" ID="ID_1377561715"/>
<node TEXT="Select options and save script into node" ID="ID_923834124"/>
</node>
<node TEXT="r" ID="ID_319530479">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1904310838"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_893061771" LINK="#ID_27340568"/>
</node>
<node TEXT="Refresh Compiler Config" ID="ID_468100119"/>
<node TEXT="Refreshes the Freeplane&apos;s **GroovyScript Compiler Configuration**&#xa;(libraries included)" ID="ID_1695144570"/>
</node>
<node TEXT="r" ID="ID_1058901683">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1047520427"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_885344875" LINK="#ID_603527740"/>
</node>
<node TEXT="Starts System.out interceptor" ID="ID_1164768265"/>
<node TEXT="Restarts the ```systemOutInterceptor``` so that ```print()``` and ```println()``` get written in the log file or the console.&#xa;Use &apos;**View / Capture Standard Output**&apos; to direct the output to the console or to Freeplane&apos;s *log.0* file" ID="ID_823569848"/>
</node>
<node TEXT="r" ID="ID_1413716531">
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1121927248"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_255840871" LINK="#ID_399959044"/>
</node>
<node TEXT="Reloads script from file" ID="ID_1205263902"/>
<node TEXT="Reloads script from file into the editor pane in Groovy Console.&#xa;This is useful, for example, when you want to discard all changes or when you are editing the script with an IDE like IntelliJ but want to test the script with the Groovy Console." ID="ID_857540682"/>
</node>
</node>
</node>
<node TEXT="Add-on configuration" ID="ID_1173958944">
<icon BUILTIN="emoji-1F53B"/>
<node TEXT="local image" STYLE_REF="MarkdownHelperNode" ID="ID_1367297767"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/auto">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.imageLink(node,true)
    </p>
  </body>
</html></richcontent>
<node TEXT="= edofro.MarkDownHelper.MDH.linkedNodeText(node)" STYLE_REF="MarkdownHelperLink" ID="ID_440247773" LINK="#ID_1628851653"/>
</node>
<node TEXT="You can configure some parameters of the add-on in Freeplane &apos;s preferences." ID="ID_1799291069"/>
<node TEXT="table" STYLE_REF="MarkdownHelperNode" ID="ID_55445407"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.table(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="r" ID="ID_787350962">
<node TEXT="parameter" ID="ID_309855458"/>
<node TEXT="Description" ID="ID_738671987"/>
<node TEXT="Default value" ID="ID_582708346"/>
<node TEXT="Notes" ID="ID_26177819"/>
</node>
<node TEXT="r" ID="ID_263184019">
<node TEXT="Attribute for file extensions" ID="ID_616708116"/>
<node TEXT="Name of the attribute to indicate the file extension associated with the node" ID="ID_1455090415"/>
<node TEXT="file_ext" ID="ID_238409262"/>
<node TEXT="When you decide to save a script as a node&apos;s note, it will &apos;mark&apos; this node by defining its details to &apos;.groovy&apos;. But if its details have a text allready, then it will add a new attribute to the node to do this. The name of this attribute is defined in this preference." ID="ID_886190508"/>
</node>
<node TEXT="r" ID="ID_714566041">
<node TEXT="Open in full Screen mode?" ID="ID_554660444"/>
<node TEXT="Groovy Console must open in full screen mode" ID="ID_1282776616"/>
<node TEXT="true" ID="ID_1183067633"/>
<node TEXT="I choose true because I work with two monitors and this way it opens allways in fullscreen mode in the other monitor." ID="ID_1996770372"/>
</node>
<node TEXT="r" ID="ID_1485106552">
<node TEXT="Show console button labels" ID="ID_1537521366"/>
<node TEXT="Shows the labels of the buttons added to thr Groovey Console&apos;s toolbar" ID="ID_469289346"/>
<node TEXT="true" ID="ID_1385463321"/>
<node TEXT="The default value is true, so new users can become familiar with this buttons.&#xa;I have this option turned off" ID="ID_1907512571"/>
</node>
<node TEXT="r" ID="ID_1916174884">
<node TEXT="Default writing target" ID="ID_1050402361"/>
<node TEXT="Defines which is your preferred destination when writing (saving) a script into a node:&#xa;  0. its note&#xa;  1. &quot;script1&quot; attribute" ID="ID_904850384"/>
<node TEXT="1. &quot;script1&quot; attribute" ID="ID_1140313765"/>
<node TEXT="Everytime you save a new script in a node, it asks you where do you want to save it in (node or script1).&#xa;This parameter indicates which is the preselected option.&#xa;Personally I prefer to save my scripts in the notes, because this way I can look at them easier, but using script1 has its advantages too: they can be directly executed by Freeplane." ID="ID_1106880070"/>
</node>
</node>
</node>
</node>
<node TEXT="about the &quot;Groovy Console&quot;" ID="ID_276201467">
<node TEXT="The **Groovy Swing Console** is a standard component from the Groovy language.&#xa;It allows a user to enter and run **Groovy scripts**." ID="ID_1511747675"/>
<node TEXT="It looks like this:" ID="ID_1691832209"/>
<node TEXT="web Image" STYLE_REF="MarkdownHelperNode" ID="ID_1380829106"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webImageLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Groovy Console" ID="ID_1233743796" LINK="https://docs.groovy-lang.org/latest/html/documentation/assets/img/GroovyConsole.png"/>
</node>
<node TEXT="text block" STYLE_REF="MarkdownHelperNode" ID="ID_566564267"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.textBlock(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="more info about it can be found in the" ID="ID_1976210177"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      more information about it and all its features can be found in the $1
    </p>
  </body>
</html></richcontent>
<node TEXT="web link" STYLE_REF="MarkdownHelperNode" ID="ID_282730740"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      = edofro.MarkDownHelper.MDH.webLink(node)
    </p>
  </body>
</html></richcontent>
<node TEXT="Groovy Console official page" ID="ID_486619326" LINK="https://docs.groovy-lang.org/latest/html/documentation/groovy-console.html"/>
</node>
</node>
</node>
</node>
<node TEXT="about &quot;wikdshell add-on&quot;" ID="ID_1300104306">
<node TEXT="wikdshell is an add-on that opened a Groovy Console to write and use scripts with Freeplane." ID="ID_1272928470"/>
<node TEXT="wikdshell works with Freeplane versions up to v1.9.15." ID="ID_1469717355"/>
<node TEXT="But with the new versions starting as v1.10.1 it doesn&apos;t work any longer." ID="ID_1729938505"/>
</node>
</node>
</node>
<node TEXT="LICENSE.md" ID="ID_1851221117" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/LICENSE.md"/>
<node TEXT="groovyConsole" ID="ID_348243277" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/">
<node TEXT="images" ID="ID_583795161" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/images/">
<node TEXT="groovyConsole-screenshot-1.png" ID="ID_853335873" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/images/groovyConsole-screenshot-1.png"/>
<node TEXT="groovyConsole-icon.svg" ID="ID_709775429" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/images/groovyConsole-icon.svg"/>
<node TEXT="groovyConsole.svg" ID="ID_968938484" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/images/groovyConsole.svg"/>
</node>
<node TEXT="zips" ID="ID_998188936" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/zips/">
<node TEXT="icons" ID="ID_349774628" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/zips/icons/">
<node TEXT="groovyConsole" ID="ID_1436751289" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/zips/icons/groovyConsole/">
<node TEXT="reloadFile.svg" ID="ID_1167586432" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/zips/icons/groovyConsole/reloadFile.svg"/>
<node TEXT="saveInNode.svg" ID="ID_1599109873" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/zips/icons/groovyConsole/saveInNode.svg"/>
<node TEXT="saveInNodeAs.svg" ID="ID_1953221840" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/zips/icons/groovyConsole/saveInNodeAs.svg"/>
</node>
</node>
</node>
<node TEXT="history.md" ID="ID_630087602" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/groovyConsole/history.md"/>
</node>
<node TEXT="resources" ID="ID_338928712" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/">
<node TEXT="groovyConsole_001.png" ID="ID_1941588475" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_001.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
</node>
<node TEXT="groovyConsole_002.png" ID="ID_1984441739" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_002.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
</node>
<node TEXT="groovyConsole_003.png" ID="ID_1034407721" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_003.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
</node>
<node TEXT="groovyConsole_004.png" ID="ID_1693528645" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_004.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
</node>
<node TEXT="groovyConsole_005.png" ID="ID_1736357139" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_005.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/markdown"/>
</node>
<node TEXT="groovyConsole_006.png" ID="ID_971400958" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_006.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/markdown"/>
</node>
<node TEXT="groovyConsole_007.png" ID="ID_27340568" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_007.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/markdown"/>
</node>
<node TEXT="groovyConsole_008.png" ID="ID_603527740" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_008.png"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>=&quot;![](${node.link.uri})&quot;</text></richcontent>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/markdown"/>
</node>
<node TEXT="groovyConsole_009.png" ID="ID_1628851653" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/groovyConsole_009.png"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="saveInNode.svg" ID="ID_1872850841" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/saveInNode.svg"/>
<node TEXT="saveInNodeAs.svg" ID="ID_719867425" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/saveInNodeAs.svg"/>
<node TEXT="reloadFile.png" ID="ID_399959044" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/reloadFile.png"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="saveInNode.png" ID="ID_1471724657" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/saveInNode.png"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="saveInNodeAs.png" ID="ID_594298952" LINK="file:/C:/Users/efroh/GitHub/Freeplane_groovyConsole/resources/saveInNodeAs.png"><richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =&quot;![](${node.link.uri})&quot;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_673453946">
<attribute NAME="log_MDI" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2|#0.####"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&#xa0;&#xa0;&#xa0;2023-08-04&#xa0;&#xa0;16:40:47
    </p>
    <p>
      
    </p>
    <p>
      ------- Files: --------&#xa0;
    </p>
    <p>
      &#xa0;0 node(s) pointing to unexisting/filtered files (marked as 'broken')
    </p>
    <p>
      &#xa0;0 link(s) corrected in nodes
    </p>
    <p>
      &#xa0;3 new file(s) imported as node(s)&#xa0;
    </p>
    <p>
      &#xa0;0 node(s) moved/renamed in drive
    </p>
    <p>
      &#xa0;0 node(s) couldn't be moved/renamed in drive (marked as 'notMovedRenamed')
    </p>
    <p>
      
    </p>
    <p>
      ------- Folders: --------&#xa0;
    </p>
    <p>
      6 folders didn't need to be moved&#xa0;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      0.3 seconds
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      =====================================
    </p>
    <p>
      
    </p>
    <p>
      No failed operation in drive
    </p>
  </body>
</html>
</richcontent>
<node TEXT="resources" ID="ID_1750426977" LINK="#ID_338928712"/>
</node>
</node>
</node>
</map>
