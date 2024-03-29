<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="groovyConsole project" FOLDED="false" ID="ID_581835333" LINK="../../OneDrive/Documentos/Mochila/Freeplane/ScriptsEnComputadorYDesarrollosEdo%20-%20mochila.mm"><hook NAME="MapStyle" background="#f9f9f8" zoom="0.8">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="customMenuPackage" LAST="false">
            <attribute_exists_condition ATTRIBUTE="tbActions"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="Warning" LAST="false">
            <node_contains_condition VALUE=".EXIT_ON_CLOSE" ITEM="filter_any_text"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="menuButton" LAST="false">
            <hyper_link_contains TEXT="menuitem:"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="GroovyNode" LAST="false">
            <script_condition>
                <script>try { edofro.freeplane.groovynode.GN.isGroovyNode(node) } catch(e) { false }</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="hasGroovyNode" LAST="false">
            <script_condition>
                <script>(node.findAll() - node).any{
    edofro.freeplane.groovynode.GN.isGroovyNode(it)
}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsNextTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;nextTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsPendingTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;pendingTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="hasGroovyNode" LAST="false">
            <any_descendant_condition>
                <script_condition>
                    <script>try { edofro.freeplane.groovynode.GN.isGroovyNode(node) } catch(e) { false }</script>
                </script_condition>
            </any_descendant_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file" LAST="false">
            <script_condition>
                <script>{node.link.file &amp;&amp; !node.link.uri?.fragment}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="modifiedFile" LAST="false">
            <attribute_contains_condition ATTRIBUTE="modifiedFile" VALUE="true"/>
        </conditional_style>
    </conditional_styles>
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" mapUsesOwnSaveOptions="true" BookmarksKeys="{}" followedTemplateLocation="template:/DFGHI%20Proyecto-Groovy-Tareas-MDI-menuButton%20(vis01).mm" pruebaDiccionario="ID_311366985|:|idDictionary|-|ID_323296041|:|ToM Actions|-|" show_icon_for_attributes="true" show_notes_in_map="false" save_modification_times="false" save_last_visited_node="default" show_note_icons="true" MDI_template="v0.0.13" mdhFreeMindmapPath="hhgf" save_folding="save_folding_if_map_is_changed" followedMapLastTime="1661362125221" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" NUMBERED="false" FORMAT="STANDARD_FORMAT" TEXT_ALIGN="DEFAULT" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px" CHILD_NODES_LAYOUT="AUTO_CENTERED" MAX_WIDTH="10 cm" MIN_WIDTH="0 cm">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;0 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Dialog" SIZE="10" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="horizontal" COLOR="#2e3440" WIDTH="1" DASH="SOLID"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" ID="ID_861824498" COLOR="#006666" BACKGROUND_COLOR="#a5cece" BACKGROUND_ALPHA="204" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true">
<font NAME="MS UI Gothic" SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" ID="ID_199621123">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_810825098" COLOR="#004600" BACKGROUND_COLOR="#e8e8c8" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font NAME="Consolas" SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" ID="ID_608497754">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" ID="ID_358779365" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="baseFolder" ID="ID_1246743661" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ID="ID_175940221" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="freshNew" ID="ID_1804698977" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ID="ID_851444256" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" ID="ID_1717966522" BACKGROUND_COLOR="#bcc6e0" FORMAT="NO_FORMAT" BORDER_WIDTH="2.5 px">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" ID="ID_1554270070" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-1F4C1"/>
</stylenode>
<stylenode TEXT="missing" ID="ID_1068634079" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="modifiedFile" ID="ID_1027988377" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#00659b">
<icon BUILTIN="emoji-002A-20E3"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="locked" ID="ID_936671747" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="file_folder_with_icon" ID="ID_927144007">
<icon BUILTIN="emoji-1F4CD"/>
</stylenode>
<stylenode TEXT="GroovyNode" ID="ID_647184451" ICON_SIZE="16 pt" COLOR="#286b86" BACKGROUND_COLOR="#92c5d7" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#286b86">
<icon BUILTIN="groovyNode/groovy-G"/>
<font NAME="Harlow Solid Italic" SIZE="12"/>
</stylenode>
<stylenode TEXT="Warning" ID="ID_191105537" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="6 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#990000">
<icon BUILTIN="closed"/>
</stylenode>
<stylenode TEXT="hasGroovyNode" ID="ID_547619512">
<icon BUILTIN="groovyNode/groovy-G"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" ID="ID_1141135899" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" ID="ID_738828078" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" ID="ID_1196215838" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="nextTask" ID="ID_507772011" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="pendingTask" ID="ID_1278203117" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="completedTask" ID="ID_263222449" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="discardedTask" ID="ID_1726907748" COLOR="#666666" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="Descartado"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="containsNextTasks" ID="ID_661211039" BACKGROUND_COLOR="#eaea86">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="containsPendingTasks" ID="ID_1486748518" BACKGROUND_COLOR="#b5d7d7">
<icon BUILTIN="emoji-23F9"/>
</stylenode>
<stylenode TEXT="Proyecto" ID="ID_643179356" COLOR="#003399">
<font NAME="SansSerif" SIZE="12" BOLD="true" ITALIC="false"/>
<edge COLOR="#003399" WIDTH="6"/>
</stylenode>
<stylenode TEXT="Grupito" ID="ID_1085570108">
<cloud COLOR="#e4e6ff" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Iniciativa" ID="ID_604763806">
<icon BUILTIN="attach"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Organizador" ID="ID_235021673">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Minuta" ID="ID_461928519">
<icon BUILTIN="list"/>
<cloud COLOR="#69a1f8" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Acuerdo" ID="ID_1601320744" BACKGROUND_COLOR="#66ff33">
<icon BUILTIN="flag-black"/>
</stylenode>
<stylenode TEXT="numerado" ID="ID_1268287532" BACKGROUND_COLOR="#add1ea" STYLE="bubble" NUMBERED="true" MAX_WIDTH="200 px" MIN_WIDTH="200 px"/>
<stylenode TEXT="con duda" ID="ID_801703559" BACKGROUND_COLOR="#ffff66">
<icon BUILTIN="help"/>
<font BOLD="false" ITALIC="true"/>
</stylenode>
<stylenode TEXT="menuButton" ID="ID_398428156" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
<stylenode TEXT="project" ID="ID_1147771750" COLOR="#e1e19c" BACKGROUND_COLOR="#1c1c63">
<icon BUILTIN="emoji-1F5C2"/>
<attribute NAME="projectCode" VALUE=""/>
</stylenode>
<stylenode TEXT="MarkdownHelperNode" ID="ID_965152203" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="customMenuPackage" ID="ID_1721666989" ICON_SIZE="20 pt" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" BORDER_WIDTH="3 px" BORDER_COLOR="#ae5528">
<icon BUILTIN="emoji-1F4E6"/>
<font BOLD="true" ITALIC="true"/>
</stylenode>
<stylenode TEXT="tasksBucket" ID="ID_1197921882">
<icon BUILTIN="emoji-1F5C3"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="maybeTask" ID="ID_1519585836" BACKGROUND_COLOR="#cefcfc">
<icon BUILTIN="emoji-23FA"/>
</stylenode>
<stylenode TEXT="milestone" ID="ID_1534665710">
<icon BUILTIN="emoji-1F6A9"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="fullMarkDown" ID="ID_897231475" FORMAT="markdownPatternFormat" BORDER_DASH="SOLID">
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/markdown"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="notMovedRenamed" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-26D4"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="15 pt" TEXT_ALIGN="CENTER" MAX_WIDTH="5 cm" MIN_WIDTH="3 cm">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ID="ID_144205114" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ID="ID_159773648" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Freeplane_groovyConsole" STYLE_REF="baseFolder" ID="ID_108058596" LINK=".">
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="lastModifiedTime" VALUE="22-04-22 12:52" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-22T12:52-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="24-04-22 23:03" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-24T23:03-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:29" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:29-0400|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<attribute NAME="projectCode" VALUE="Freepla.groovy.Console"/>
<attribute NAME="linkType" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1|#0.####"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/markdown">
<html>
  <head>
    
  </head>
  <body>
    <p>
      # MDI:&#xa0;&#xa0;parameters
    </p>
    <p>
      The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      # MDI: nameFilter:
    </p>
    <p>
      A filter to perform on the name of traversed files. If set, only files which match are brought.
    </p>
    <p>
      This option allowes four types of inputs:
    </p>
    <p>
      1. nothing (empty) means no filtering (default)
    </p>
    <p>
      2. regex
    </p>
    <p>
      &#xa0;&#xa0;- example: `~/.*\.mp3/ `
    </p>
    <p>
      3. 'simplified' regex
    </p>
    <p>
      &#xa0;&#xa0;- example: `~.*\.mp3`
    </p>
    <p>
      4. string with *
    </p>
    <p>
      &#xa0;&#xa0;- example: `*.mp3`
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;(equivalent to regex&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;`~/(?i).*\.mp3/`&#xa0;&#xa0;)
    </p>
    <p>
      5. list of strings with '*' and ';'
    </p>
    <p>
      &#xa0;&#xa0;- example: ` *.mp3;*.png `
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;(equivalent to regex: ` ~/(?i)(.*\.mp3|.*\.png)/ `&#xa0;&#xa0;)
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      # MDI:&#xa0;&#xa0;maxDepth:
    </p>
    <p>
      
    </p>
    <p>
      The maximum number of directory levels when recursing
    </p>
    <p>
      (default is -1 which means no limit, set to 0 for no recursion)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      # MDI:&#xa0;&#xa0;linkType:
    </p>
    <p>
      
    </p>
    <p>
      Define if you want to use Absolute or Relative
    </p>
    <p>
      links for files and folders.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;set to:
    </p>
    <p>
      
    </p>
    <p>
      0 : to use Absolute links
    </p>
    <p>
      
    </p>
    <p>
      1 : to use Relative links
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      
    </p>
    <p>
      # MDI:&#xa0;&#xa0;markWhenMoved:
    </p>
    <p>
      
    </p>
    <p>
      change styles to moved/renamed file Nodes
    </p>
    <p>
      
    </p>
    <p>
      set to:
    </p>
    <p>
      
    </p>
    <p>
      0&#xa0;&#xa0;: to change style only if node hasn't a previous one (default),
    </p>
    <p>
      
    </p>
    <p>
      1&#xa0;&#xa0;: to allways change the style,
    </p>
    <p>
      
    </p>
    <p>
      -1 : to never change the style
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;
    </p>
    <p>
      # MDI:&#xa0;&#xa0;checkIfReallyBroken:
    </p>
    <p>
      Check if existing nodes pointing to filtered files still exist.&#xa0;&#xa0;&#xa0;
    </p>
    <p>
      This option is only useful if you defined a nameFilter before&#xa0;
    </p>
    <p>
      but in the map there are also some files that doesn't match&#xa0;
    </p>
    <p>
      this filter definition&#xa0;
    </p>
    <p>
      (for example if you brought them manually or import them&#xa0;
    </p>
    <p>
      before the actual namefilter setting)&#xa0;&#xa0;
    </p>
    <p>
      
    </p>
    <p>
      - default is 0 which means don't check --&gt; Mark node as missing also if it doesn't match the current filter,
    </p>
    <p>
      
    </p>
    <p>
      - set to 1 to extra check if a not matching file still exists in drive&#xa0;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      -----------------------------------------------------
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node TEXT="files" ID="ID_319055208">
<node TEXT=".git" STYLE_REF="freshNew" ID="ID_188061025" LINK=".git/"/>
<node TEXT=".idea" STYLE_REF="freshNew" ID="ID_1092617171" LINK=".idea/"/>
<node TEXT=".gitattributes" ID="ID_674537230" LINK=".gitattributes">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 15:52" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T15:52-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="68" OBJECT="org.freeplane.features.format.FormattedNumber|68|#,##0"/>
</node>
<node TEXT="delete" ID="ID_582073411" LINK="delete/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      carpeta para acumular archivos a borrar
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="ignoredByGitHub" ID="ID_1103966821" LINK="ignoredByGitHub/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      folder with files not to be copied to Github
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="groovyConsole" STYLE_REF="file_folder" ID="ID_634873088" LINK="groovyConsole/">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 15:57" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T15:57-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<node TEXT="lib" STYLE_REF="Organizador" ID="ID_1832614409">
<attribute NAME="projectCode" VALUE="lib"/>
<node TEXT="src" STYLE_REF="file_folder" ID="ID_1154616461" LINK="groovyConsole/src/">
<attribute NAME="lastModifiedTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="main" STYLE_REF="file_folder" ID="ID_233497056" LINK="groovyConsole/src/main/">
<attribute NAME="lastModifiedTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="groovy" STYLE_REF="file_folder" ID="ID_339086552" LINK="groovyConsole/src/main/groovy/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van las nuevas clases para crear el/los package
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="22-04-22 12:24" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-22T12:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="GroovyConsole.groovy" ID="ID_470123237" LINK="groovyConsole/src/main/groovy/GroovyConsole.groovy">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="12.201" OBJECT="org.freeplane.features.format.FormattedNumber|12201|#,##0"/>
<attribute NAME="modifiedFile" VALUE="true"/>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_1196256500">
<node TEXT="Agregar que pinte estilos del código en el editor" ID="ID_1939736014">
<attribute NAME="projectCode" VALUE="estilos.código.en.editor"/>
<node TEXT="estilos groovy" STYLE_REF="completedTask" ID="ID_1563279741"/>
<node TEXT="estilos Freeplane" STYLE_REF="maybeTask" ID="ID_1217856581"/>
<node TEXT="estilos librerías cargadas" STYLE_REF="maybeTask" ID="ID_1722518463"/>
</node>
<node TEXT="Add &quot;reload from disk&quot; button" STYLE_REF="completedTask" ID="ID_1701629338"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="build" ID="ID_874700936" LINK="groovyConsole/build/">
<node TEXT="classes" STYLE_REF="locked" ID="ID_202694924" LINK="groovyConsole/build/classes/"/>
<node TEXT="tmp" STYLE_REF="locked" ID="ID_1646969472" LINK="groovyConsole/build/tmp/"/>
<node TEXT="generated" STYLE_REF="locked" ID="ID_891392252" LINK="groovyConsole/build/generated/"/>
</node>
<node TEXT="lib" ID="ID_402430899" LINK="groovyConsole/lib/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - aquí se crea nuevo libreria .jar
    </p>
    <p>
      - agregar aquí otras librerías que se requieran
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-04-22 23:12" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T23:12-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="groovyConsole.jar" POSITION="bottom_or_right" ID="ID_1013604347" LINK="groovyConsole/lib/groovyConsole.jar">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|datetime"/>
<attribute NAME="fileSize" VALUE="21.540" OBJECT="org.freeplane.features.format.FormattedNumber|21540|#,##0"/>
</node>
</node>
</node>
<node TEXT="scripts" STYLE_REF="file_folder" ID="ID_1483533049" LINK="groovyConsole/scripts/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van los scripts que se llaman desde el menú
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="17-04-22 22:49" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T22:49-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<attribute NAME="projectCode" VALUE="scripts"/>
<node TEXT="openWithGroovyConsole.groovy" ID="ID_88720437" LINK="groovyConsole/scripts/openWithGroovyConsole.groovy">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="96" OBJECT="org.freeplane.features.format.FormattedNumber|96|#,##0"/>
</node>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_783822739">
<node TEXT="Agregar comado que abra console con script en texto pero sin asociar nodo y que fuente sea opcional" STYLE_REF="pendingTask" FOLDED="true" ID="ID_534212207">
<node TEXT="Al parecer basta con los métodos que ya existen" ID="ID_156564394"/>
<node TEXT="para poder llamarlo desde tutorial-o-matic" ID="ID_1527048435">
<node TEXT="desde groovyPane" ID="ID_428599852"/>
</node>
<node TEXT="opciones:" ID="ID_1597773312">
<node TEXT="hacer que esta funcionalidad esté 100% en tutorial-o-matic" ID="ID_1965125311"/>
<node TEXT="hacer que esté en groovyConsole add-on y que deba estar instalado para que funcione" FOLDED="true" ID="ID_47677833">
<node TEXT="ToM debería habilitar botón sólo si groovyConsole está presente" ID="ID_1700396366"/>
</node>
<node TEXT="hacer que gradle cargue librería groovyConsole al construir ToM" ID="ID_769340774">
<icon BUILTIN="forward"/>
</node>
</node>
</node>
</node>
<node TEXT="openWithGroovyConsoleFull.groovy" ID="ID_1251973431" LINK="groovyConsole/scripts/openWithGroovyConsoleFull.groovy">
<attribute NAME="lastModifiedTime" VALUE="28-04-23 19:33" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:33-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:33" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:33-0400|datetime"/>
<attribute NAME="fileSize" VALUE="96" OBJECT="org.freeplane.features.format.FormattedNumber|96|#,##0"/>
</node>
</node>
<node TEXT="zips" ID="ID_1327243198" LINK="groovyConsole/zips/">
<node TEXT="icons" ID="ID_815705878" LINK="groovyConsole/zips/icons/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir íconos propios del AddOn
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole" ID="ID_1988340672" LINK="groovyConsole/zips/icons/groovyConsole/">
<node TEXT="reloadFile.svg" ID="ID_484815601" LINK="groovyConsole/zips/icons/groovyConsole/reloadFile.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 22:28" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:28-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="29-06-23 21:38" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-29T21:38-0400|datetime"/>
<attribute NAME="fileSize" VALUE="1.327" OBJECT="org.freeplane.features.format.FormattedNumber|1327|#,##0"/>
</node>
<node TEXT="saveInNode.svg" ID="ID_1702417239" LINK="groovyConsole/zips/icons/groovyConsole/saveInNode.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 22:09" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:09-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:14" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:14-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.648" OBJECT="org.freeplane.features.format.FormattedNumber|2648|#,##0"/>
</node>
<node TEXT="saveInNodeAs.svg" ID="ID_1805008099" LINK="groovyConsole/zips/icons/groovyConsole/saveInNodeAs.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 22:21" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:21-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:33" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:33-0400|datetime"/>
<attribute NAME="fileSize" VALUE="3.334" OBJECT="org.freeplane.features.format.FormattedNumber|3334|#,##0"/>
</node>
</node>
</node>
<node TEXT="doc" ID="ID_982813467" LINK="groovyConsole/zips/doc/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir algún documento o mapa adicional
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole" ID="ID_1892493719" LINK="groovyConsole/zips/doc/groovyConsole/"/>
</node>
<node TEXT="templates" ID="ID_1614760108" LINK="groovyConsole/zips/templates/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir mapa template
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole" ID="ID_657261510" LINK="groovyConsole/zips/templates/groovyConsole/"/>
</node>
</node>
<node TEXT="images" ID="ID_1489890719" LINK="groovyConsole/images/">
<node TEXT="groovyConsole.svg" ID="ID_1937726588" LINK="groovyConsole/images/groovyConsole.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 17:57" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T17:57-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 18:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T18:02-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.610" OBJECT="org.freeplane.features.format.FormattedNumber|2610|#,##0"/>
<node TEXT="32x32" ID="ID_1455520567"/>
</node>
<node TEXT="groovyConsole-icon.svg" ID="ID_372224366" LINK="groovyConsole/images/groovyConsole-icon.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 18:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T18:13-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 17:43" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T17:43-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.608" OBJECT="org.freeplane.features.format.FormattedNumber|2608|#,##0"/>
</node>
<node TEXT="groovyConsole-screenshot-1.png" ID="ID_1339405738" LINK="groovyConsole/images/groovyConsole-screenshot-1.png">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 19:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T19:13-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 18:35" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T18:35-0400|datetime"/>
<attribute NAME="fileSize" VALUE="42.084" OBJECT="org.freeplane.features.format.FormattedNumber|42084|#,##0"/>
</node>
</node>
<node TEXT="translations" ID="ID_5583999" LINK="groovyConsole/translations/">
<attribute NAME="lastModifiedTime" VALUE="18-04-22 22:00" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-18T22:00-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="18-04-22 22:00" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-18T22:00-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<attribute NAME="projectCode" VALUE="translations"/>
<node TEXT="en.properties" ID="ID_653767157" LINK="groovyConsole/translations/en.properties">
<attribute NAME="lastModifiedTime" VALUE="01-05-23 22:30" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:30-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.048" OBJECT="org.freeplane.features.format.FormattedNumber|1048|#,##0"/>
</node>
<node TEXT="gC Future C" STYLE_REF="milestone" ID="ID_371875959">
<node TEXT="traducciones" ID="ID_1153124047">
<node TEXT="alemán" STYLE_REF="maybeTask" ID="ID_477855566"/>
<node TEXT="español" STYLE_REF="maybeTask" ID="ID_1029836271"/>
</node>
</node>
</node>
<node TEXT="groovyConsole.mm" ID="ID_1406088487" LINK="groovyConsole/groovyConsole.mm">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:03" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:03-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="35.061" OBJECT="org.freeplane.features.format.FormattedNumber|35061|#,##0"/>
<attribute NAME="projectCode" VALUE="groovyConsole.mm"/>
<node TEXT="gC v0.0.5" STYLE_REF="milestone" ID="ID_1105191413"/>
</node>
<node TEXT="generados automáticamente" STYLE_REF="Organizador" FOLDED="true" ID="ID_1677527063"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí voy reuniendo los que se generan automáticamente
    </p>
    <p>
      NO es folder
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole-v0.0.8.addon.mm" ID="ID_1451197349" LINK="groovyConsole/groovyConsole-v0.0.8.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="29-06-23 22:05" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-29T22:05-0400|datetime"/>
<attribute NAME="fileSize" VALUE="140.944" OBJECT="org.freeplane.features.format.FormattedNumber|140944|#,##0"/>
</node>
<node TEXT="history.md" ID="ID_1213423335" LINK="groovyConsole/history.md"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text># History

## v0.0.2

* added &quot;GroovyScript plugin&quot; &apos;s compiler configuration:
It adds access to Freeplane&apos;s and add-ons libraries
* Added button to refresh Compiler Configuration
* Added console.systemOutInterceptor.start() to capture print() and println() in the output console or the log.0 file

## v0.0.1

* Initial release</text></richcontent>
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.132" OBJECT="org.freeplane.features.format.FormattedNumber|1132|#,##0"/>
</node>
<node TEXT="version.properties" ID="ID_781482061" LINK="groovyConsole/version.properties">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="259" OBJECT="org.freeplane.features.format.FormattedNumber|259|#,##0"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      version=v0.0.2
    </p>
    <p>
      downloadUrl=https://github.com/EdoFro/Freeplane_groovyConsole/releases/download/v0.0.2/groovyConsole-v0.0.2.addon.mm
    </p>
    <p>
      changelogUrl=https://github.com/EdoFro/Freeplane_groovyConsole/releases/latest/download/history.md
    </p>
    <p>
      freeplaneVersionFrom=v1.10.0
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="versiones anteriores" STYLE_REF="Organizador" ID="ID_542438511">
<node TEXT="groovyConsole-v0.0.7.addon.mm" POSITION="bottom_or_right" ID="ID_705820952" LINK="groovyConsole/groovyConsole-v0.0.7.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 17:42" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T17:42-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="01-05-23 22:41" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:41-0400|datetime"/>
<attribute NAME="fileSize" VALUE="64.435" OBJECT="org.freeplane.features.format.FormattedNumber|64435|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.6.addon.mm" POSITION="bottom_or_right" ID="ID_129298950" LINK="groovyConsole/groovyConsole-v0.0.6.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="01-05-23 22:10" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:10-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="01-05-23 22:10" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:10-0400|datetime"/>
<attribute NAME="fileSize" VALUE="64.468" OBJECT="org.freeplane.features.format.FormattedNumber|64468|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.5.addon.mm" POSITION="bottom_or_right" ID="ID_1282780823" LINK="groovyConsole/groovyConsole-v0.0.5.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="01-05-23 21:58" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T21:58-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|datetime"/>
<attribute NAME="fileSize" VALUE="64.282" OBJECT="org.freeplane.features.format.FormattedNumber|64282|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.4.addon.mm" POSITION="bottom_or_right" ID="ID_1924355610" LINK="groovyConsole/groovyConsole-v0.0.4.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 18:47" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:47-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="59.599" OBJECT="org.freeplane.features.format.FormattedNumber|59599|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.3.addon.mm" POSITION="bottom_or_right" ID="ID_1462281203" LINK="groovyConsole/groovyConsole-v0.0.3.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 10:41" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T10:41-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="57.737" OBJECT="org.freeplane.features.format.FormattedNumber|57737|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.2.addon.mm" POSITION="bottom_or_right" ID="ID_21920088" LINK="groovyConsole/groovyConsole-v0.0.2.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 10:03" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T10:03-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="54.803" OBJECT="org.freeplane.features.format.FormattedNumber|54803|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.1.addon.mm" POSITION="bottom_or_right" ID="ID_1544430857" LINK="groovyConsole/groovyConsole-v0.0.1.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="24-04-22 19:58" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-24T19:58-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="54.190" OBJECT="org.freeplane.features.format.FormattedNumber|54190|#,##0"/>
</node>
</node>
<node TEXT="groovyConsole.mm.bak" ID="ID_216837045" LINK="groovyConsole/groovyConsole.mm.bak">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:03" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:03-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:03" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:03-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="34.536" OBJECT="org.freeplane.features.format.FormattedNumber|34536|#,##0"/>
</node>
</node>
<node TEXT="gradle files" ID="ID_1636752753">
<node TEXT="build.gradle" ID="ID_555807106" LINK="groovyConsole/build.gradle">
<attribute NAME="lastModifiedTime" VALUE="02-08-23 22:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:15-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="3.523" OBJECT="org.freeplane.features.format.FormattedNumber|3523|#,##0"/>
<attribute NAME="projectCode" VALUE="build.gradle"/>
<attribute NAME="modifiedFile" VALUE="true"/>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_1279713530">
<node TEXT="hacer que gradle cargue librería groovyNode al proyecto" STYLE_REF="pendingTask" ID="ID_1438658355"/>
</node>
</node>
<node TEXT=".gradle" ID="ID_995192598" LINK="groovyConsole/.gradle/"/>
<node TEXT="gradle" ID="ID_1444506084" LINK="groovyConsole/gradle/">
<node TEXT="wrapper" ID="ID_141581309" LINK="groovyConsole/gradle/wrapper/">
<node TEXT="gradle-wrapper.jar" ID="ID_890408326" LINK="groovyConsole/gradle/wrapper/gradle-wrapper.jar">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="08-05-23 18:18" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-08T18:18-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="61.608" OBJECT="org.freeplane.features.format.FormattedNumber|61608|#,##0"/>
</node>
<node TEXT="gradle-wrapper.properties" ID="ID_1922030171" LINK="groovyConsole/gradle/wrapper/gradle-wrapper.properties">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="221" OBJECT="org.freeplane.features.format.FormattedNumber|221|#,##0"/>
</node>
</node>
</node>
<node TEXT="gradlew" ID="ID_1327442642" LINK="groovyConsole/gradlew">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="8.495" OBJECT="org.freeplane.features.format.FormattedNumber|8495|#,##0"/>
</node>
<node TEXT="gradlew.bat" ID="ID_714658141" LINK="groovyConsole/gradlew.bat">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.868" OBJECT="org.freeplane.features.format.FormattedNumber|2868|#,##0"/>
</node>
</node>
</node>
<node TEXT="resources" STYLE_REF="file_folder" ID="ID_1818290900" LINK="resources/">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 17:44" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T17:44-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<attribute NAME="projectCode" VALUE="resources"/>
<node TEXT="groovyConsole_001.png" ID="ID_1941588475" LINK="resources/groovyConsole_001.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:25" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:25-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="28.435" OBJECT="org.freeplane.features.format.FormattedNumber|28435|#,##0"/>
</node>
<node TEXT="groovyConsole_002.png" ID="ID_1984441739" LINK="resources/groovyConsole_002.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="7.000" OBJECT="org.freeplane.features.format.FormattedNumber|7000|#,##0"/>
</node>
<node TEXT="groovyConsole_003.png" ID="ID_1034407721" LINK="resources/groovyConsole_003.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="7.486" OBJECT="org.freeplane.features.format.FormattedNumber|7486|#,##0"/>
</node>
<node TEXT="groovyConsole_004.png" ID="ID_1693528645" LINK="resources/groovyConsole_004.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="5.183" OBJECT="org.freeplane.features.format.FormattedNumber|5183|#,##0"/>
</node>
<node TEXT="groovyConsole_005.png" ID="ID_1736357139" LINK="resources/groovyConsole_005.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="653" OBJECT="org.freeplane.features.format.FormattedNumber|653|#,##0"/>
</node>
<node TEXT="groovyConsole_006.png" ID="ID_971400958" LINK="resources/groovyConsole_006.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="518" OBJECT="org.freeplane.features.format.FormattedNumber|518|#,##0"/>
</node>
<node TEXT="groovyConsole_007.png" ID="ID_27340568" LINK="resources/groovyConsole_007.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.583" OBJECT="org.freeplane.features.format.FormattedNumber|1583|#,##0"/>
</node>
<node TEXT="groovyConsole_008.png" ID="ID_603527740" LINK="resources/groovyConsole_008.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.111" OBJECT="org.freeplane.features.format.FormattedNumber|1111|#,##0"/>
</node>
<node TEXT="groovyConsole_009.png" ID="ID_1628851653" LINK="resources/groovyConsole_009.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="10.334" OBJECT="org.freeplane.features.format.FormattedNumber|10334|#,##0"/>
</node>
<node TEXT="saveInNode.svg" ID="ID_1247712984" LINK="resources/saveInNode.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 21:48" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:48-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 22:26" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:26-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.512" OBJECT="org.freeplane.features.format.FormattedNumber|2512|#,##0"/>
</node>
<node TEXT="saveInNodeAs.svg" ID="ID_903040677" LINK="resources/saveInNodeAs.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 21:53" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:53-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="30-06-23 22:26" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:26-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|datetime"/>
<attribute NAME="fileSize" VALUE="4.467" OBJECT="org.freeplane.features.format.FormattedNumber|4467|#,##0"/>
</node>
</node>
<node TEXT=".gitignore" ID="ID_632522946" LINK=".gitignore">
<icon BUILTIN="pencil"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .gradle
    </p>
    <p>
      **/build/
    </p>
    <p>
      !src/**/build/
    </p>
    <p>
      
    </p>
    <p>
      # Ignore Gradle GUI config
    </p>
    <p>
      gradle-app.setting
    </p>
    <p>
      
    </p>
    <p>
      # Avoid ignoring Gradle wrapper jar file (.jar files are usually ignored)
    </p>
    <p>
      !gradle-wrapper.jar
    </p>
    <p>
      
    </p>
    <p>
      # Cache of project
    </p>
    <p>
      .gradletasknamecache
    </p>
    <p>
      
    </p>
    <p>
      # # Work around https://youtrack.jetbrains.com/issue/IDEA-116898
    </p>
    <p>
      # gradle/wrapper/gradle-wrapper.properties
    </p>
    <p>
      
    </p>
    <p>
      # Addon maps
    </p>
    <p>
      *.addon.mm
    </p>
    <p>
      *.mm.bak
    </p>
    <p>
      # version.properties
    </p>
    <p>
      
    </p>
    <p>
      # ignore .jar files
    </p>
    <p>
      *.jar
    </p>
    <p>
      
    </p>
    <p>
      # ignore some folders
    </p>
    <p>
      ignoredByGitHub/
    </p>
    <p>
      delete/
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .gitignore
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="04-05-23 17:53" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T17:53-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 15:47" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T15:47-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="487" OBJECT="org.freeplane.features.format.FormattedNumber|487|#,##0"/>
</node>
<node TEXT="README.MD" ID="ID_181733889" LINK="README.MD">
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="08-05-23 18:18" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-08T18:18-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.953" OBJECT="org.freeplane.features.format.FormattedNumber|4953|#,##0"/>
<attribute NAME="projectCode" VALUE="README.MD"/>
<node TEXT="README-groovyConsole-MDH.mm" ID="ID_1716777370" LINK="README-groovyConsole-MDH.mm">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:07" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:07-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="22.728" OBJECT="org.freeplane.features.format.FormattedNumber|22728|#,##0"/>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_565384637">
<node TEXT="actualizar ReadMe" STYLE_REF="pendingTask" ID="ID_299518433">
<node TEXT="nuevas fumcionalidades" FOLDED="true" ID="ID_750518914">
<node TEXT="ver cambios en versiones" ID="ID_1999194206"/>
</node>
<node TEXT="link a último release" ID="ID_569264650"/>
<node TEXT="link a release de myTempScripts" ID="ID_754310697"/>
<node TEXT="imágenes de funcionalidades" FOLDED="true" ID="ID_180565491">
<node TEXT="load con append" ID="ID_1373590109"/>
<node TEXT="tempScripts" ID="ID_1534576302"/>
</node>
<node TEXT="Agregar imágenes" ID="ID_1962469864"/>
<node TEXT="agregar descripción de nuevos comandos" ID="ID_1732392611"/>
<node TEXT="agregar historial de cambios" ID="ID_734610760"/>
</node>
</node>
</node>
</node>
<node TEXT="LICENSE.md" ID="ID_1060696446" LINK="LICENSE.md"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MIT License
    </p>
    <p>
      
    </p>
    <p>
      Copyright (c) 2022 Eduardo Frohlich.
    </p>
    <p>
      
    </p>
    <p>
      Permission is hereby granted, free of charge, to any person obtaining a copy
    </p>
    <p>
      of this software and associated documentation files (the &quot;Software&quot;), to deal
    </p>
    <p>
      in the Software without restriction, including without limitation the rights
    </p>
    <p>
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    </p>
    <p>
      copies of the Software, and to permit persons to whom the Software is
    </p>
    <p>
      furnished to do so, subject to the following conditions:
    </p>
    <p>
      
    </p>
    <p>
      The above copyright notice and this permission notice shall be included in all
    </p>
    <p>
      copies or substantial portions of the Software.
    </p>
    <p>
      
    </p>
    <p>
      THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    </p>
    <p>
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    </p>
    <p>
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    </p>
    <p>
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    </p>
    <p>
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    </p>
    <p>
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    </p>
    <p>
      SOFTWARE.
    </p>
  </body>
</html></richcontent>
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="29-06-23 17:37" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-29T17:37-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.093" OBJECT="org.freeplane.features.format.FormattedNumber|1093|#,##0"/>
</node>
<node TEXT="GroovyConsole project.mm" POSITION="bottom_or_right" ID="ID_308539569" LINK="GroovyConsole%20project.mm">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 21:37" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:37-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:07" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:07-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 18:41" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T18:41-0400|datetime"/>
<attribute NAME="fileSize" VALUE="95.338" OBJECT="org.freeplane.features.format.FormattedNumber|95338|#,##0"/>
</node>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1776199503">
<attribute NAME="log_MDI" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2|#0.####"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&#xa0;&#xa0;&#xa0;2023-08-03&#xa0;&#xa0;16:08:09
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
      &#xa0;2 new file(s) imported as node(s)&#xa0;
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
      24 folders didn't need to be moved&#xa0;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      0.2 seconds
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
<node TEXT="resources" ID="ID_1399560171" LINK="#ID_1818290900"/>
</node>
<node TEXT="versión instalada en AddOns" STYLE_REF="locked" ID="ID_1056009098"/>
<node TEXT="Tareas varias" STYLE_REF="Organizador" ID="ID_1570336119">
<attribute NAME="projectCode" VALUE="Tareas"/>
<node TEXT="otras idea pendientes&#xa;Asignar" ID="ID_214809729">
<node TEXT="botón para recargar script desde file" STYLE_REF="completedTask" ID="ID_1916463815"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      esto para que si se edita el script en intelliJ, se pueda probar en groovyConsole
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="boton para ejecutar el script desde freeplane" STYLE_REF="pendingTask" ID="ID_655464826"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      para casos donde no se ejecute bien desde la groovyConsole.
    </p>
    <p>
      O cuando quiera que sea más rápido.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="otro menu command para llamar a groovyConsole full permisos" STYLE_REF="completedTask" ID="ID_450354548"/>
<node TEXT="rehabilitar comando para editar script asociado a menú" STYLE_REF="pendingTask" ID="ID_1347348011"/>
<node TEXT="agregar formato a editor" STYLE_REF="pendingTask" ID="ID_162321591">
<node TEXT="comandos groovy" STYLE_REF="pendingTask" ID="ID_1777352210"/>
<node TEXT="palabras Freeplane API" STYLE_REF="pendingTask" ID="ID_607771690"/>
</node>
<node TEXT="Agregar botón que guarde en archivo .groovy temporal" STYLE_REF="nextTask" ID="ID_66179713">
<node TEXT="cuyo path esté definido en las preferencias de Freeplane" STYLE_REF="pendingTask" ID="ID_350975537"/>
<node TEXT="que facilite tener un único proyecto en IntelliJ con librerias precargadas, etc para usar con scripts temp" ID="ID_1671157507"/>
</node>
</node>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_1680075747">
<node TEXT="ver tema &quot;isGroovyNode(node)&quot;, para que no tener problemas en mis mapas si desaparece WSE" STYLE_REF="discardedTask" ID="ID_100568344"/>
<node TEXT="revisar que funcionalidades wikdshell extension voy a importar y cuales no" STYLE_REF="pendingTask" ID="ID_55180733"/>
</node>
<node TEXT="gC Future B" STYLE_REF="milestone" ID="ID_994209354">
<node TEXT="revisar pendientes en wikdshell extension para ver cuales traer" STYLE_REF="pendingTask" ID="ID_1916577991"/>
<node TEXT="myTempScripts" ID="ID_1209729951">
<attribute NAME="projectCode" VALUE="my.Temp.Scripts"/>
<node TEXT="es otro add-on?" STYLE_REF="pendingTask" ID="ID_182748821"/>
<node TEXT="definir fase" STYLE_REF="pendingTask" ID="ID_1903437549"/>
</node>
<node TEXT="actualizar a listado de AddOns en FP wiki" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1800996529">
<node TEXT="agregar a listado de AddOns en FP wiki" ID="ID_1102237309"/>
<node TEXT="usar addOn documentation de devTools" ID="ID_740052352"/>
</node>
</node>
<node TEXT="gC Future C" STYLE_REF="milestone" ID="ID_718955669">
<node TEXT="actualizar wiki" STYLE_REF="maybeTask" ID="ID_303128084">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="prueba" STYLE_REF="locked" FOLDED="true" ID="ID_749156692" VGAP_QUANTITY="2 px">
<node TEXT="prueba" ID="ID_1223081684" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovyConsole/groovyConsole/scripts/openWithGroovyConsole.groovy">
<attribute NAME="script1" VALUE="node.text = node.text.reverse()"/>
<attribute NAME="lastModifiedTime" VALUE="18-04-22 13:23" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-18T13:23-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="24-04-22 21:59" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-24T21:59-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 22:49" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T22:49-0400|datetime"/>
<attribute NAME="fileSize" VALUE="96" OBJECT="org.freeplane.features.format.FormattedNumber|96|#,##0"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def a=5
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba" ID="ID_507966943">
<attribute NAME="script1" VALUE="node.text = node.text.reverse()"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba" ID="ID_1729615805">
<attribute NAME="script1" VALUE="node.text = node.text.reverse()"/>
</node>
<node TEXT="prueba" ID="ID_1256061346"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def a=5
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba" ID="ID_1523202208"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def a=5
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba" ID="ID_311000715" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovy_console_2/groovyConsole/scripts/openWithGroovyConsole.groovy"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="prueba" ID="ID_906227552" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovy_console_2/groovyConsole/scripts/openWithGroovyConsole.groovy"/>
<node TEXT="prueba console simple" ID="ID_13784594">
<attribute NAME="script1" VALUE="import org.freeplane.plugin.script.FreeplaneScriptBaseClass&#xd;&#xa;import groovy.console.ui.Console //groovy.ui.Console&#xd;&#xa;import org.freeplane.plugin.script.GroovyScript&#xd;&#xa;&#xd;&#xa;def n = node&#xd;&#xa;&#xd;&#xa;Console console = new Console(null, getBinding(),GroovyScript.createCompilerConfiguration())&#xd;&#xa;console.setVariable(&apos;map&apos;, n.map)&#xd;&#xa;console.setVariable(&apos;root&apos;, n.map.root)&#xd;&#xa;def updateVars = {console.shell = updateNode(console.shell)}&#xd;&#xa;console.setBeforeExecution( updateVars )&#xd;&#xa;console.setVariable(&apos;console&apos;, console)&#xd;&#xa;&#xd;&#xa;console.run()&#xd;&#xa;&#xd;&#xa;// ------methods----&#xd;&#xa;&#xd;&#xa;GroovyShell updateNode(shell){&#xd;&#xa;    def variables = shell.context.variables&#xd;&#xa;    def selected = variables.c.selected&#xd;&#xa;    if(selected != null &amp;&amp; variables.node != selected) {&#xd;&#xa;        Binding binding = new Binding(new HashMap(variables))&#xd;&#xa;        binding.variables.node = selected&#xd;&#xa;        binding.variables.map  = selected.map&#xd;&#xa;        binding.variables.root = selected.map.root&#xd;&#xa;        def newConfig = GroovyScript.createCompilerConfiguration()&#xd;&#xa;        GroovyShell updatedShell = new GroovyShell(null, binding, newConfig)&#xd;&#xa;        return updatedShell&#xd;&#xa;    }&#xd;&#xa;    else&#xd;&#xa;        return shell&#xd;&#xa;}"/>
<node TEXT="books" ID="ID_625821156" LINK="menuitem:_IconAction.emoji-1F4DA"/>
<node TEXT="counterclockwise arrows button" ID="ID_718518942" LINK="menuitem:_IconAction.emoji-1F504"/>
</node>
<node TEXT="prueba con wse" ID="ID_260761461">
<node TEXT="printer" ID="ID_379622935" LINK="menuitem:_IconAction.emoji-1F5A8"/>
</node>
<node TEXT="prueba console simple" ID="ID_1517080217">
<attribute NAME="script1" VALUE="import org.freeplane.plugin.script.FreeplaneScriptBaseClass&#xd;&#xa;import groovy.console.ui.Console //groovy.ui.Console&#xd;&#xa;&#xd;&#xa;def n = node&#xd;&#xa;&#xd;&#xa;//Console console = new Console(getBinding())&#xd;&#xa;Console console = new Console()&#xd;&#xa;//console.setVariable(&apos;map&apos;, n.map)&#xd;&#xa;//console.setVariable(&apos;root&apos;, n.map.root)&#xd;&#xa;//def updateVars = {console.shell = updateNode(console.shell,console.config)}&#xd;&#xa;//console.setBeforeExecution( updateVars )&#xd;&#xa;console.setVariable(&apos;console&apos;, console)&#xd;&#xa;&#xd;&#xa;console.run()&#xd;&#xa;&#xd;&#xa;// ------methods----&#xd;&#xa;&#xd;&#xa;GroovyShell updateNode(shell,config){&#xd;&#xa;    def variables = shell.context.variables&#xd;&#xa;    def selected = variables.c.selected&#xd;&#xa;    if(selected != null &amp;&amp; variables.node != selected) {&#xd;&#xa;        Binding binding = new Binding(new HashMap(variables))&#xd;&#xa;        binding.variables.node = selected&#xd;&#xa;        binding.variables.map  = selected.map&#xd;&#xa;        binding.variables.root = selected.map.root&#xd;&#xa;        GroovyShell updatedShell = new GroovyShell(null, binding, config)&#xd;&#xa;        return updatedShell&#xd;&#xa;    }&#xd;&#xa;    else&#xd;&#xa;        return shell&#xd;&#xa;}"/>
<attribute NAME="script2" VALUE="println &apos;hola&apos;&#xd;&#xa;"/>
</node>
<node TEXT="groovy.console.ui.Console" FOLDED="true" ID="ID_638918291">
<node TEXT="r" ID="ID_247641866"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      DEFAULT_SCRIPT_NAME_START=ConsoleScript&nbsp;
    </p>
    <p>
      &nbsp;prefs=User Preference Node: /groovy/console/ui&nbsp;
    </p>
    <p>
      &nbsp;captureStdOut=true&nbsp;
    </p>
    <p>
      &nbsp;captureStdErr=true&nbsp;
    </p>
    <p>
      &nbsp;consoleControllers=[groovy.console.ui.Console@288bc693, FreeplaneConsole@9efbeb4, groovy.console.ui.Console@61a47ab7, FreeplaneConsole@5b7efb5, groovy.console.ui.Console@73fe0ece, FreeplaneConsole@5c8314c1, FreeplaneConsole@64f0ecb2, FreeplaneConsole@74973028, FreeplaneConsole@5aa85b77, FreeplaneConsole@1e4979ff, FreeplaneConsole@7d3f93f8, FreeplaneConsole@3064ea07, FreeplaneConsole@288f6c9f, FreeplaneConsole@7d5c6ef0, FreeplaneConsole@7cfd92f0, groovy.console.ui.Console@a141878, groovy.console.ui.Console@7e5fad3a, groovy.console.ui.Console@639e340c, groovy.console.ui.Console@1fa4fb53, groovy.console.ui.Console@55b37634]&nbsp;
    </p>
    <p>
      &nbsp;smartHighlighter=true&nbsp;
    </p>
    <p>
      &nbsp;fullStackTraces=false&nbsp;
    </p>
    <p>
      &nbsp;fullStackTracesAction=null&nbsp;
    </p>
    <p>
      &nbsp;showScriptInOutput=false&nbsp;
    </p>
    <p>
      &nbsp;showScriptInOutputAction=null&nbsp;
    </p>
    <p>
      &nbsp;visualizeScriptResults=true&nbsp;
    </p>
    <p>
      &nbsp;visualizeScriptResultsAction=null&nbsp;
    </p>
    <p>
      &nbsp;showToolbar=true&nbsp;
    </p>
    <p>
      &nbsp;toolbar=null&nbsp;
    </p>
    <p>
      &nbsp;showToolbarAction=null&nbsp;
    </p>
    <p>
      &nbsp;detachedOutput=false&nbsp;
    </p>
    <p>
      &nbsp;detachedOutputAction=null&nbsp;
    </p>
    <p>
      &nbsp;orientationVertical=true&nbsp;
    </p>
    <p>
      &nbsp;orientationVerticalAction=null&nbsp;
    </p>
    <p>
      &nbsp;showOutputWindowAction=null&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction1=null&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction2=null&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction3=null&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction4=null&nbsp;
    </p>
    <p>
      &nbsp;origDividerSize=0&nbsp;
    </p>
    <p>
      &nbsp;outputWindow=null&nbsp;
    </p>
    <p>
      &nbsp;copyFromComponent=null&nbsp;
    </p>
    <p>
      &nbsp;blank=null&nbsp;
    </p>
    <p>
      &nbsp;scrollArea=null&nbsp;
    </p>
    <p>
      &nbsp;autoClearOutput=true&nbsp;
    </p>
    <p>
      &nbsp;autoClearOutputAction=null&nbsp;
    </p>
    <p>
      &nbsp;threadInterrupt=true&nbsp;
    </p>
    <p>
      &nbsp;threadInterruptAction=null&nbsp;
    </p>
    <p>
      &nbsp;saveOnRunAction=null&nbsp;
    </p>
    <p>
      &nbsp;saveOnRun=false&nbsp;
    </p>
    <p>
      &nbsp;loopModeAction=null&nbsp;
    </p>
    <p>
      &nbsp;loopMode=false&nbsp;
    </p>
    <p>
      &nbsp;inputAreaContentHash=0&nbsp;
    </p>
    <p>
      &nbsp;useScriptClassLoaderForScriptExecution=false&nbsp;
    </p>
    <p>
      &nbsp;maxHistory=10&nbsp;
    </p>
    <p>
      &nbsp;maxOutputChars=20000&nbsp;
    </p>
    <p>
      &nbsp;outputPrintWriter=null&nbsp;
    </p>
    <p>
      &nbsp;swing=null&nbsp;
    </p>
    <p>
      &nbsp;frame=null&nbsp;
    </p>
    <p>
      &nbsp;inputEditor=null&nbsp;
    </p>
    <p>
      &nbsp;splitPane=null&nbsp;
    </p>
    <p>
      &nbsp;inputArea=null&nbsp;
    </p>
    <p>
      &nbsp;outputArea=null&nbsp;
    </p>
    <p>
      &nbsp;statusLabel=null&nbsp;
    </p>
    <p>
      &nbsp;rowNumAndColNum=null&nbsp;
    </p>
    <p>
      &nbsp;rootElement=null&nbsp;
    </p>
    <p>
      &nbsp;cursorPos=0&nbsp;
    </p>
    <p>
      &nbsp;rowNum=0&nbsp;
    </p>
    <p>
      &nbsp;colNum=0&nbsp;
    </p>
    <p>
      &nbsp;promptStyle=null&nbsp;
    </p>
    <p>
      &nbsp;commandStyle=null&nbsp;
    </p>
    <p>
      &nbsp;outputStyle=null&nbsp;
    </p>
    <p>
      &nbsp;stacktraceStyle=null&nbsp;
    </p>
    <p>
      &nbsp;hyperlinkStyle=null&nbsp;
    </p>
    <p>
      &nbsp;resultStyle=null&nbsp;
    </p>
    <p>
      &nbsp;history=[]&nbsp;
    </p>
    <p>
      &nbsp;historyIndex=1&nbsp;
    </p>
    <p>
      &nbsp;pendingRecord=groovy.console.ui.HistoryRecord@259938d3&nbsp;
    </p>
    <p>
      &nbsp;prevHistoryAction=null&nbsp;
    </p>
    <p>
      &nbsp;nextHistoryAction=null&nbsp;
    </p>
    <p>
      &nbsp;dirty=false&nbsp;
    </p>
    <p>
      &nbsp;saveAction=null&nbsp;
    </p>
    <p>
      &nbsp;textSelectionStart=0&nbsp;
    </p>
    <p>
      &nbsp;textSelectionEnd=0&nbsp;
    </p>
    <p>
      &nbsp;scriptFile=null&nbsp;
    </p>
    <p>
      &nbsp;currentFileChooserDir=.&nbsp;
    </p>
    <p>
      &nbsp;currentClasspathJarDir=.&nbsp;
    </p>
    <p>
      &nbsp;currentClasspathDir=.&nbsp;
    </p>
    <p>
      &nbsp;baseConfig=org.codehaus.groovy.control.CompilerConfiguration@634b9927&nbsp;
    </p>
    <p>
      &nbsp;config=org.codehaus.groovy.control.CompilerConfiguration@501b3258&nbsp;
    </p>
    <p>
      &nbsp;shell=groovy.lang.GroovyShell@1ed7ecb9&nbsp;
    </p>
    <p>
      &nbsp;scriptNameCounter=0&nbsp;
    </p>
    <p>
      &nbsp;systemOutInterceptor=null&nbsp;
    </p>
    <p>
      &nbsp;systemErrorInterceptor=null&nbsp;
    </p>
    <p>
      &nbsp;runThread=null&nbsp;
    </p>
    <p>
      &nbsp;beforeExecution=null&nbsp;
    </p>
    <p>
      &nbsp;afterExecution=null&nbsp;
    </p>
    <p>
      &nbsp;ICON_PATH=bundle://8:5/groovy/console/ui/ConsoleIcon.png&nbsp;
    </p>
    <p>
      &nbsp;NODE_ICON_PATH=bundle://8:5/groovy/console/ui/icons/bullet_green.png&nbsp;
    </p>
    <p>
      &nbsp;groovyFileFilter=groovy.console.ui.GroovyFileFilter@1e277fe0&nbsp;
    </p>
    <p>
      &nbsp;scriptRunning=false&nbsp;
    </p>
    <p>
      &nbsp;stackOverFlowError=false&nbsp;
    </p>
    <p>
      &nbsp;interruptAction=null&nbsp;
    </p>
    <p>
      &nbsp;selectWordAction=null&nbsp;
    </p>
    <p>
      &nbsp;selectPreviousWordAction=null&nbsp;
    </p>
    <p>
      &nbsp;consolePreferences=null&nbsp;
    </p>
    <p>
      &nbsp;frameConsoleDelegates={rootContainerDelegate=groovy.console.ui.Console$__clinit__closure29@65ca4de3, menuBarDelegate=groovy.console.ui.Console$__clinit__closure30@5f8b1347}&nbsp;
    </p>
    <p>
      &nbsp;class=class groovy.console.ui.Console&nbsp;
    </p>
    <p>
      &nbsp;consoleId=1437824564&nbsp;
    </p>
    <p>
      &nbsp;lastResult=null&nbsp;
    </p>
    <p>
      &nbsp;windows=true&nbsp;
    </p>
    <p>
      &nbsp;osName=windows 10
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      antes de aparecer
    </p>
  </body>
</html></richcontent>
<node TEXT="toolbar" ID="ID_1474301762"/>
<node TEXT="swing" ID="ID_1607530940"/>
<node TEXT="frame" ID="ID_503982766"/>
<node TEXT="beforeExecution" ID="ID_1880109329">
<node TEXT="closure" ID="ID_1542051253"/>
</node>
<node TEXT="shell" ID="ID_1204353514"/>
<node TEXT="config" ID="ID_1279163949"/>
<node TEXT="baseConfig" ID="ID_235200661"/>
<node TEXT="consolePreferences" ID="ID_1387074772"/>
<node TEXT="frameConsoleDelegates" ID="ID_1016313635"/>
<node TEXT="menuBarDelegate" ID="ID_389972245"/>
<node TEXT="inputEditor" ID="ID_1779023384"/>
<node TEXT="splitPane=null" ID="ID_586612487">
<node TEXT="inputArea=null" ID="ID_506465512"/>
<node TEXT="outputArea=null" ID="ID_810920230"/>
</node>
</node>
<node TEXT="r" ID="ID_1049832233"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      DEFAULT_SCRIPT_NAME_START=ConsoleScript&nbsp;
    </p>
    <p>
      &nbsp;prefs=User Preference Node: /groovy/console/ui&nbsp;
    </p>
    <p>
      &nbsp;captureStdOut=true&nbsp;
    </p>
    <p>
      &nbsp;captureStdErr=true&nbsp;
    </p>
    <p>
      &nbsp;consoleControllers=[groovy.console.ui.Console@288bc693, FreeplaneConsole@9efbeb4, groovy.console.ui.Console@61a47ab7, FreeplaneConsole@5b7efb5, groovy.console.ui.Console@73fe0ece, FreeplaneConsole@5c8314c1, FreeplaneConsole@64f0ecb2, FreeplaneConsole@74973028, FreeplaneConsole@5aa85b77, FreeplaneConsole@1e4979ff, FreeplaneConsole@7d3f93f8, FreeplaneConsole@3064ea07, FreeplaneConsole@288f6c9f, FreeplaneConsole@7d5c6ef0, FreeplaneConsole@7cfd92f0, groovy.console.ui.Console@a141878, groovy.console.ui.Console@7e5fad3a, groovy.console.ui.Console@639e340c, groovy.console.ui.Console@1fa4fb53, groovy.console.ui.Console@55b37634, groovy.console.ui.Console@25768488]&nbsp;
    </p>
    <p>
      &nbsp;smartHighlighter=true&nbsp;
    </p>
    <p>
      &nbsp;fullStackTraces=false&nbsp;
    </p>
    <p>
      &nbsp;fullStackTracesAction=groovy.swing.impl.DefaultAction@66bf4270&nbsp;
    </p>
    <p>
      &nbsp;showScriptInOutput=false&nbsp;
    </p>
    <p>
      &nbsp;showScriptInOutputAction=null&nbsp;
    </p>
    <p>
      &nbsp;visualizeScriptResults=true&nbsp;
    </p>
    <p>
      &nbsp;visualizeScriptResultsAction=null&nbsp;
    </p>
    <p>
      &nbsp;showToolbar=true&nbsp;
    </p>
    <p>
      &nbsp;toolbar=javax.swing.JToolBar[,0,0,1366x25,layout=javax.swing.JToolBar$DefaultToolBarLayout,alignmentX=0.0,alignmentY=0.0,border=com.sun.java.swing.plaf.windows.WindowsBorders$ToolBarBorder@23dc45bb,flags=328,maximumSize=,minimumSize=,preferredSize=,floatable=true,margin=,orientation=HORIZONTAL,paintBorder=true]&nbsp;
    </p>
    <p>
      &nbsp;showToolbarAction=groovy.swing.impl.DefaultAction@5649ddff&nbsp;
    </p>
    <p>
      &nbsp;detachedOutput=false&nbsp;
    </p>
    <p>
      &nbsp;detachedOutputAction=groovy.swing.impl.DefaultAction@56ac40d6&nbsp;
    </p>
    <p>
      &nbsp;orientationVertical=true&nbsp;
    </p>
    <p>
      &nbsp;orientationVerticalAction=null&nbsp;
    </p>
    <p>
      &nbsp;showOutputWindowAction=groovy.swing.impl.DefaultAction@5272e528&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction1=groovy.swing.impl.DefaultAction@22b805d2&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction2=groovy.swing.impl.DefaultAction@7aeae2f5&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction3=groovy.swing.impl.DefaultAction@2bd68bfb&nbsp;
    </p>
    <p>
      &nbsp;hideOutputWindowAction4=groovy.swing.impl.DefaultAction@6ec8700c&nbsp;
    </p>
    <p>
      &nbsp;origDividerSize=-1&nbsp;
    </p>
    <p>
      &nbsp;outputWindow=javax.swing.JFrame[frame0,0,0,0x0,invalid,hidden,layout=java.awt.BorderLayout,title=,resizable,normal,defaultCloseOperation=HIDE_ON_CLOSE,rootPane=javax.swing.JRootPane[,0,0,0x0,invalid,layout=javax.swing.JRootPane$RootLayout,alignmentX=0.0,alignmentY=0.0,border=,flags=16777673,maximumSize=,minimumSize=,preferredSize=],rootPaneCheckingEnabled=true]&nbsp;
    </p>
    <p>
      &nbsp;copyFromComponent=null&nbsp;
    </p>
    <p>
      &nbsp;blank=javax.swing.Box$Filler[,0,0,0x0,invalid,alignmentX=0.0,alignmentY=0.0,border=,flags=0,maximumSize=java.awt.Dimension[width=32767,height=32767],minimumSize=java.awt.Dimension[width=0,height=0],preferredSize=java.awt.Dimension[width=0,height=0]]&nbsp;
    </p>
    <p>
      &nbsp;scrollArea=javax.swing.JScrollPane[,1,328,1364x318,layout=javax.swing.ScrollPaneLayout$UIResource,alignmentX=0.0,alignmentY=0.0,border=javax.swing.border.EmptyBorder@19a5fe21,flags=328,maximumSize=,minimumSize=,preferredSize=,columnHeader=,horizontalScrollBar=javax.swing.JScrollPane$ScrollBar[,0,0,0x0,hidden,layout=com.sun.java.swing.plaf.windows.WindowsScrollBarUI,alignmentX=0.0,alignmentY=0.0,border=,flags=4194632,maximumSize=,minimumSize=,preferredSize=,blockIncrement=10,orientation=HORIZONTAL,unitIncrement=1],horizontalScrollBarPolicy=HORIZONTAL_SCROLLBAR_AS_NEEDED,lowerLeft=,lowerRight=,rowHeader=,upperLeft=,upperRight=,verticalScrollBar=javax.swing.JScrollPane$ScrollBar[,0,0,0x0,hidden,layout=com.sun.java.swing.plaf.windows.WindowsScrollBarUI,alignmentX=0.0,alignmentY=0.0,border=,flags=4194632,maximumSize=,minimumSize=,preferredSize=,blockIncrement=10,orientation=VERTICAL,unitIncrement=1],verticalScrollBarPolicy=VERTICAL_SCROLLBAR_AS_NEEDED,viewport=javax.swing.JViewport[,0,0,1364x318,layout=javax.swing.ViewportLayout,alignmentX=0.0,alignmentY=0.0,border=,flags=8388616,maximumSize=,minimumSize=,preferredSize=,isViewSizeSet=true,lastPaintPosition=java.awt.Point[x=0,y=0],scrollUnderway=false],viewportBorder=]&nbsp;
    </p>
    <p>
      &nbsp;autoClearOutput=true&nbsp;
    </p>
    <p>
      &nbsp;autoClearOutputAction=groovy.swing.impl.DefaultAction@1ba13205&nbsp;
    </p>
    <p>
      &nbsp;threadInterrupt=true&nbsp;
    </p>
    <p>
      &nbsp;threadInterruptAction=groovy.swing.impl.DefaultAction@39902f4e&nbsp;
    </p>
    <p>
      &nbsp;saveOnRunAction=groovy.swing.impl.DefaultAction@7f5e476b&nbsp;
    </p>
    <p>
      &nbsp;saveOnRun=false&nbsp;
    </p>
    <p>
      &nbsp;loopModeAction=null&nbsp;
    </p>
    <p>
      &nbsp;loopMode=false&nbsp;
    </p>
    <p>
      &nbsp;inputAreaContentHash=0&nbsp;
    </p>
    <p>
      &nbsp;useScriptClassLoaderForScriptExecution=false&nbsp;
    </p>
    <p>
      &nbsp;maxHistory=10&nbsp;
    </p>
    <p>
      &nbsp;maxOutputChars=20000&nbsp;
    </p>
    <p>
      &nbsp;outputPrintWriter=null&nbsp;
    </p>
    <p>
      &nbsp;swing=groovy.swing.SwingBuilder@2402da4f&nbsp;
    </p>
    <p>
      &nbsp;frame=javax.swing.JFrame[frame1,156,156,1382x754,invalid,layout=java.awt.BorderLayout,title=GroovyConsole,resizable,normal,defaultCloseOperation=DO_NOTHING_ON_CLOSE,rootPane=javax.swing.JRootPane[,8,31,1366x715,invalid,layout=javax.swing.JRootPane$RootLayout,alignmentX=0.0,alignmentY=0.0,border=,flags=16777673,maximumSize=,minimumSize=,preferredSize=],rootPaneCheckingEnabled=true]&nbsp;
    </p>
    <p>
      &nbsp;inputEditor=groovy.console.ui.ConsoleTextEditor[,1,1,1364x322,layout=javax.swing.ScrollPaneLayout$UIResource,alignmentX=0.0,alignmentY=0.0,border=javax.swing.border.EmptyBorder@3621f5d0,flags=328,maximumSize=,minimumSize=,preferredSize=java.awt.Dimension[width=1328,height=322],columnHeader=,horizontalScrollBar=javax.swing.JScrollPane$ScrollBar[,0,0,0x0,hidden,layout=com.sun.java.swing.plaf.windows.WindowsScrollBarUI,alignmentX=0.0,alignmentY=0.0,border=,flags=4194632,maximumSize=,minimumSize=,preferredSize=,blockIncrement=10,orientation=HORIZONTAL,unitIncrement=1],horizontalScrollBarPolicy=HORIZONTAL_SCROLLBAR_AS_NEEDED,lowerLeft=,lowerRight=,rowHeader=,upperLeft=,upperRight=,verticalScrollBar=javax.swing.JScrollPane$ScrollBar[,0,0,0x0,hidden,layout=com.sun.java.swing.plaf.windows.WindowsScrollBarUI,alignmentX=0.0,alignmentY=0.0,border=,flags=4194632,maximumSize=,minimumSize=,preferredSize=,blockIncrement=10,orientation=VERTICAL,unitIncrement=10],verticalScrollBarPolicy=VERTICAL_SCROLLBAR_AS_NEEDED,viewport=javax.swing.JViewport[,0,0,1364x322,layout=javax.swing.ViewportLayout,alignmentX=0.0,alignmentY=0.0,border=,flags=8388616,maximumSize=,minimumSize=,preferredSize=,isViewSizeSet=true,lastPaintPosition=java.awt.Point[x=0,y=0],scrollUnderway=false],viewportBorder=]&nbsp;
    </p>
    <p>
      &nbsp;splitPane=javax.swing.JSplitPane[,0,25,1366x647,invalid,layout=javax.swing.plaf.basic.BasicSplitPaneUI$BasicHorizontalLayoutManager,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.basic.BasicBorders$SplitPaneBorder@ef34605,flags=201326920,maximumSize=,minimumSize=,preferredSize=,continuousLayout=false,dividerSize=5,lastDividerLocation=-1,oneTouchExpandable=false,orientation=VERTICAL_SPLIT]&nbsp;
    </p>
    <p>
      &nbsp;inputArea=groovy.console.ui.ConsoleTextEditor$1[inputArea,36,0,1328x322,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.border.EmptyBorder@6e677da0,flags=33554856,maximumSize=,minimumSize=,preferredSize=,caretColor=javax.swing.plaf.ColorUIResource[r=0,g=0,b=0],disabledTextColor=javax.swing.plaf.ColorUIResource[r=109,g=109,b=109],editable=true,margin=javax.swing.plaf.InsetsUIResource[top=3,left=3,bottom=3,right=3],selectedTextColor=javax.swing.plaf.ColorUIResource[r=255,g=255,b=255],selectionColor=javax.swing.plaf.ColorUIResource[r=0,g=120,b=215],kit=javax.swing.text.StyledEditorKit@4b57cc5c,typeHandlers=]&nbsp;
    </p>
    <p>
      &nbsp;outputArea=javax.swing.JTextPane[outputArea,0,0,1364x318,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.border.EmptyBorder@1949a4e0,flags=296,maximumSize=,minimumSize=,preferredSize=java.awt.Dimension[width=1364,height=318],caretColor=javax.swing.plaf.ColorUIResource[r=0,g=0,b=0],disabledTextColor=javax.swing.plaf.ColorUIResource[r=109,g=109,b=109],editable=false,margin=javax.swing.plaf.InsetsUIResource[top=3,left=3,bottom=3,right=3],selectedTextColor=javax.swing.plaf.ColorUIResource[r=255,g=255,b=255],selectionColor=javax.swing.plaf.ColorUIResource[r=0,g=120,b=215],kit=javax.swing.text.html.HTMLEditorKit@31a31c97,typeHandlers={text/html=javax.swing.text.html.HTMLEditorKit@31a31c97}]&nbsp;
    </p>
    <p>
      &nbsp;statusLabel=javax.swing.JLabel[,3,3,1334x15,alignmentX=0.0,alignmentY=0.0,border=,flags=8388608,maximumSize=,minimumSize=,preferredSize=,defaultIcon=,disabledIcon=,horizontalAlignment=LEADING,horizontalTextPosition=TRAILING,iconTextGap=4,labelFor=,text=Welcome to Groovy 4.0.1.,verticalAlignment=CENTER,verticalTextPosition=CENTER]&nbsp;
    </p>
    <p>
      &nbsp;rowNumAndColNum=javax.swing.JLabel[,1345,3,18x15,alignmentX=0.0,alignmentY=0.0,border=,flags=8388608,maximumSize=,minimumSize=,preferredSize=,defaultIcon=,disabledIcon=,horizontalAlignment=LEADING,horizontalTextPosition=TRAILING,iconTextGap=4,labelFor=,text=1:1,verticalAlignment=CENTER,verticalTextPosition=CENTER]&nbsp;
    </p>
    <p>
      &nbsp;rootElement=BranchElement(section) 0,1
    </p>
    <p>
      &nbsp;
    </p>
    <p>
      &nbsp;cursorPos=0&nbsp;
    </p>
    <p>
      &nbsp;rowNum=0&nbsp;
    </p>
    <p>
      &nbsp;colNum=0&nbsp;
    </p>
    <p>
      &nbsp;promptStyle=NamedStyle:prompt {name=prompt,resolver=AttributeSet,color=#008000,}&nbsp;
    </p>
    <p>
      &nbsp;commandStyle=NamedStyle:command {name=command,resolver=AttributeSet,color=#0000ff,}&nbsp;
    </p>
    <p>
      &nbsp;outputStyle=NamedStyle:output {name=output,resolver=AttributeSet,}&nbsp;
    </p>
    <p>
      &nbsp;stacktraceStyle=NamedStyle:stacktrace {name=stacktrace,resolver=AttributeSet,color=#b20000,}&nbsp;
    </p>
    <p>
      &nbsp;hyperlinkStyle=NamedStyle:hyperlink {name=hyperlink,resolver=AttributeSet,color=#0000ff,text-decoration=underline,}&nbsp;
    </p>
    <p>
      &nbsp;resultStyle=NamedStyle:result {name=result,resolver=AttributeSet,color=#0000ff,background-color=#ffff00,}&nbsp;
    </p>
    <p>
      &nbsp;history=[]&nbsp;
    </p>
    <p>
      &nbsp;historyIndex=1&nbsp;
    </p>
    <p>
      &nbsp;pendingRecord=groovy.console.ui.HistoryRecord@44a7d56c&nbsp;
    </p>
    <p>
      &nbsp;prevHistoryAction=groovy.swing.impl.DefaultAction@401b1f53&nbsp;
    </p>
    <p>
      &nbsp;nextHistoryAction=groovy.swing.impl.DefaultAction@46f4234&nbsp;
    </p>
    <p>
      &nbsp;dirty=false&nbsp;
    </p>
    <p>
      &nbsp;saveAction=groovy.swing.impl.DefaultAction@2026513&nbsp;
    </p>
    <p>
      &nbsp;textSelectionStart=0&nbsp;
    </p>
    <p>
      &nbsp;textSelectionEnd=0&nbsp;
    </p>
    <p>
      &nbsp;scriptFile=null&nbsp;
    </p>
    <p>
      &nbsp;currentFileChooserDir=.&nbsp;
    </p>
    <p>
      &nbsp;currentClasspathJarDir=.&nbsp;
    </p>
    <p>
      &nbsp;currentClasspathDir=.&nbsp;
    </p>
    <p>
      &nbsp;baseConfig=org.codehaus.groovy.control.CompilerConfiguration@7874cc8a&nbsp;
    </p>
    <p>
      &nbsp;config=org.codehaus.groovy.control.CompilerConfiguration@608db550&nbsp;
    </p>
    <p>
      &nbsp;shell=groovy.lang.GroovyShell@1e0d3597&nbsp;
    </p>
    <p>
      &nbsp;scriptNameCounter=0&nbsp;
    </p>
    <p>
      &nbsp;systemOutInterceptor=groovy.console.ui.SystemOutputInterceptor@fb6e1b8&nbsp;
    </p>
    <p>
      &nbsp;systemErrorInterceptor=groovy.console.ui.SystemOutputInterceptor@51f87c58&nbsp;
    </p>
    <p>
      &nbsp;runThread=null&nbsp;
    </p>
    <p>
      &nbsp;beforeExecution=null&nbsp;
    </p>
    <p>
      &nbsp;afterExecution=null&nbsp;
    </p>
    <p>
      &nbsp;ICON_PATH=bundle://8:5/groovy/console/ui/ConsoleIcon.png&nbsp;
    </p>
    <p>
      &nbsp;NODE_ICON_PATH=bundle://8:5/groovy/console/ui/icons/bullet_green.png&nbsp;
    </p>
    <p>
      &nbsp;groovyFileFilter=groovy.console.ui.GroovyFileFilter@1e277fe0&nbsp;
    </p>
    <p>
      &nbsp;scriptRunning=false&nbsp;
    </p>
    <p>
      &nbsp;stackOverFlowError=false&nbsp;
    </p>
    <p>
      &nbsp;interruptAction=groovy.swing.impl.DefaultAction@5c527402&nbsp;
    </p>
    <p>
      &nbsp;selectWordAction=javax.swing.text.DefaultEditorKit$SelectWordAction@2b845392&nbsp;
    </p>
    <p>
      &nbsp;selectPreviousWordAction=javax.swing.text.DefaultEditorKit$PreviousWordAction@1307cc7b&nbsp;
    </p>
    <p>
      &nbsp;consolePreferences=null&nbsp;
    </p>
    <p>
      &nbsp;frameConsoleDelegates={rootContainerDelegate=groovy.console.ui.Console$__clinit__closure29@65ca4de3, menuBarDelegate=groovy.console.ui.Console$__clinit__closure30@5f8b1347}&nbsp;
    </p>
    <p>
      &nbsp;class=class groovy.console.ui.Console&nbsp;
    </p>
    <p>
      &nbsp;consoleId=628524168&nbsp;
    </p>
    <p>
      &nbsp;lastResult=null&nbsp;
    </p>
    <p>
      &nbsp;windows=true&nbsp;
    </p>
    <p>
      &nbsp;osName=windows 10
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      despues de aparecer
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Pendientes" STYLE_REF="tasksBucket" ID="ID_1627165533"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      =
    </p>
    <p>
      (node['tasksStyles']?:'pendingTask,nextTask').split(',').collect{st -&gt; &quot;${node.find{it.style.name == st}.size()}&nbsp;&nbsp;${st}(s)&quot;}.join('\n')
    </p>
  </body>
</html></richcontent>
<attribute NAME="tasksStyles" VALUE="nextTask,pendingTask,maybeTask"/>
<attribute NAME="WIP filter" VALUE="false"/>
<node TEXT="gC v0.0.5" ID="ID_1247161182">
<node TEXT="groovyConsole.mm" STYLE_REF="project" ID="ID_1751394414">
<node TEXT="cambiar &apos;versión Freeplane necesitada&apos; más baja" STYLE_REF="completedTask" ID="ID_1934646191"/>
</node>
</node>
<node TEXT="gC Future A" ID="ID_467926201">
<node TEXT="README.MD" STYLE_REF="project" ID="ID_1510521114">
<node ID="ID_404157918" CONTENT_ID="ID_299518433"/>
</node>
<node TEXT="Tareas" STYLE_REF="project" ID="ID_1346719946">
<node ID="ID_1486263343" CONTENT_ID="ID_100568344"/>
<node ID="ID_1354982433" CONTENT_ID="ID_55180733"/>
</node>
<node TEXT="build.gradle" STYLE_REF="project" ID="ID_44072207">
<node ID="ID_338461459" CONTENT_ID="ID_1438658355"/>
</node>
<node TEXT="scripts" STYLE_REF="project" ID="ID_347284133">
<node ID="ID_1180964626" CONTENT_ID="ID_534212207"/>
</node>
<node TEXT="lib" STYLE_REF="project" ID="ID_168820308">
<node TEXT="estilos.código.en.editor" STYLE_REF="project" ID="ID_294845810">
<node ID="ID_1074802664" CONTENT_ID="ID_1563279741"/>
<node ID="ID_1651801412" CONTENT_ID="ID_1217856581"/>
<node ID="ID_381806987" CONTENT_ID="ID_1722518463"/>
</node>
</node>
</node>
<node TEXT="gC Future B" ID="ID_501920178">
<node TEXT="Tareas" STYLE_REF="project" ID="ID_472245500">
<node ID="ID_850023409" CONTENT_ID="ID_1916577991"/>
<node TEXT="my.Temp.Scripts" STYLE_REF="project" ID="ID_373429985">
<node ID="ID_481583152" CONTENT_ID="ID_182748821"/>
<node ID="ID_1197646869" CONTENT_ID="ID_1903437549"/>
</node>
<node ID="ID_964570810" CONTENT_ID="ID_1800996529"/>
</node>
</node>
<node TEXT="gC Future C" ID="ID_1142281616">
<node TEXT="translations" STYLE_REF="project" ID="ID_524602576">
<node ID="ID_160690057" CONTENT_ID="ID_477855566"/>
<node ID="ID_1161948679" CONTENT_ID="ID_1029836271"/>
</node>
<node TEXT="Tareas" STYLE_REF="project" ID="ID_1100698049">
<node ID="ID_1096385340" CONTENT_ID="ID_303128084"/>
</node>
</node>
</node>
</node>
</node>
</map>
