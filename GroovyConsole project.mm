<map version="freeplane 1.12.15">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<bookmarks/>
<node TEXT="groovyConsole project" FOLDED="false" ID="ID_581835333" CREATED="1793739878272" MODIFIED="1793739878272" LINK="../../OneDrive/Documentos/Mochila/Freeplane/ScriptsEnComputadorYDesarrollosEdo%20-%20mochila.mm"><hook NAME="MapStyle" background="#f9f9f8ff" zoom="0.8">
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
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" mapUsesOwnSaveOptions="true" BookmarksKeys="{}" followedTemplateLocation="template:/DFGHI%20Proyecto-Groovy-Tareas-MDI-menuButton%20(vis01).mm" pruebaDiccionario="ID_311366985|:|idDictionary|-|ID_323296041|:|ToM Actions|-|" showTagCategories="false" show_icon_for_attributes="true" show_notes_in_map="false" save_modification_times="false" show_tags="UNDER_NODES" save_last_visited_node="default" show_note_icons="true" MDI_template="v0.0.13" mdhFreeMindmapPath="hhgf" save_folding="save_folding_if_map_is_changed" followedMapLastTime="1661362125221" fit_to_viewport="false" show_icons="BESIDE_NODES"/>
    <tags category_separator="::"/>

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
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
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
<node TEXT="Freeplane_groovyConsole" STYLE_REF="baseFolder" ID="ID_108058596" CREATED="1793739878276" MODIFIED="1793739878276" LINK=".">
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
<node TEXT="files" ID="ID_319055208" CREATED="1793739878281" MODIFIED="1793739878281">
<node TEXT=".git" ID="ID_188061025" CREATED="1793739878281" MODIFIED="1793741309830" LINK=".git/"/>
<node TEXT=".idea" ID="ID_1092617171" CREATED="1793739878281" MODIFIED="1793741312632" LINK=".idea/"/>
<node TEXT=".gitattributes" ID="ID_674537230" CREATED="1793739878281" MODIFIED="1793739878281" LINK=".gitattributes">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 15:52" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T15:52-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="68" OBJECT="org.freeplane.features.format.FormattedNumber|68|#,##0"/>
</node>
<node TEXT="delete" ID="ID_582073411" CREATED="1793739878285" MODIFIED="1793739878285" LINK="delete/"><richcontent TYPE="DETAILS">
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
<node TEXT="ignoredByGitHub" FOLDED="true" ID="ID_1103966821" CREATED="1793739878285" MODIFIED="1793739878285" LINK="ignoredByGitHub/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      folder with files not to be copied to Github
    </p>
  </body>
</html></richcontent>
<node TEXT="console-ui-test-1793746390093" ID="ID_120968060" CREATED="1793747080088" MODIFIED="1793747199422" LINK="ignoredByGitHub/console-ui-test-1793746390093/">
<node TEXT="Pruebas GroovyConsole.mm" ID="ID_430159009" CREATED="1793747080094" MODIFIED="1793747202042" LINK="ignoredByGitHub/console-ui-test-1793746390093/Pruebas%20GroovyConsole.mm">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 19:53" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:53-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:53" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:53-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:53" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:53-0300|datetime"/>
<attribute NAME="fileSize" VALUE="112" OBJECT="org.freeplane.features.format.FormattedNumber|112|#,##0"/>
</node>
<node TEXT="prueba-carga.groovy" ID="ID_189748827" CREATED="1793747080094" MODIFIED="1793747202042" LINK="ignoredByGitHub/console-ui-test-1793746390093/prueba-carga.groovy">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 19:56" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:56-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:56" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:56-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:56" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:56-0300|datetime"/>
<attribute NAME="fileSize" VALUE="87" OBJECT="org.freeplane.features.format.FormattedNumber|87|#,##0"/>
</node>
</node>
<node TEXT="freeplane-check" ID="ID_1902695002" CREATED="1793747080101" MODIFIED="1793747199424" LINK="ignoredByGitHub/freeplane-check/">
<node TEXT="freeplane_bin-1.13.1.zip" ID="ID_199654901" CREATED="1793747081923" MODIFIED="1793747202042" LINK="ignoredByGitHub/freeplane-check/freeplane_bin-1.13.1.zip">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:16-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:16-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:15" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:15-0300|datetime"/>
<attribute NAME="fileSize" VALUE="70.632.735" OBJECT="org.freeplane.features.format.FormattedNumber|70632735|#,##0"/>
</node>
<node TEXT="freeplane_bin-1.13.3.zip" ID="ID_259543106" CREATED="1793747081930" MODIFIED="1793747202042" LINK="ignoredByGitHub/freeplane-check/freeplane_bin-1.13.3.zip">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 19:19" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:19-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:20-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:18" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:18-0300|datetime"/>
<attribute NAME="fileSize" VALUE="71.889.782" OBJECT="org.freeplane.features.format.FormattedNumber|71889782|#,##0"/>
</node>
<node TEXT="freeplane_bin-1.13.4.zip" ID="ID_1552633040" CREATED="1793747081933" MODIFIED="1793747202042" LINK="ignoredByGitHub/freeplane-check/freeplane_bin-1.13.4.zip">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 19:07" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:07-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:08" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:08-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:06" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:06-0300|datetime"/>
<attribute NAME="fileSize" VALUE="75.216.012" OBJECT="org.freeplane.features.format.FormattedNumber|75216012|#,##0"/>
</node>
<node TEXT="freeplaneviewer-1.13.1-official.jar" ID="ID_1352089808" CREATED="1793747081936" MODIFIED="1793747202042" LINK="ignoredByGitHub/freeplane-check/freeplaneviewer-1.13.1-official.jar">
<attribute NAME="lastModifiedTime" VALUE="01-02-80 00:00" OBJECT="org.freeplane.features.format.FormattedDate|1980-02-01T00:00-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:16-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:16" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:16-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.294.992" OBJECT="org.freeplane.features.format.FormattedNumber|4294992|#,##0"/>
</node>
<node TEXT="freeplaneviewer-1.13.3-official.jar" ID="ID_904650839" CREATED="1793747081939" MODIFIED="1793747202042" LINK="ignoredByGitHub/freeplane-check/freeplaneviewer-1.13.3-official.jar">
<attribute NAME="lastModifiedTime" VALUE="01-02-80 00:00" OBJECT="org.freeplane.features.format.FormattedDate|1980-02-01T00:00-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:52" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:52-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:19" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:19-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.394.656" OBJECT="org.freeplane.features.format.FormattedNumber|4394656|#,##0"/>
</node>
<node TEXT="freeplaneviewer-official.jar" ID="ID_1116275886" CREATED="1793747081942" MODIFIED="1793747202058" LINK="ignoredByGitHub/freeplane-check/freeplaneviewer-official.jar">
<attribute NAME="lastModifiedTime" VALUE="01-02-80 00:00" OBJECT="org.freeplane.features.format.FormattedDate|1980-02-01T00:00-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 19:11" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:11-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 19:08" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T19:08-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.422.752" OBJECT="org.freeplane.features.format.FormattedNumber|4422752|#,##0"/>
</node>
<node TEXT="1.13.3" STYLE_REF="locked" POSITION="bottom_or_right" ID="ID_550920063" CREATED="1793752045136" MODIFIED="1793752074152" LINK="ignoredByGitHub/freeplane-check/1.13.3/"/>
</node>
<node TEXT="install-test-1.13.3" STYLE_REF="locked" ID="ID_404479903" CREATED="1793752047108" MODIFIED="1793752103167" LINK="ignoredByGitHub/install-test-1.13.3/"/>
</node>
<node TEXT="groovyConsole" STYLE_REF="file_folder" ID="ID_634873088" CREATED="1793739878285" MODIFIED="1793741385124" LINK="groovyConsole/">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 15:57" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T15:57-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      folder con los archivos para compilar el Add-On
    </p>
  </body>
</html></richcontent>
<node TEXT="lib" STYLE_REF="Organizador" ID="ID_1832614409" CREATED="1793739878285" MODIFIED="1793739878285">
<attribute NAME="projectCode" VALUE="lib"/>
<node TEXT="src" STYLE_REF="file_folder" ID="ID_1154616461" CREATED="1793739878285" MODIFIED="1793739878285" LINK="groovyConsole/src/">
<attribute NAME="lastModifiedTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="main" STYLE_REF="file_folder" ID="ID_233497056" CREATED="1793739878285" MODIFIED="1793739878285" LINK="groovyConsole/src/main/">
<attribute NAME="lastModifiedTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<node TEXT="groovy" STYLE_REF="file_folder" ID="ID_339086552" CREATED="1793739878285" MODIFIED="1793739878285" LINK="groovyConsole/src/main/groovy/"><richcontent TYPE="DETAILS">
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
<node TEXT="GroovyConsole.groovy" ID="ID_470123237" CREATED="1793739878287" MODIFIED="1793837140700" LINK="groovyConsole/src/main/groovy/GroovyConsole.groovy">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 17:43" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:43-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="13.113" OBJECT="org.freeplane.features.format.FormattedNumber|13113|#,##0"/>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_1196256500" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="Agregar que pinte estilos del código en el editor" ID="ID_1939736014" CREATED="1793739878287" MODIFIED="1793739878287">
<attribute NAME="projectCode" VALUE="estilos.código.en.editor"/>
<node TEXT="estilos groovy" STYLE_REF="completedTask" ID="ID_1563279741" CREATED="1793739878287" MODIFIED="1793739878287"/>
<node TEXT="estilos Freeplane" STYLE_REF="maybeTask" ID="ID_1217856581" CREATED="1793739878287" MODIFIED="1793739878287"/>
<node TEXT="estilos librerías cargadas" STYLE_REF="maybeTask" ID="ID_1722518463" CREATED="1793739878287" MODIFIED="1793739878287"/>
</node>
<node TEXT="Add &quot;reload from disk&quot; button" STYLE_REF="completedTask" ID="ID_1701629338" CREATED="1793739878287" MODIFIED="1793739878287"/>
</node>
</node>
<node TEXT="TemporaryScript.groovy" ID="ID_1462978593" CREATED="1793837069189" MODIFIED="1793837141356" LINK="groovyConsole/src/main/groovy/TemporaryScript.groovy">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 17:43" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:43-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 22:01" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T22:01-0300|datetime"/>
<attribute NAME="fileSize" VALUE="3.524" OBJECT="org.freeplane.features.format.FormattedNumber|3524|#,##0"/>
</node>
<node TEXT="TemporaryScriptCleanupWindow.groovy" ID="ID_877761131" CREATED="1793837069192" MODIFIED="1793837141356" LINK="groovyConsole/src/main/groovy/TemporaryScriptCleanupWindow.groovy">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 17:49" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:49-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="04-11-26 17:42" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:42-0300|datetime"/>
<attribute NAME="fileSize" VALUE="3.594" OBJECT="org.freeplane.features.format.FormattedNumber|3594|#,##0"/>
</node>
<node TEXT="TemporaryScriptConsole.groovy" ID="ID_1602419617" CREATED="1793837069195" MODIFIED="1793837141358" LINK="groovyConsole/src/main/groovy/TemporaryScriptConsole.groovy">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 17:43" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:43-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 22:01" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T22:01-0300|datetime"/>
<attribute NAME="fileSize" VALUE="10.962" OBJECT="org.freeplane.features.format.FormattedNumber|10962|#,##0"/>
</node>
<node TEXT="TemporaryScriptJson.groovy" ID="ID_1226437680" CREATED="1793837069198" MODIFIED="1793837141358" LINK="groovyConsole/src/main/groovy/TemporaryScriptJson.groovy">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T19:20-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="04-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T19:20-0300|datetime"/>
<attribute NAME="fileSize" VALUE="1.418" OBJECT="org.freeplane.features.format.FormattedNumber|1418|#,##0"/>
</node>
<node TEXT="TemporaryScriptStore.groovy" ID="ID_1297222785" CREATED="1793837069202" MODIFIED="1793837141358" LINK="groovyConsole/src/main/groovy/TemporaryScriptStore.groovy">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T19:20-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="04-11-26 17:42" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:42-0300|datetime"/>
<attribute NAME="fileSize" VALUE="5.652" OBJECT="org.freeplane.features.format.FormattedNumber|5652|#,##0"/>
</node>
</node>
</node>
<node TEXT="test" ID="ID_1994653939" CREATED="1793837069207" MODIFIED="1793837141358" LINK="groovyConsole/src/test/">
<node TEXT="scripts" ID="ID_345477655" CREATED="1793837069210" MODIFIED="1793837141360" LINK="groovyConsole/src/test/scripts/">
<node TEXT="TemporaryScriptChecks.groovy" ID="ID_1272092511" CREATED="1793837069213" MODIFIED="1793837141360" LINK="groovyConsole/src/test/scripts/TemporaryScriptChecks.groovy">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T19:20-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 22:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T22:03-0300|datetime"/>
<attribute NAME="fileSize" VALUE="15.338" OBJECT="org.freeplane.features.format.FormattedNumber|15338|#,##0"/>
</node>
</node>
</node>
</node>
<node TEXT="build" ID="ID_874700936" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/build/">
<node TEXT="classes" STYLE_REF="locked" ID="ID_202694924" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/build/classes/"/>
<node TEXT="tmp" STYLE_REF="locked" ID="ID_1646969472" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/build/tmp/"/>
<node TEXT="generated" STYLE_REF="locked" ID="ID_891392252" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/build/generated/"/>
<node TEXT="resources" ID="ID_82608706" CREATED="1793837069150" MODIFIED="1793837146765" LINK="groovyConsole/build/resources/">
<node TEXT="main" ID="ID_1061965514" CREATED="1793837069154" MODIFIED="1793837146773" LINK="groovyConsole/build/resources/main/">
<node TEXT="icons" ID="ID_469612133" CREATED="1793837069158" MODIFIED="1793837146773" LINK="groovyConsole/build/resources/main/icons/">
<node TEXT="groovyConsole" ID="ID_1573913078" CREATED="1793837069162" MODIFIED="1793837146773" LINK="groovyConsole/build/resources/main/icons/groovyConsole/">
<node TEXT="temporaryScript.svg" ID="ID_1151171954" CREATED="1793837069167" MODIFIED="1793837150927" LINK="groovyConsole/build/resources/main/icons/groovyConsole/temporaryScript.svg">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 23:00" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T23:00-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T19:20-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 23:00" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T23:00-0300|datetime"/>
<attribute NAME="fileSize" VALUE="459" OBJECT="org.freeplane.features.format.FormattedNumber|459|#,##0"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="temporary-cleanup-review.png" ID="ID_1486023138" CREATED="1793837069170" MODIFIED="1793837150927" LINK="groovyConsole/build/temporary-cleanup-review.png">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T19:20-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 19:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T19:20-0300|datetime"/>
<attribute NAME="creationTime" VALUE="04-11-26 17:48" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:48-0300|datetime"/>
<attribute NAME="fileSize" VALUE="10.326" OBJECT="org.freeplane.features.format.FormattedNumber|10326|#,##0"/>
</node>
</node>
<node TEXT="lib" ID="ID_402430899" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/lib/"><richcontent TYPE="DETAILS">
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
<node TEXT="groovyConsole.jar" POSITION="bottom_or_right" ID="ID_1013604347" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/lib/groovyConsole.jar">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|datetime"/>
<attribute NAME="fileSize" VALUE="21.540" OBJECT="org.freeplane.features.format.FormattedNumber|21540|#,##0"/>
</node>
</node>
</node>
<node TEXT="scripts" STYLE_REF="file_folder" ID="ID_1483533049" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/scripts/"><richcontent TYPE="DETAILS">
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
<node TEXT="openWithGroovyConsole.groovy" ID="ID_88720437" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/scripts/openWithGroovyConsole.groovy">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="96" OBJECT="org.freeplane.features.format.FormattedNumber|96|#,##0"/>
</node>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_783822739" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="Agregar comado que abra console con script en texto pero sin asociar nodo y que fuente sea opcional" STYLE_REF="pendingTask" FOLDED="true" ID="ID_534212207" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="Al parecer basta con los métodos que ya existen" ID="ID_156564394" CREATED="1793739878287" MODIFIED="1793739878287"/>
<node TEXT="para poder llamarlo desde tutorial-o-matic" ID="ID_1527048435" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="desde groovyPane" ID="ID_428599852" CREATED="1793739878287" MODIFIED="1793739878287"/>
</node>
<node TEXT="opciones:" ID="ID_1597773312" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="hacer que esta funcionalidad esté 100% en tutorial-o-matic" ID="ID_1965125311" CREATED="1793739878287" MODIFIED="1793739878287"/>
<node TEXT="hacer que esté en groovyConsole add-on y que deba estar instalado para que funcione" FOLDED="true" ID="ID_47677833" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="ToM debería habilitar botón sólo si groovyConsole está presente" ID="ID_1700396366" CREATED="1793739878287" MODIFIED="1793739878287"/>
</node>
<node TEXT="hacer que gradle cargue librería groovyConsole al construir ToM" ID="ID_769340774" CREATED="1793739878287" MODIFIED="1793739878287">
<icon BUILTIN="forward"/>
</node>
</node>
</node>
</node>
<node TEXT="openWithGroovyConsoleFull.groovy" ID="ID_1251973431" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/scripts/openWithGroovyConsoleFull.groovy">
<attribute NAME="lastModifiedTime" VALUE="28-04-23 19:33" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:33-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:33" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:33-0400|datetime"/>
<attribute NAME="fileSize" VALUE="96" OBJECT="org.freeplane.features.format.FormattedNumber|96|#,##0"/>
</node>
</node>
<node TEXT="zips" FOLDED="true" ID="ID_1327243198" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/zips/">
<node TEXT="icons" FOLDED="true" ID="ID_815705878" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/zips/icons/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir íconos propios del AddOn
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole" ID="ID_1988340672" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/zips/icons/groovyConsole/">
<node TEXT="reloadFile.svg" ID="ID_484815601" CREATED="1793739878287" MODIFIED="1793837179351" LINK="groovyConsole/zips/icons/groovyConsole/reloadFile.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 22:28" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:28-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:02" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:02-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="29-06-23 21:38" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-29T21:38-0400|datetime"/>
<attribute NAME="fileSize" VALUE="1.327" OBJECT="org.freeplane.features.format.FormattedNumber|1327|#,##0"/>
</node>
<node TEXT="saveInNode.svg" ID="ID_1702417239" CREATED="1793739878287" MODIFIED="1793837179351" LINK="groovyConsole/zips/icons/groovyConsole/saveInNode.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 22:09" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:09-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:02" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:02-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:14" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:14-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.648" OBJECT="org.freeplane.features.format.FormattedNumber|2648|#,##0"/>
</node>
<node TEXT="saveInNodeAs.svg" ID="ID_1805008099" CREATED="1793739878287" MODIFIED="1793837179358" LINK="groovyConsole/zips/icons/groovyConsole/saveInNodeAs.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 22:21" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T22:21-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:02" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:02-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:33" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:33-0400|datetime"/>
<attribute NAME="fileSize" VALUE="3.334" OBJECT="org.freeplane.features.format.FormattedNumber|3334|#,##0"/>
</node>
<node TEXT="temporaryScript.svg" ID="ID_426865783" CREATED="1793837069229" MODIFIED="1793837181744" LINK="groovyConsole/zips/icons/groovyConsole/temporaryScript.svg">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 23:00" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T23:00-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 22:40" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T22:40-0300|datetime"/>
<attribute NAME="fileSize" VALUE="459" OBJECT="org.freeplane.features.format.FormattedNumber|459|#,##0"/>
</node>
</node>
</node>
<node TEXT="doc" FOLDED="true" ID="ID_982813467" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/zips/doc/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir algún documento o mapa adicional
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole" ID="ID_1892493719" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/zips/doc/groovyConsole/"/>
</node>
<node TEXT="templates" FOLDED="true" ID="ID_1614760108" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/zips/templates/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir mapa template
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole" ID="ID_657261510" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/zips/templates/groovyConsole/"/>
</node>
</node>
<node TEXT="images" FOLDED="true" ID="ID_1489890719" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/images/">
<node TEXT="groovyConsole.svg" ID="ID_1937726588" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/images/groovyConsole.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 17:57" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T17:57-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 18:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T18:02-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.610" OBJECT="org.freeplane.features.format.FormattedNumber|2610|#,##0"/>
<node TEXT="32x32" ID="ID_1455520567" CREATED="1793739878287" MODIFIED="1793739878287"/>
</node>
<node TEXT="groovyConsole-icon.svg" ID="ID_372224366" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/images/groovyConsole-icon.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 18:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T18:13-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 17:43" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T17:43-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.608" OBJECT="org.freeplane.features.format.FormattedNumber|2608|#,##0"/>
</node>
<node TEXT="groovyConsole-screenshot-1.png" ID="ID_1339405738" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/images/groovyConsole-screenshot-1.png">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 19:13" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T19:13-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|datetime"/>
<attribute NAME="creationTime" VALUE="30-06-23 18:35" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T18:35-0400|datetime"/>
<attribute NAME="fileSize" VALUE="42.084" OBJECT="org.freeplane.features.format.FormattedNumber|42084|#,##0"/>
</node>
</node>
<node TEXT="translations" FOLDED="true" ID="ID_5583999" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/translations/">
<attribute NAME="lastModifiedTime" VALUE="18-04-22 22:00" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-18T22:00-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="18-04-22 22:00" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-18T22:00-0400|datetime"/>
<attribute NAME="fileSize" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#,##0"/>
<attribute NAME="projectCode" VALUE="translations"/>
<node TEXT="en.properties" ID="ID_653767157" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/translations/en.properties">
<attribute NAME="lastModifiedTime" VALUE="01-05-23 22:30" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:30-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.048" OBJECT="org.freeplane.features.format.FormattedNumber|1048|#,##0"/>
</node>
<node TEXT="gC Future C" STYLE_REF="milestone" ID="ID_371875959" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="traducciones" ID="ID_1153124047" CREATED="1793739878287" MODIFIED="1793739878287">
<node TEXT="alemán" STYLE_REF="maybeTask" ID="ID_477855566" CREATED="1793739878287" MODIFIED="1793739878287"/>
<node TEXT="español" STYLE_REF="maybeTask" ID="ID_1029836271" CREATED="1793739878287" MODIFIED="1793739878287"/>
</node>
</node>
</node>
<node TEXT="groovyConsole.mm" ID="ID_1406088487" CREATED="1793739878287" MODIFIED="1793739878287" LINK="groovyConsole/groovyConsole.mm">
<attribute NAME="lastModifiedTime" VALUE="03-08-23 16:03" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:03-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="35.061" OBJECT="org.freeplane.features.format.FormattedNumber|35061|#,##0"/>
<attribute NAME="projectCode" VALUE="groovyConsole.mm"/>
<node TEXT="gC v0.0.5" STYLE_REF="milestone" ID="ID_1105191413" CREATED="1793739878287" MODIFIED="1793739878287"/>
</node>
<node TEXT="generados automáticamente" STYLE_REF="Organizador" ID="ID_1677527063" CREATED="1793739878287" MODIFIED="1793739878287"><richcontent TYPE="DETAILS">
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
<node TEXT="groovyConsole-v0.0.9.addon.mm" ID="ID_135886603" CREATED="1793747080079" MODIFIED="1793747290951" LINK="groovyConsole/groovyConsole-v0.0.9.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|datetime"/>
<attribute NAME="fileSize" VALUE="135.937" OBJECT="org.freeplane.features.format.FormattedNumber|135937|#,##0"/>
</node>
<node TEXT="history.md" ID="ID_1213423335" CREATED="1793739878292" MODIFIED="1793747275104" LINK="groovyConsole/history.md"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text># History

## v0.0.2

* added &quot;GroovyScript plugin&quot; &apos;s compiler configuration:
It adds access to Freeplane&apos;s and add-ons libraries
* Added button to refresh Compiler Configuration
* Added console.systemOutInterceptor.start() to capture print() and println() in the output console or the log.0 file

## v0.0.1

* Initial release</text></richcontent>
<attribute NAME="lastModifiedTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.150" OBJECT="org.freeplane.features.format.FormattedNumber|1150|#,##0"/>
</node>
<node TEXT="version.properties" ID="ID_781482061" CREATED="1793739878292" MODIFIED="1793747275104" LINK="groovyConsole/version.properties">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|dd-MM-yy HH:mm"/>
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
<node TEXT="versiones anteriores" STYLE_REF="Organizador" ID="ID_542438511" CREATED="1793739878292" MODIFIED="1793739878292">
<node TEXT="groovyConsole-v0.0.8.addon.mm" POSITION="bottom_or_right" ID="ID_1451197349" CREATED="1793739878287" MODIFIED="1793747275104" LINK="groovyConsole/groovyConsole-v0.0.8.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 20:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:03-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 20:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:03-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="29-06-23 22:05" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-29T22:05-0400|datetime"/>
<attribute NAME="fileSize" VALUE="135.943" OBJECT="org.freeplane.features.format.FormattedNumber|135943|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.7.addon.mm" POSITION="bottom_or_right" ID="ID_705820952" CREATED="1793739878292" MODIFIED="1793747251365" LINK="groovyConsole/groovyConsole-v0.0.7.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 17:42" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T17:42-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:57" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:57-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="01-05-23 22:41" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:41-0400|datetime"/>
<attribute NAME="fileSize" VALUE="64.435" OBJECT="org.freeplane.features.format.FormattedNumber|64435|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.6.addon.mm" POSITION="bottom_or_right" ID="ID_129298950" CREATED="1793739878292" MODIFIED="1793747251365" LINK="groovyConsole/groovyConsole-v0.0.6.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="01-05-23 22:10" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:10-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:57" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:57-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="01-05-23 22:10" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T22:10-0400|datetime"/>
<attribute NAME="fileSize" VALUE="64.468" OBJECT="org.freeplane.features.format.FormattedNumber|64468|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.5.addon.mm" POSITION="bottom_or_right" ID="ID_1282780823" CREATED="1793739878292" MODIFIED="1793747251365" LINK="groovyConsole/groovyConsole-v0.0.5.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="01-05-23 21:58" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-01T21:58-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:57" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:57-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|datetime"/>
<attribute NAME="fileSize" VALUE="64.282" OBJECT="org.freeplane.features.format.FormattedNumber|64282|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.4.addon.mm" POSITION="bottom_or_right" ID="ID_1924355610" CREATED="1793739878292" MODIFIED="1793747251373" LINK="groovyConsole/groovyConsole-v0.0.4.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 18:47" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:47-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:57" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:57-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="59.599" OBJECT="org.freeplane.features.format.FormattedNumber|59599|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.3.addon.mm" POSITION="bottom_or_right" ID="ID_1462281203" CREATED="1793739878293" MODIFIED="1793747251373" LINK="groovyConsole/groovyConsole-v0.0.3.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 10:41" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T10:41-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:57" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:57-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="57.737" OBJECT="org.freeplane.features.format.FormattedNumber|57737|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.2.addon.mm" POSITION="bottom_or_right" ID="ID_21920088" CREATED="1793739878293" MODIFIED="1793747251373" LINK="groovyConsole/groovyConsole-v0.0.2.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 10:03" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T10:03-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:57" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:57-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="54.803" OBJECT="org.freeplane.features.format.FormattedNumber|54803|#,##0"/>
</node>
<node TEXT="groovyConsole-v0.0.1.addon.mm" POSITION="bottom_or_right" ID="ID_1544430857" CREATED="1793739878293" MODIFIED="1793747251373" LINK="groovyConsole/groovyConsole-v0.0.1.addon.mm">
<attribute NAME="lastModifiedTime" VALUE="24-04-22 19:58" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-24T19:58-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:57" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:57-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="54.190" OBJECT="org.freeplane.features.format.FormattedNumber|54190|#,##0"/>
</node>
</node>
<node TEXT="groovyConsole.mm.bak" ID="ID_216837045" CREATED="1793739878293" MODIFIED="1793747275104" LINK="groovyConsole/groovyConsole.mm.bak">
<attribute NAME="lastModifiedTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 20:04" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T20:04-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 19:01" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T19:01-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="37.769" OBJECT="org.freeplane.features.format.FormattedNumber|37769|#,##0"/>
</node>
</node>
<node TEXT="gradle files" ID="ID_1636752753" CREATED="1793739878293" MODIFIED="1793739878293">
<node TEXT="build.gradle" ID="ID_555807106" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/build.gradle">
<attribute NAME="lastModifiedTime" VALUE="02-08-23 22:15" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:15-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="3.523" OBJECT="org.freeplane.features.format.FormattedNumber|3523|#,##0"/>
<attribute NAME="projectCode" VALUE="build.gradle"/>
<attribute NAME="modifiedFile" VALUE="true"/>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_1279713530" CREATED="1793739878293" MODIFIED="1793739878293">
<node TEXT="hacer que gradle cargue librería groovyNode al proyecto" STYLE_REF="pendingTask" ID="ID_1438658355" CREATED="1793739878293" MODIFIED="1793739878293"/>
</node>
</node>
<node TEXT=".gradle" ID="ID_995192598" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/.gradle/"/>
<node TEXT="gradle" ID="ID_1444506084" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/gradle/">
<node TEXT="wrapper" ID="ID_141581309" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/gradle/wrapper/">
<node TEXT="gradle-wrapper.jar" ID="ID_890408326" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/gradle/wrapper/gradle-wrapper.jar">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="08-05-23 18:18" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-08T18:18-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="61.608" OBJECT="org.freeplane.features.format.FormattedNumber|61608|#,##0"/>
</node>
<node TEXT="gradle-wrapper.properties" ID="ID_1922030171" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/gradle/wrapper/gradle-wrapper.properties">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:02" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:02-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="221" OBJECT="org.freeplane.features.format.FormattedNumber|221|#,##0"/>
</node>
</node>
</node>
<node TEXT="gradlew" ID="ID_1327442642" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/gradlew">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="8.495" OBJECT="org.freeplane.features.format.FormattedNumber|8495|#,##0"/>
</node>
<node TEXT="gradlew.bat" ID="ID_714658141" CREATED="1793739878293" MODIFIED="1793739878293" LINK="groovyConsole/gradlew.bat">
<attribute NAME="lastModifiedTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="02-08-23 22:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-02T22:23-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="04-05-23 16:24" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-04T16:24-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.868" OBJECT="org.freeplane.features.format.FormattedNumber|2868|#,##0"/>
</node>
</node>
<node TEXT="TEMPORARY-SCRIPTS.md" ID="ID_122804291" CREATED="1793837069233" MODIFIED="1793837516148" LINK="groovyConsole/TEMPORARY-SCRIPTS.md">
<attribute NAME="lastModifiedTime" VALUE="04-11-26 17:49" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T17:49-0300|datetime"/>
<attribute NAME="lastAccessTime" VALUE="04-11-26 21:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-04T21:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="03-11-26 22:08" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T22:08-0300|datetime"/>
<attribute NAME="fileSize" VALUE="4.322" OBJECT="org.freeplane.features.format.FormattedNumber|4322|#,##0"/>
</node>
</node>
<node TEXT="resources" STYLE_REF="file_folder" FOLDED="true" ID="ID_1818290900" CREATED="1793739878293" MODIFIED="1793741453652" LINK="resources/">
<attribute NAME="lastModifiedTime" VALUE="25-04-22 17:44" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T17:44-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="25-04-22 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-25T18:20-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="17-04-22 10:42" OBJECT="org.freeplane.features.format.FormattedDate|2022-04-17T10:42-0400|datetime"/>
<attribute NAME="fileSize" VALUE="4.096" OBJECT="org.freeplane.features.format.FormattedNumber|4096|#,##0"/>
<attribute NAME="projectCode" VALUE="resources"/>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      folder con recursos e imagenes
    </p>
    <p>
      &#xa0;para el README y otros
    </p>
  </body>
</html></richcontent>
<node TEXT="groovyConsole_001.png" ID="ID_1941588475" CREATED="1793739878293" MODIFIED="1793741287197" LINK="resources/groovyConsole_001.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="28.435" OBJECT="org.freeplane.features.format.FormattedNumber|28435|#,##0"/>
</node>
<node TEXT="groovyConsole_002.png" ID="ID_1984441739" CREATED="1793739878293" MODIFIED="1793741287197" LINK="resources/groovyConsole_002.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="7.000" OBJECT="org.freeplane.features.format.FormattedNumber|7000|#,##0"/>
</node>
<node TEXT="groovyConsole_003.png" ID="ID_1034407721" CREATED="1793739878293" MODIFIED="1793741287197" LINK="resources/groovyConsole_003.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="7.486" OBJECT="org.freeplane.features.format.FormattedNumber|7486|#,##0"/>
</node>
<node TEXT="groovyConsole_004.png" ID="ID_1693528645" CREATED="1793739878293" MODIFIED="1793741287202" LINK="resources/groovyConsole_004.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="5.183" OBJECT="org.freeplane.features.format.FormattedNumber|5183|#,##0"/>
</node>
<node TEXT="groovyConsole_005.png" ID="ID_1736357139" CREATED="1793739878293" MODIFIED="1793741287202" LINK="resources/groovyConsole_005.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="653" OBJECT="org.freeplane.features.format.FormattedNumber|653|#,##0"/>
</node>
<node TEXT="groovyConsole_006.png" ID="ID_971400958" CREATED="1793739878295" MODIFIED="1793741287202" LINK="resources/groovyConsole_006.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="518" OBJECT="org.freeplane.features.format.FormattedNumber|518|#,##0"/>
</node>
<node TEXT="groovyConsole_007.png" ID="ID_27340568" CREATED="1793739878295" MODIFIED="1793741287202" LINK="resources/groovyConsole_007.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.583" OBJECT="org.freeplane.features.format.FormattedNumber|1583|#,##0"/>
</node>
<node TEXT="groovyConsole_008.png" ID="ID_603527740" CREATED="1793739878295" MODIFIED="1793741287202" LINK="resources/groovyConsole_008.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="1.111" OBJECT="org.freeplane.features.format.FormattedNumber|1111|#,##0"/>
</node>
<node TEXT="groovyConsole_009.png" ID="ID_1628851653" CREATED="1793739878295" MODIFIED="1793741287202" LINK="resources/groovyConsole_009.png">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="10-10-26 11:50" OBJECT="org.freeplane.features.format.FormattedDate|2026-10-10T11:50-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="10.334" OBJECT="org.freeplane.features.format.FormattedNumber|10334|#,##0"/>
</node>
<node TEXT="saveInNode.svg" ID="ID_1247712984" CREATED="1793739878295" MODIFIED="1793741287202" LINK="resources/saveInNode.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 21:48" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:48-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:20-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.512" OBJECT="org.freeplane.features.format.FormattedNumber|2512|#,##0"/>
</node>
<node TEXT="saveInNodeAs.svg" ID="ID_903040677" CREATED="1793739878295" MODIFIED="1793741287202" LINK="resources/saveInNodeAs.svg">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 21:53" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:53-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:20" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:20-0300|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="30-06-23 21:54" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:54-0400|datetime"/>
<attribute NAME="fileSize" VALUE="4.467" OBJECT="org.freeplane.features.format.FormattedNumber|4467|#,##0"/>
</node>
<node TEXT="reloadFile.png" ID="ID_290020188" CREATED="1793741225731" MODIFIED="1793741287202" LINK="resources/reloadFile.png">
<attribute NAME="lastModifiedTime" VALUE="04-08-23 17:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-04T17:23-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="04-08-23 17:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-04T17:23-0400|datetime"/>
<attribute NAME="fileSize" VALUE="1.806" OBJECT="org.freeplane.features.format.FormattedNumber|1806|#,##0"/>
</node>
<node TEXT="saveInNode.png" ID="ID_64373671" CREATED="1793741225736" MODIFIED="1793741287202" LINK="resources/saveInNode.png">
<attribute NAME="lastModifiedTime" VALUE="04-08-23 17:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-04T17:23-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="04-08-23 17:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-04T17:23-0400|datetime"/>
<attribute NAME="fileSize" VALUE="1.597" OBJECT="org.freeplane.features.format.FormattedNumber|1597|#,##0"/>
</node>
<node TEXT="saveInNodeAs.png" ID="ID_1008668338" CREATED="1793741225741" MODIFIED="1793741287209" LINK="resources/saveInNodeAs.png">
<attribute NAME="lastModifiedTime" VALUE="04-08-23 17:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-04T17:23-0400|datetime"/>
<attribute NAME="lastAccessTime" VALUE="03-11-26 18:03" OBJECT="org.freeplane.features.format.FormattedDate|2026-11-03T18:03-0300|datetime"/>
<attribute NAME="creationTime" VALUE="04-08-23 17:23" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-04T17:23-0400|datetime"/>
<attribute NAME="fileSize" VALUE="2.476" OBJECT="org.freeplane.features.format.FormattedNumber|2476|#,##0"/>
</node>
</node>
<node TEXT=".gitignore" ID="ID_632522946" CREATED="1793739878295" MODIFIED="1793837208627" LINK=".gitignore">
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
<node TEXT="README.MD" FOLDED="true" ID="ID_181733889" CREATED="1793739878295" MODIFIED="1793739878295" LINK="README.MD">
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="08-05-23 18:18" OBJECT="org.freeplane.features.format.FormattedDate|2023-05-08T18:18-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="4.953" OBJECT="org.freeplane.features.format.FormattedNumber|4953|#,##0"/>
<attribute NAME="projectCode" VALUE="README.MD"/>
<node TEXT="README-groovyConsole-MDH.mm" ID="ID_1716777370" CREATED="1793739878295" MODIFIED="1793739878295" LINK="README-groovyConsole-MDH.mm">
<attribute NAME="lastModifiedTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:07" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:07-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="24-04-23 15:04" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-24T15:04-0400|dd-MM-yy HH:mm"/>
<attribute NAME="fileSize" VALUE="22.728" OBJECT="org.freeplane.features.format.FormattedNumber|22728|#,##0"/>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_565384637" CREATED="1793739878295" MODIFIED="1793739878295">
<node TEXT="README v0.0.9 actualizado — pendiente revisión" STYLE_REF="pendingTask" ID="ID_299518433" CREATED="1793739878295" MODIFIED="1793836559859" AI_EDITS="true"><richcontent TYPE="NOTE">
<text>README.MD actualizado con la funcionalidad implementada en v0.0.9 y sus límites. Pendiente revisar el diff antes del commit. Las ideas de documentación para funcionalidades futuras no se dan por realizadas. Antes de regenerar README desde README-groovyConsole-MDH.mm, sincronizar esa fuente alternativa para no perder la documentación nueva.</text></richcontent>
<node TEXT="nuevas fumcionalidades" FOLDED="true" ID="ID_750518914" CREATED="1793739878295" MODIFIED="1793739878295">
<node TEXT="ver cambios en versiones" ID="ID_1999194206" CREATED="1793739878295" MODIFIED="1793739878295"/>
</node>
<node TEXT="link a último release" ID="ID_569264650" CREATED="1793739878295" MODIFIED="1793739878295"/>
<node TEXT="link a release de myTempScripts" ID="ID_754310697" CREATED="1793739878295" MODIFIED="1793739878295"/>
<node TEXT="imágenes de funcionalidades" FOLDED="true" ID="ID_180565491" CREATED="1793739878295" MODIFIED="1793739878295">
<node TEXT="load con append" ID="ID_1373590109" CREATED="1793739878295" MODIFIED="1793739878295"/>
<node TEXT="tempScripts" ID="ID_1534576302" CREATED="1793739878295" MODIFIED="1793739878295"/>
</node>
<node TEXT="Agregar imágenes" ID="ID_1962469864" CREATED="1793739878295" MODIFIED="1793739878295"/>
<node TEXT="agregar descripción de nuevos comandos" ID="ID_1732392611" CREATED="1793739878295" MODIFIED="1793739878295"/>
<node TEXT="agregar historial de cambios" ID="ID_734610760" CREATED="1793739878295" MODIFIED="1793739878295"/>
</node>
</node>
</node>
</node>
<node TEXT="LICENSE.md" ID="ID_1060696446" CREATED="1793739878295" MODIFIED="1793739878295" LINK="LICENSE.md"><richcontent TYPE="NOTE">
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
<node TEXT="GroovyConsole project.mm" POSITION="bottom_or_right" ID="ID_308539569" CREATED="1793739878295" MODIFIED="1793739878295" LINK="GroovyConsole%20project.mm">
<attribute NAME="lastModifiedTime" VALUE="30-06-23 21:37" OBJECT="org.freeplane.features.format.FormattedDate|2023-06-30T21:37-0400|dd-MM-yy HH:mm"/>
<attribute NAME="lastAccessTime" VALUE="03-08-23 16:07" OBJECT="org.freeplane.features.format.FormattedDate|2023-08-03T16:07-0400|dd-MM-yy HH:mm"/>
<attribute NAME="creationTime" VALUE="28-04-23 18:41" OBJECT="org.freeplane.features.format.FormattedDate|2023-04-28T18:41-0400|datetime"/>
<attribute NAME="fileSize" VALUE="95.338" OBJECT="org.freeplane.features.format.FormattedNumber|95338|#,##0"/>
</node>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1776199503" CREATED="1793739878295" MODIFIED="1793837071427">
<attribute NAME="log_MDI" VALUE="2" OBJECT="org.freeplane.features.format.FormattedNumber|2|#0.####"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&#xa0;&#xa0;&#xa0;2026-11-04&#xa0;&#xa0;21:04:29
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
      &#xa0;11 new file(s) imported as node(s)&#xa0;
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
      28 folders didn't need to be moved&#xa0;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      2 seconds
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
</html></richcontent>
</node>
<node TEXT="versión instalada en AddOns" STYLE_REF="locked" ID="ID_1056009098" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="Tareas varias" STYLE_REF="Organizador" FOLDED="true" ID="ID_1570336119" CREATED="1793739878297" MODIFIED="1793739878297">
<attribute NAME="projectCode" VALUE="Tareas"/>
<node TEXT="otras idea pendientes&#xa;Asignar" ID="ID_214809729" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="botón para recargar script desde file" STYLE_REF="completedTask" ID="ID_1916463815" CREATED="1793739878297" MODIFIED="1793739878297"><richcontent TYPE="NOTE">
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
<node TEXT="boton para ejecutar el script desde freeplane" STYLE_REF="pendingTask" ID="ID_655464826" CREATED="1793739878297" MODIFIED="1793739878297"><richcontent TYPE="NOTE">
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
<node TEXT="otro menu command para llamar a groovyConsole full permisos" STYLE_REF="completedTask" ID="ID_450354548" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="rehabilitar comando para editar script asociado a menú" STYLE_REF="pendingTask" ID="ID_1347348011" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="agregar formato a editor" STYLE_REF="pendingTask" ID="ID_162321591" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="comandos groovy" STYLE_REF="pendingTask" ID="ID_1777352210" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="palabras Freeplane API" STYLE_REF="pendingTask" ID="ID_607771690" CREATED="1793739878297" MODIFIED="1793739878297"/>
</node>
<node TEXT="Agregar botón que guarde en archivo .groovy temporal" STYLE_REF="nextTask" ID="ID_66179713" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="cuyo path esté definido en las preferencias de Freeplane" STYLE_REF="pendingTask" ID="ID_350975537" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="que facilite tener un único proyecto en IntelliJ con librerias precargadas, etc para usar con scripts temp" ID="ID_1671157507" CREATED="1793739878297" MODIFIED="1793739878297"/>
</node>
</node>
<node TEXT="gC Future A" STYLE_REF="milestone" ID="ID_1680075747" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="ver tema &quot;isGroovyNode(node)&quot;, para que no tener problemas en mis mapas si desaparece WSE" STYLE_REF="discardedTask" ID="ID_100568344" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="revisar que funcionalidades wikdshell extension voy a importar y cuales no" STYLE_REF="pendingTask" ID="ID_55180733" CREATED="1793739878297" MODIFIED="1793739878297"/>
</node>
<node TEXT="gC Future B" STYLE_REF="milestone" ID="ID_994209354" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="revisar pendientes en wikdshell extension para ver cuales traer" STYLE_REF="pendingTask" ID="ID_1916577991" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="myTempScripts" ID="ID_1209729951" CREATED="1793739878297" MODIFIED="1793739878297">
<attribute NAME="projectCode" VALUE="my.Temp.Scripts"/>
<node TEXT="es otro add-on?" STYLE_REF="pendingTask" ID="ID_182748821" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="definir fase" STYLE_REF="pendingTask" ID="ID_1903437549" CREATED="1793739878297" MODIFIED="1793739878297"/>
</node>
<node TEXT="actualizar a listado de AddOns en FP wiki" STYLE_REF="pendingTask" FOLDED="true" ID="ID_1800996529" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="agregar a listado de AddOns en FP wiki" ID="ID_1102237309" CREATED="1793739878297" MODIFIED="1793739878297"/>
<node TEXT="usar addOn documentation de devTools" ID="ID_740052352" CREATED="1793739878297" MODIFIED="1793739878297"/>
</node>
</node>
<node TEXT="gC Future C" STYLE_REF="milestone" ID="ID_718955669" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="actualizar wiki" STYLE_REF="maybeTask" ID="ID_303128084" CREATED="1793739878297" MODIFIED="1793739878297">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="prueba" STYLE_REF="locked" FOLDED="true" ID="ID_749156692" CREATED="1793739878297" MODIFIED="1793739878297" VGAP_QUANTITY="2 px">
<node TEXT="prueba" ID="ID_1223081684" CREATED="1793739878297" MODIFIED="1793739878297" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovyConsole/groovyConsole/scripts/openWithGroovyConsole.groovy">
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
<node TEXT="prueba" ID="ID_507966943" CREATED="1793739878297" MODIFIED="1793739878297">
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
<node TEXT="prueba" ID="ID_1729615805" CREATED="1793739878297" MODIFIED="1793739878297">
<attribute NAME="script1" VALUE="node.text = node.text.reverse()"/>
</node>
<node TEXT="prueba" ID="ID_1256061346" CREATED="1793739878297" MODIFIED="1793739878297"><richcontent TYPE="DETAILS">
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
<node TEXT="prueba" ID="ID_1523202208" CREATED="1793739878297" MODIFIED="1793739878297"><richcontent TYPE="NOTE">
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
<node TEXT="prueba" ID="ID_311000715" CREATED="1793739878297" MODIFIED="1793739878297" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovy_console_2/groovyConsole/scripts/openWithGroovyConsole.groovy"><richcontent TYPE="DETAILS">
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
<node TEXT="prueba" ID="ID_906227552" CREATED="1793739878297" MODIFIED="1793739878297" LINK="file:/C:/Users/Edo/Documents/GitHub/Freeplane_groovy_console_2/groovyConsole/scripts/openWithGroovyConsole.groovy"/>
<node TEXT="prueba console simple" ID="ID_13784594" CREATED="1793739878297" MODIFIED="1793739878297">
<attribute NAME="script1" VALUE="import org.freeplane.plugin.script.FreeplaneScriptBaseClass&#xd;&#xa;import groovy.console.ui.Console //groovy.ui.Console&#xd;&#xa;import org.freeplane.plugin.script.GroovyScript&#xd;&#xa;&#xd;&#xa;def n = node&#xd;&#xa;&#xd;&#xa;Console console = new Console(null, getBinding(),GroovyScript.createCompilerConfiguration())&#xd;&#xa;console.setVariable(&apos;map&apos;, n.map)&#xd;&#xa;console.setVariable(&apos;root&apos;, n.map.root)&#xd;&#xa;def updateVars = {console.shell = updateNode(console.shell)}&#xd;&#xa;console.setBeforeExecution( updateVars )&#xd;&#xa;console.setVariable(&apos;console&apos;, console)&#xd;&#xa;&#xd;&#xa;console.run()&#xd;&#xa;&#xd;&#xa;// ------methods----&#xd;&#xa;&#xd;&#xa;GroovyShell updateNode(shell){&#xd;&#xa;    def variables = shell.context.variables&#xd;&#xa;    def selected = variables.c.selected&#xd;&#xa;    if(selected != null &amp;&amp; variables.node != selected) {&#xd;&#xa;        Binding binding = new Binding(new HashMap(variables))&#xd;&#xa;        binding.variables.node = selected&#xd;&#xa;        binding.variables.map  = selected.map&#xd;&#xa;        binding.variables.root = selected.map.root&#xd;&#xa;        def newConfig = GroovyScript.createCompilerConfiguration()&#xd;&#xa;        GroovyShell updatedShell = new GroovyShell(null, binding, newConfig)&#xd;&#xa;        return updatedShell&#xd;&#xa;    }&#xd;&#xa;    else&#xd;&#xa;        return shell&#xd;&#xa;}"/>
<node TEXT="books" ID="ID_625821156" CREATED="1793739878297" MODIFIED="1793739878297" LINK="menuitem:_IconAction.emoji-1F4DA"/>
<node TEXT="counterclockwise arrows button" ID="ID_718518942" CREATED="1793739878297" MODIFIED="1793739878297" LINK="menuitem:_IconAction.emoji-1F504"/>
</node>
<node TEXT="prueba con wse" ID="ID_260761461" CREATED="1793739878297" MODIFIED="1793739878297">
<node TEXT="printer" ID="ID_379622935" CREATED="1793739878297" MODIFIED="1793739878297" LINK="menuitem:_IconAction.emoji-1F5A8"/>
</node>
<node TEXT="prueba console simple" ID="ID_1517080217" CREATED="1793739878297" MODIFIED="1793739878297">
<attribute NAME="script1" VALUE="import org.freeplane.plugin.script.FreeplaneScriptBaseClass&#xd;&#xa;import groovy.console.ui.Console //groovy.ui.Console&#xd;&#xa;&#xd;&#xa;def n = node&#xd;&#xa;&#xd;&#xa;//Console console = new Console(getBinding())&#xd;&#xa;Console console = new Console()&#xd;&#xa;//console.setVariable(&apos;map&apos;, n.map)&#xd;&#xa;//console.setVariable(&apos;root&apos;, n.map.root)&#xd;&#xa;//def updateVars = {console.shell = updateNode(console.shell,console.config)}&#xd;&#xa;//console.setBeforeExecution( updateVars )&#xd;&#xa;console.setVariable(&apos;console&apos;, console)&#xd;&#xa;&#xd;&#xa;console.run()&#xd;&#xa;&#xd;&#xa;// ------methods----&#xd;&#xa;&#xd;&#xa;GroovyShell updateNode(shell,config){&#xd;&#xa;    def variables = shell.context.variables&#xd;&#xa;    def selected = variables.c.selected&#xd;&#xa;    if(selected != null &amp;&amp; variables.node != selected) {&#xd;&#xa;        Binding binding = new Binding(new HashMap(variables))&#xd;&#xa;        binding.variables.node = selected&#xd;&#xa;        binding.variables.map  = selected.map&#xd;&#xa;        binding.variables.root = selected.map.root&#xd;&#xa;        GroovyShell updatedShell = new GroovyShell(null, binding, config)&#xd;&#xa;        return updatedShell&#xd;&#xa;    }&#xd;&#xa;    else&#xd;&#xa;        return shell&#xd;&#xa;}"/>
<attribute NAME="script2" VALUE="println &apos;hola&apos;&#xd;&#xa;"/>
</node>
<node TEXT="groovy.console.ui.Console" FOLDED="true" ID="ID_638918291" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="r" ID="ID_247641866" CREATED="1793739878298" MODIFIED="1793739878298"><richcontent TYPE="NOTE">
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
<node TEXT="toolbar" ID="ID_1474301762" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="swing" ID="ID_1607530940" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="frame" ID="ID_503982766" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="beforeExecution" ID="ID_1880109329" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="closure" ID="ID_1542051253" CREATED="1793739878298" MODIFIED="1793739878298"/>
</node>
<node TEXT="shell" ID="ID_1204353514" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="config" ID="ID_1279163949" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="baseConfig" ID="ID_235200661" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="consolePreferences" ID="ID_1387074772" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="frameConsoleDelegates" ID="ID_1016313635" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="menuBarDelegate" ID="ID_389972245" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="inputEditor" ID="ID_1779023384" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="splitPane=null" ID="ID_586612487" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="inputArea=null" ID="ID_506465512" CREATED="1793739878298" MODIFIED="1793739878298"/>
<node TEXT="outputArea=null" ID="ID_810920230" CREATED="1793739878298" MODIFIED="1793739878298"/>
</node>
</node>
<node TEXT="r" ID="ID_1049832233" CREATED="1793739878298" MODIFIED="1793739878298"><richcontent TYPE="NOTE">
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
<node TEXT="Pendientes" STYLE_REF="tasksBucket" ID="ID_1627165533" CREATED="1793739878298" MODIFIED="1793739878298"><richcontent TYPE="DETAILS">
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
<node TEXT="gC v0.0.5" ID="ID_1247161182" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="groovyConsole.mm" STYLE_REF="project" ID="ID_1751394414" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="cambiar &apos;versión Freeplane necesitada&apos; más baja" STYLE_REF="completedTask" ID="ID_1934646191" CREATED="1793739878298" MODIFIED="1793739878298"/>
</node>
</node>
<node TEXT="gC Future A" ID="ID_467926201" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="README.MD" STYLE_REF="project" ID="ID_1510521114" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_404157918" CONTENT_ID="ID_299518433"/>
</node>
<node TEXT="Tareas" STYLE_REF="project" ID="ID_1346719946" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_1486263343" CONTENT_ID="ID_100568344"/>
<node ID="ID_1354982433" CONTENT_ID="ID_55180733"/>
</node>
<node TEXT="build.gradle" STYLE_REF="project" ID="ID_44072207" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_338461459" CONTENT_ID="ID_1438658355"/>
</node>
<node TEXT="scripts" STYLE_REF="project" ID="ID_347284133" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_1180964626" CONTENT_ID="ID_534212207"/>
</node>
<node TEXT="lib" STYLE_REF="project" ID="ID_168820308" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="estilos.código.en.editor" STYLE_REF="project" ID="ID_294845810" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_1074802664" CONTENT_ID="ID_1563279741"/>
<node ID="ID_1651801412" CONTENT_ID="ID_1217856581"/>
<node ID="ID_381806987" CONTENT_ID="ID_1722518463"/>
</node>
</node>
</node>
<node TEXT="gC Future B" ID="ID_501920178" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="Tareas" STYLE_REF="project" ID="ID_472245500" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_850023409" CONTENT_ID="ID_1916577991"/>
<node TEXT="my.Temp.Scripts" STYLE_REF="project" ID="ID_373429985" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_481583152" CONTENT_ID="ID_182748821"/>
<node ID="ID_1197646869" CONTENT_ID="ID_1903437549"/>
</node>
<node ID="ID_964570810" CONTENT_ID="ID_1800996529"/>
</node>
</node>
<node TEXT="gC Future C" ID="ID_1142281616" CREATED="1793739878298" MODIFIED="1793739878298">
<node TEXT="translations" STYLE_REF="project" ID="ID_524602576" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_160690057" CONTENT_ID="ID_477855566"/>
<node ID="ID_1161948679" CONTENT_ID="ID_1029836271"/>
</node>
<node TEXT="Tareas" STYLE_REF="project" ID="ID_1100698049" CREATED="1793739878298" MODIFIED="1793739878298">
<node ID="ID_1096385340" CONTENT_ID="ID_303128084"/>
</node>
</node>
<node TEXT="Scripts temporales para IntelliJ — implementados en v0.0.9" ID="ID_582361247" CREATED="1793753840689" MODIFIED="1793836484629" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Implementado, instalado y probado en los recorridos cotidianos confirmados por el usuario. Estado vigente: archivo único por sesión de script; guardado independiente respecto al nodo; dirty por revisión del temporal; procedencia y ficha JSON; marcado automático al cerrar y revisión diferida no bloqueante. Historial de evolución conservado en los hitos y en la rama de cierre. No publicado ni registrado en Git todavía.
    </p>
  </body>
</html></richcontent>
<node TEXT="Crear archivo nuevo en carpeta configurable" ID="ID_1045765467" CREATED="1793753840692" MODIFIED="1793836484631" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      IMPLEMENTADO. Crear el primer temporal UTF-8 en carpeta configurable, solicitada en el primer uso si está vacía. Nombre automático desde texto core del nodo, adaptado a nombre válido y con sufijo para evitar colisiones. El botón cambia a guardar el mismo archivo después del primer uso; no crea otro en cada clic. Conservar selección/cancelación y errores sin perder el editor.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Guardar archivo y conservar destino de nodo" ID="ID_1645154686" CREATED="1793753840692" MODIFIED="1793836484632" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      IMPLEMENTADO. El temporal queda asociado a la consola. Diskette y botón save temporary .groovy guardan el mismo archivo; Guardar como permite cambiarlo explícitamente. Se conserva el envío al nodo original y la recarga desde IntelliJ. No se abre IntelliJ automáticamente y no se borran archivos al cerrar la consola.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Estados independientes: nodo y archivo" ID="ID_494127060" CREATED="1793753840692" MODIFIED="1793836484634" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      IMPLEMENTADO. Los cambios respecto al nodo y al archivo son independientes: guardar uno no limpia el estado del otro. Crear un temporal marca dirty aunque el código coincida con el nodo, por revisión pendiente al cerrar. Guardar archivo o enviar a nodo no limpia esa marca de revisión por sí solo. El cierre comprueba revisiones del archivo, además del indicador dirty.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Marcado automático para limpieza diferida" ID="ID_1338261272" CREATED="1793753840692" MODIFIED="1793836484634" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      IMPLEMENTADO. Al cerrar, sólo marcar temporales propios cuya copia coincide con el editor y sin cambios pendientes respecto al nodo. Elegibilidad: sin cambios desde creación, o última revisión de disco recargada y enviada después al nodo. Plazo inicial 7 días configurable. No borrar inmediatamente. Reutilizar o detectar cambios externos cancela programación. Archivos sin ficha válida se conservan.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Cierre y formulario de vencidos — comportamiento vigente" ID="ID_722454795" CREATED="1793753840692" MODIFIED="1793836484636" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      IMPLEMENTADO. Al cerrar: avisos de cambios externos y cambios pendientes de nodo/archivo, con posibilidad de cancelar; después marcado automático de elegibles. Al abrir consola: formulario independiente sólo si hay vencidos. Casilla marcada significa postergar por el plazo configurado desde Apply. Apply elimina no marcados y posterga marcados. Cerrar sin aplicar conserva todos. La ventana informa resultados sin bloquear la consola.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Hito histórico — primera compilación y 35 comprobaciones" ID="ID_1784891272" CREATED="1793754513111" MODIFIED="1793836484638" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      HITO HISTÓRICO SUPERADO, conservado como referencia. La primera implementación pasó 35 comprobaciones y aún no tenía integración completa del mapa fuente. Ya no hay un script RUN pendiente: las preferencias se añadieron mediante MCP, el usuario guardó/regeneró/instaló el paquete y confirmó pruebas. Estado actual: 77 comprobaciones automáticas y ronda manual cotidiana registrada; limpieza diferida sustituye el cierre con borrado inmediato.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Documentación v0.0.9 actualizada — pendiente revisión y commit" ID="ID_284955784" CREATED="1793836540575" MODIFIED="1793836540575" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      2026-11-04. README actualizado con flujo de IntelliJ, botón crear/guardar, estados independientes, revisión dirty, metadatos, marcado automático, limpieza diferida y preferencias. history.md y changes/v0.0.9 del mapa fuente sincronizados con nueve cambios implementados; WIP reemplazado. Mapa de organización corregido para distinguir estado vigente de hitos históricos. Enlaces locales del README y formato de diff comprobados. No se ejecutaron pruebas de código por tratarse de cambios documentales; última ejecución de implementación: 77 comprobaciones. Guardar ambos mapas antes de revisar el diff. Pendientes: revisar conjunto de cambios, decidir alcance del commit y compatibilidad declarada; publicación no realizada. La fuente alternativa README-groovyConsole-MDH.mm no se reescribió: revisar antes de usarla para regenerar README y no sobrescribir la documentación nueva.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Corregidos: dos fallos de revisión y exclusión del Wrapper — 94 comprobaciones" ID="ID_1423914290" CREATED="1793838616353" MODIFIED="1793838616353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      2026-11-04. Sin copia inicial de nodo: contenido no vacío queda pendiente aunque se guarde a archivo; no se programa limpieza mientras no se registre una copia en nodo. Ventana de vencidos: se refresca al abrir otra consola, incluso después de Apply, conservando casillas de candidatos que no cambiaron. .gitignore: excepción del gradle-wrapper.jar tras *.jar; el Wrapper aparece como archivo nuevo listo para incluir, mientras lib/groovyConsole.jar sigue ignorado. Gradle --offline check jar: BUILD SUCCESSFUL, 94 comprobaciones. README y guía de temporales actualizados; correcciones añadidas sólo a changes del mapa fuente, sin editar manualmente history.md. Sin commit ni staging; compatibles mínimo y configuración de ruta de construcción aún pendientes de decidir, sin cambios en esta tarea. Guardar ambos mapas y regenerar paquete por ciclo habitual cuando corresponda.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Compatibilidad y construcción configuradas — mínimo seleccionado 1.13.3" ID="ID_1295904451" CREATED="1793839335128" MODIFIED="1793839335128" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Mínimo del mapa fuente groovyConsole.mm: v1.13.3. Pendiente antes de publicar: prueba breve del paquete actual instalado en Freeplane 1.13.3 (abrir consola, crear temporal, guardar y cerrar). Uso habitual ya probado en 1.13.4. Construcción mantiene Java 17, Gradle Wrapper 8.0 y Groovy 4.0.27. build.gradle toma freeplaneDir desde propiedad Gradle: archivo local groovyConsole/gradle.properties ignorado o argumento -P entre comillas en PowerShell. Incluido gradle.properties.example; creada configuración local relativa para la copia aislada existente. Bibliotecas exactas 1.13.3, sin version '+' ni descarga alternativa de bibliotecas Freeplane. Verificados ruta vacía, ruta inválida con mensaje de bibliotecas faltantes, override absoluto correcto y build local check jar: 94 comprobaciones correctas. README y guía actualizados. Cambios de historial registrados sólo en changes del mapa fuente; history.md y version.properties se regenerarán con el ciclo habitual del usuario. Sin commit ni staging.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Cierre y versiones del script — diseño y validación v0.0.9" ID="ID_694598929" CREATED="1793807270494" MODIFIED="1793836484643" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Diseño implementado en v0.0.9, con evolución histórica y validación manual. La limpieza diferida y las decisiones confirmadas del usuario prevalecen sobre propuestas anteriores de eliminación inmediata y salvaguardas descartadas. Consultar la ronda de pruebas cotidianas para resultados explícitos; no dar por superados todos los casos de la tabla.
    </p>
  </body>
</html></richcontent>
<node TEXT="Referencias y límites de detección" ID="ID_106498878" CREATED="1793807270599" MODIFIED="1793820850108" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      C = texto actual de consola.
    </p>
    <p>
      N = contenido actual del nodo destino (y conservar identidad del nodo original).
    </p>
    <p>
      F = contenido y revisión actual del temporal en disco.
    </p>
    <p>
      L = contenido/revisión que la consola leyó por última vez.
    </p>
    <p>
      S = última versión escrita por la consola al archivo.
    </p>
    <p>
      
    </p>
    <p>
      Registrar además el contenido y destino de cada envío a nodo y los eventos de lectura/escritura.
    </p>
    <p>
      Comparar contenido y revisiones: una fecha posterior no determina por sí sola qué versión es la correcta.
    </p>
    <p>
      IntelliJ puede tener cambios no guardados: no son visibles leyendo F.
    </p>
    <p>
      Dirty es un indicador, no una garantía de sincronización.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Reglas de protección" ID="ID_1645835268" CREATED="1793807270599" MODIFIED="1793820903234" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      No sobrescribir ni descartar una versión diferente sin decisión explícita.
    </p>
    <p>
      
    </p>
    <p>
      Resolver divergencias antes de ofrecer eliminación.
    </p>
    <p>
      
    </p>
    <p>
      Sólo borrar temporales creados por esta función.
    </p>
    <p>
      
    </p>
    <p>
      Guardar archivo y enviar a nodo son operaciones distintas.
    </p>
    <p>
      
    </p>
    <p>
      Enviar a nodo tampoco equivale a guardar mapa en disco.
    </p>
    <p>
      La revisión al cierre se hace siempre, independientemente de dirty.
    </p>
    <p>
      &#xa0;
    </p>
    <p>
      Cancelar la fase de cierre no borra archivos; no revierte guardados que el usuario haya confirmado antes.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Tabla de casos — referencia de diseño y pruebas" FOLDED="true" ID="ID_534932889" CREATED="1793807270615" MODIFIED="1793836484648" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO_AFTERPARENT"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Referencia de casos C01-C20, con formulaciones históricas. Las menciones de eliminación inmediata deben leerse según la decisión vigente: marcado automático al cerrar y borrado únicamente mediante Apply en revisión de vencidos. Resultados manuales están en Ronda de pruebas cotidianas; los casos adicionales no recorridos siguen pendientes.
    </p>
  </body>
</html></richcontent>
<node TEXT="C01 — Sin temporal; consola igual al nodo" FOLDED="true" ID="ID_653879172" CREATED="1793807270615" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Sin temporal; consola igual al nodo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Cerrar sin alertas de cambios del script.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: No aplica.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_1438281420" CREATED="1793821831453" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Sin temporal; consola igual al nodo" ID="ID_763374233" CREATED="1793821831490" MODIFIED="1793821831490"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_1406412250" CREATED="1793821831508" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Cerrar sin alertas de cambios del script." ID="ID_1164080764" CREATED="1793821831541" MODIFIED="1793821831541"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1285250281" CREATED="1793821831574" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No aplica." ID="ID_275720392" CREATED="1793821831598" MODIFIED="1793821831598"/>
</node>
</node>
<node TEXT="C02 — Sin temporal; consola editada y no enviada al nodo" FOLDED="true" ID="ID_1695060972" CREATED="1793807270623" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Sin temporal; consola editada y no enviada al nodo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Alertar: cambios de consola pendientes de enviar al nodo. Enviar / descartar explícitamente / cancelar.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: No aplica.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_265512383" CREATED="1793821831627" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Sin temporal; consola editada y no enviada al nodo" ID="ID_1261570789" CREATED="1793821831678" MODIFIED="1793821831678"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_1086043915" CREATED="1793821831702" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Alertar" ID="ID_1805523932" CREATED="1793821831725" MODIFIED="1793821831725"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1755246070" CREATED="1793821831750" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No aplica." ID="ID_1562828050" CREATED="1793821831804" MODIFIED="1793821831804"/>
</node>
</node>
<node TEXT="C03 — Sin temporal; consola editada y enviada al nodo" FOLDED="true" ID="ID_624977376" CREATED="1793807270626" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Sin temporal; consola editada y enviada al nodo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Sin alerta por diferencias consola/nodo. Distinguir envío al nodo de guardado del mapa en disco.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: No aplica.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_552135414" CREATED="1793821831823" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Sin temporal; consola editada y enviada al nodo" ID="ID_145128346" CREATED="1793821831851" MODIFIED="1793821831851"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_1728984672" CREATED="1793821831900" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Sin alerta por diferencias consola/nodo. Distinguir envío al nodo de guardado del mapa en disco." ID="ID_1193201236" CREATED="1793821831928" MODIFIED="1793821831928"/>
</node>
<node TEXT="Archivo temporal" ID="ID_26784297" CREATED="1793821831954" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No aplica." ID="ID_1333133499" CREATED="1793821832009" MODIFIED="1793821832009"/>
</node>
</node>
<node TEXT="C04 — Temporal creado; sin ediciones posteriores en consola ni archivo" FOLDED="true" ID="ID_1634542677" CREATED="1793807270627" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Temporal creado; sin ediciones posteriores en consola ni archivo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Resolver primero cualquier diferencia previa consola/nodo. Después ofrecer eliminar / conservar / cancelar.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Elegible por caso A: revisión del archivo confirma que no cambió desde su creación.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_1746593619" CREATED="1793821832042" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Temporal creado; sin ediciones posteriores en consola ni archivo" ID="ID_298299909" CREATED="1793821832063" MODIFIED="1793821832063"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_406690335" CREATED="1793821832094" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Resolver primero cualquier diferencia previa consola/nodo. Después ofrecer eliminar / conservar / cancelar." ID="ID_895622501" CREATED="1793821832121" MODIFIED="1793821832121"/>
</node>
<node TEXT="Archivo temporal" ID="ID_302362460" CREATED="1793821832143" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Elegible por caso A" ID="ID_996290683" CREATED="1793821832194" MODIFIED="1793821832194"/>
</node>
</node>
<node TEXT="C05 — Consola editada después de crear temporal; no guardada en archivo ni nodo" FOLDED="true" ID="ID_1131335723" CREATED="1793807270630" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Consola editada después de crear temporal; no guardada en archivo ni nodo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Alertar que la consola difiere del nodo y del archivo. Preservar o descartar explícitamente ese contenido antes de continuar.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: No eliminar mientras el contenido actual de consola no esté resuelto.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_486635315" CREATED="1793821832225" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Consola editada después de crear temporal; no guardada en archivo ni nodo" ID="ID_1700917144" CREATED="1793821832252" MODIFIED="1793821832252"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_594579669" CREATED="1793821832282" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Alertar que la consola difiere del nodo y del archivo. Preservar o descartar explícitamente ese contenido antes de continuar." ID="ID_765818880" CREATED="1793821832309" MODIFIED="1793821832309"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1676935671" CREATED="1793821832329" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No eliminar mientras el contenido actual de consola no esté resuelto." ID="ID_1572697649" CREATED="1793821832354" MODIFIED="1793821832354"/>
</node>
</node>
<node TEXT="C06 — Consola editada y guardada en temporal; no enviada al nodo" FOLDED="true" ID="ID_1883904439" CREATED="1793807270631" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Consola editada y guardada en temporal; no enviada al nodo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Alertar que el nodo no contiene los cambios de consola, aunque estén guardados en archivo.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Conservar: el temporal cambió; por sí solo guardar desde consola no satisface la secuencia de recarga y envío.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_6867803" CREATED="1793821832406" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Consola editada y guardada en temporal; no enviada al nodo" ID="ID_1564887197" CREATED="1793821832438" MODIFIED="1793821832438"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_839004073" CREATED="1793821832462" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Alertar que el nodo no contiene los cambios de consola, aunque estén guardados en archivo." ID="ID_173446353" CREATED="1793821832494" MODIFIED="1793821832494"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1357589882" CREATED="1793821832519" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Conservar" ID="ID_403441698" CREATED="1793821832570" MODIFIED="1793821832570"/>
</node>
</node>
<node TEXT="C07 — Archivo cambiado y guardado desde IntelliJ; sin recargar en consola" FOLDED="true" ID="ID_534282849" CREATED="1793807270633" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Archivo cambiado y guardado desde IntelliJ; sin recargar en consola
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Advertir que existe una versión en disco no cargada en consola ni necesariamente enviada al nodo.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Conservar; no ofrecer eliminación.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_457962003" CREATED="1793821832597" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Archivo cambiado y guardado desde IntelliJ; sin recargar en consola" ID="ID_1197143302" CREATED="1793821832629" MODIFIED="1793821832629"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_1872331642" CREATED="1793821832662" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Advertir que existe una versión en disco no cargada en consola ni necesariamente enviada al nodo." ID="ID_736506734" CREATED="1793821832688" MODIFIED="1793821832688"/>
</node>
<node TEXT="Archivo temporal" ID="ID_736658666" CREATED="1793821832712" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Conservar; no ofrecer eliminación." ID="ID_1798810910" CREATED="1793821832735" MODIFIED="1793821832735"/>
</node>
</node>
<node TEXT="C08 — Consola y archivo cambiaron por separado desde su última sincronización" FOLDED="true" ID="ID_406238414" CREATED="1793807270635" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Consola y archivo cambiaron por separado desde su última sincronización
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Advertir divergencia antes de recargar, sobrescribir o enviar una versión antigua al nodo. Permitir comparar/conservar copias o cancelar; nunca elegir una automáticamente.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Conservar mientras no se resuelva la divergencia.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_680997658" CREATED="1793821832762" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Consola y archivo cambiaron por separado desde su última sincronización" ID="ID_728786674" CREATED="1793821832812" MODIFIED="1793821832812"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_466615784" CREATED="1793821832832" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Advertir divergencia antes de recargar, sobrescribir o enviar una versión antigua al nodo. Permitir comparar/conservar copias o cancelar; nunca elegir una automáticamente." ID="ID_1706953908" CREATED="1793821832863" MODIFIED="1793821832863"/>
</node>
<node TEXT="Archivo temporal" ID="ID_226497684" CREATED="1793821832883" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Conservar mientras no se resuelva la divergencia." ID="ID_408836091" CREATED="1793821832924" MODIFIED="1793821832924"/>
</node>
</node>
<node TEXT="C09 — Archivo modificado, recargado; sin enviar contenido actual al nodo" FOLDED="true" ID="ID_1113041941" CREATED="1793807270635" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Archivo modificado, recargado; sin enviar contenido actual al nodo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Alertar que el nodo no contiene la versión recargada.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Conservar hasta cumplir las condiciones de recarga + envío y ausencia de cambios posteriores.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_740450520" CREATED="1793821832958" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Archivo modificado, recargado; sin enviar contenido actual al nodo" ID="ID_907103048" CREATED="1793821832986" MODIFIED="1793821832986"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_1559724505" CREATED="1793821833017" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Alertar que el nodo no contiene la versión recargada." ID="ID_1251351262" CREATED="1793821833039" MODIFIED="1793821833039"/>
</node>
<node TEXT="Archivo temporal" ID="ID_703269771" CREATED="1793821833063" MODIFIED="1793822046851" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Conservar hasta cumplir las condiciones de recarga + envío y ausencia de cambios posteriores." ID="ID_250468921" CREATED="1793821833106" MODIFIED="1793821833106"/>
</node>
</node>
<node TEXT="C10 — Archivo modificado, recargado y luego enviado a nodo; sin cambios posteriores" FOLDED="true" ID="ID_662115281" CREATED="1793807270635" MODIFIED="1793822046851" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Archivo modificado, recargado y luego enviado a nodo; sin cambios posteriores
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: No hay diferencias pendientes entre estas copias. Ofrecer eliminar / conservar / cancelar.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Elegible por caso B; comprobar de nuevo el archivo antes de eliminar.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_311941684" CREATED="1793821833133" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Archivo modificado, recargado y luego enviado a nodo; sin cambios posteriores" ID="ID_1954930895" CREATED="1793821833156" MODIFIED="1793821833156"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_21506104" CREATED="1793821833180" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No hay diferencias pendientes entre estas copias. Ofrecer eliminar / conservar / cancelar." ID="ID_730523901" CREATED="1793821833214" MODIFIED="1793821833214"/>
</node>
<node TEXT="Archivo temporal" ID="ID_340957210" CREATED="1793821833236" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Elegible por caso B; comprobar de nuevo el archivo antes de eliminar." ID="ID_896858673" CREATED="1793821833281" MODIFIED="1793821833281"/>
</node>
</node>
<node TEXT="C11 — Después de recargar y enviar al nodo, se vuelve a editar en consola" FOLDED="true" ID="ID_920938405" CREATED="1793807270635" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Después de recargar y enviar al nodo, se vuelve a editar en consola
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Alertar por versión de consola posterior al último envío. Si archivo también difiere, resolver las dos diferencias.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: No eliminar mientras haya cambios de consola sin resolver.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_928879314" CREATED="1793821833326" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Después de recargar y enviar al nodo, se vuelve a editar en consola" ID="ID_1007560143" CREATED="1793821833401" MODIFIED="1793821833401"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_172287678" CREATED="1793821833429" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Alertar por versión de consola posterior al último envío. Si archivo también difiere, resolver las dos diferencias." ID="ID_1816659592" CREATED="1793821833465" MODIFIED="1793821833465"/>
</node>
<node TEXT="Archivo temporal" ID="ID_546240191" CREATED="1793821833489" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No eliminar mientras haya cambios de consola sin resolver." ID="ID_771287632" CREATED="1793821833539" MODIFIED="1793821833539"/>
</node>
</node>
<node TEXT="C12 — Después de recargar y enviar al nodo, IntelliJ vuelve a guardar el archivo" FOLDED="true" ID="ID_1138475100" CREATED="1793807270635" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Después de recargar y enviar al nodo, IntelliJ vuelve a guardar el archivo
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Advertir que el disco cambió después de la última lectura y del envío al nodo.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Conservar; no ofrecer eliminación.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_1045820587" CREATED="1793821833585" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Después de recargar y enviar al nodo, IntelliJ vuelve a guardar el archivo" ID="ID_936586792" CREATED="1793821833611" MODIFIED="1793821833611"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_340020232" CREATED="1793821833642" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Advertir que el disco cambió después de la última lectura y del envío al nodo." ID="ID_1154067404" CREATED="1793821833667" MODIFIED="1793821833667"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1917433934" CREATED="1793821833692" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Conservar; no ofrecer eliminación." ID="ID_119152654" CREATED="1793821833736" MODIFIED="1793821833736"/>
</node>
</node>
<node TEXT="C13 — Varias idas y vueltas IntelliJ/consola" FOLDED="true" ID="ID_568309649" CREATED="1793807270635" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Varias idas y vueltas IntelliJ/consola
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Aplicar las mismas comparaciones a las últimas versiones y eventos de lectura/envío; no basta recordar que alguna vez se guardó en nodo.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Sólo elegible si la última versión cumple A o B. Cada nueva edición/lectura invalida las autorizaciones anteriores que ya no correspondan.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_1353975170" CREATED="1793821833762" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Varias idas y vueltas IntelliJ/consola" ID="ID_603587487" CREATED="1793821833785" MODIFIED="1793821833785"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_388635609" CREATED="1793821833817" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Aplicar las mismas comparaciones a las últimas versiones y eventos de lectura/envío; no basta recordar que alguna vez se guardó en nodo." ID="ID_1730764742" CREATED="1793821833842" MODIFIED="1793821833842"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1746271534" CREATED="1793821833864" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Sólo elegible si la última versión cumple A o B. Cada nueva edición/lectura invalida las autorizaciones anteriores que ya no correspondan." ID="ID_966860612" CREATED="1793821833913" MODIFIED="1793821833913"/>
</node>
</node>
<node TEXT="C14 — Cambios visibles en IntelliJ pero todavía no guardados en disco" FOLDED="true" ID="ID_66841707" CREATED="1793807270643" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Cambios visibles en IntelliJ pero todavía no guardados en disco
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: La consola no puede detectarlos con el acceso actual. No afirmar que todo IntelliJ está sincronizado. Ofrecer una forma explícita de conservar el archivo.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Política pendiente: recordatorio al eliminar, o exigir confirmar guardado/cierre en IntelliJ. No decidir automáticamente.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_1959862086" CREATED="1793821833942" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Cambios visibles en IntelliJ pero todavía no guardados en disco" ID="ID_904653039" CREATED="1793821833967" MODIFIED="1793821833967"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_1397014774" CREATED="1793821834017" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" La consola no puede detectarlos con el acceso actual. No afirmar que todo IntelliJ está sincronizado. Ofrecer una forma explícita de conservar el archivo." ID="ID_1085001801" CREATED="1793821834040" MODIFIED="1793821834040"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1047553368" CREATED="1793821834062" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Política pendiente" ID="ID_426870555" CREATED="1793821834100" MODIFIED="1793821834100"/>
</node>
</node>
<node TEXT="C15 — Nodo editado fuera de la consola después de abrirlo o enviarle el script" FOLDED="true" ID="ID_1927353423" CREATED="1793807270648" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Nodo editado fuera de la consola después de abrirlo o enviarle el script
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Comparar con el nodo actual, no sólo con una copia recordada. Advertir divergencia antes de sobrescribirlo.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: No basar eliminación en un envío antiguo si el nodo ya no conserva ese contenido.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_1906641545" CREATED="1793821834134" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Nodo editado fuera de la consola después de abrirlo o enviarle el script" ID="ID_1789592105" CREATED="1793821834160" MODIFIED="1793821834160"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_873634720" CREATED="1793821834189" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Comparar con el nodo actual, no sólo con una copia recordada. Advertir divergencia antes de sobrescribirlo." ID="ID_1401946190" CREATED="1793821834210" MODIFIED="1793821834210"/>
</node>
<node TEXT="Archivo temporal" ID="ID_350543820" CREATED="1793821834234" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No basar eliminación en un envío antiguo si el nodo ya no conserva ese contenido." ID="ID_65675076" CREATED="1793821834272" MODIFIED="1793821834272"/>
</node>
</node>
<node TEXT="C16 — Script enviado a nodo, pero mapa aún no guardado en disco" FOLDED="true" ID="ID_1286108522" CREATED="1793807270650" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Script enviado a nodo, pero mapa aún no guardado en disco
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Informar que el script está en el mapa abierto; eso no garantiza persistencia en disco.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Decisión pendiente: exigir guardar mapa antes de eliminar o mantener confirmación explícita de ese riesgo.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_987305138" CREATED="1793821834307" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Script enviado a nodo, pero mapa aún no guardado en disco" ID="ID_322090503" CREATED="1793821834326" MODIFIED="1793821834326"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_1836149862" CREATED="1793821834363" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Informar que el script está en el mapa abierto; eso no garantiza persistencia en disco." ID="ID_888557418" CREATED="1793821834394" MODIFIED="1793821834394"/>
</node>
<node TEXT="Archivo temporal" ID="ID_861760353" CREATED="1793821834414" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Decisión pendiente" ID="ID_1701967849" CREATED="1793821834467" MODIFIED="1793821834467"/>
</node>
</node>
<node TEXT="C17 — Temporal eliminado, movido, reemplazado, ilegible o sin permisos" FOLDED="true" ID="ID_270895202" CREATED="1793807270651" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Temporal eliminado, movido, reemplazado, ilegible o sin permisos
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Informar qué copia no se pudo comprobar. Mantener la consola si no hay otra copia confirmada; conservar/cancelar como opciones.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: No ofrecer eliminación de un archivo cuya identidad o contenido no puedan verificarse.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_243411892" CREATED="1793821834486" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Temporal eliminado, movido, reemplazado, ilegible o sin permisos" ID="ID_781733336" CREATED="1793821834517" MODIFIED="1793821834517"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_19714472" CREATED="1793821834543" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Informar qué copia no se pudo comprobar. Mantener la consola si no hay otra copia confirmada; conservar/cancelar como opciones." ID="ID_164686022" CREATED="1793821834569" MODIFIED="1793821834569"/>
</node>
<node TEXT="Archivo temporal" ID="ID_653308852" CREATED="1793821834597" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" No ofrecer eliminación de un archivo cuya identidad o contenido no puedan verificarse." ID="ID_980118897" CREATED="1793821834643" MODIFIED="1793821834643"/>
</node>
</node>
<node TEXT="C18 — Guardar como… o abrir otro archivo tras crear el temporal" FOLDED="true" ID="ID_1880399715" CREATED="1793807270652" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Guardar como… o abrir otro archivo tras crear el temporal
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Tratar archivo asociado actual y temporal propio como copias diferentes. No borrar un archivo ajeno ni perder el seguimiento del temporal anterior.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Evaluar cada temporal propio; no extender su propiedad a archivos abiertos o elegidos mediante Guardar como.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_907925271" CREATED="1793821834661" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Guardar como… o abrir otro archivo tras crear el temporal" ID="ID_483184286" CREATED="1793821834693" MODIFIED="1793821834693"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_690317180" CREATED="1793821834721" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Tratar archivo asociado actual y temporal propio como copias diferentes. No borrar un archivo ajeno ni perder el seguimiento del temporal anterior." ID="ID_139724232" CREATED="1793821834751" MODIFIED="1793821834751"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1383937399" CREATED="1793821834766" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Evaluar cada temporal propio; no extender su propiedad a archivos abiertos o elegidos mediante Guardar como." ID="ID_1147406063" CREATED="1793821834817" MODIFIED="1793821834817"/>
</node>
</node>
<node TEXT="C19 — Cambio del archivo mientras el diálogo de cierre está abierto" FOLDED="true" ID="ID_750871892" CREATED="1793807270655" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Cambio del archivo mientras el diálogo de cierre está abierto
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Revalidar al confirmar. Si cambió, suspender eliminación e informar.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Conservar/cancelar; no usar una comprobación anterior al diálogo.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_265829054" CREATED="1793821834846" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Cambio del archivo mientras el diálogo de cierre está abierto" ID="ID_1988773353" CREATED="1793821834869" MODIFIED="1793821834869"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_986250506" CREATED="1793821834903" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Revalidar al confirmar. Si cambió, suspender eliminación e informar." ID="ID_282275729" CREATED="1793821834931" MODIFIED="1793821834931"/>
</node>
<node TEXT="Archivo temporal" ID="ID_1130314204" CREATED="1793821834956" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Conservar/cancelar; no usar una comprobación anterior al diálogo." ID="ID_1068457883" CREATED="1793821834998" MODIFIED="1793821834998"/>
</node>
</node>
<node TEXT="C20 — Cancelar cierre o hay varios temporales bajo seguimiento" FOLDED="true" ID="ID_1072208505" CREATED="1793807270655" MODIFIED="1793822046856" AI_EDITS="true" CHILD_NODES_LAYOUT="AUTO"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Situación: Cancelar cierre o hay varios temporales bajo seguimiento
    </p>
    <p>
      
    </p>
    <p>
      Alerta o acción esperada: Cancelar mantiene abierta la consola y no borra archivos, incluso si se había elegido eliminar otro temporal en un diálogo previo.
    </p>
    <p>
      
    </p>
    <p>
      Archivo temporal: Recoger decisiones primero; realizar eliminaciones sólo tras confirmación completa.
    </p>
  </body>
</html></richcontent>
<attribute NAME="Estado" VALUE="Definición propuesta; pendiente validar"/>
<node TEXT="Situación" ID="ID_360136297" CREATED="1793821835030" MODIFIED="1793822046856" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Cancelar cierre o hay varios temporales bajo seguimiento" ID="ID_661043579" CREATED="1793821835051" MODIFIED="1793821835051"/>
</node>
<node TEXT="Alerta o acción esperada" ID="ID_642905132" CREATED="1793821835084" MODIFIED="1793822046858" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Cancelar mantiene abierta la consola y no borra archivos, incluso si se había elegido eliminar otro temporal en un diálogo previo." ID="ID_1015874437" CREATED="1793821835116" MODIFIED="1793821835116"/>
</node>
<node TEXT="Archivo temporal" ID="ID_993914598" CREATED="1793821835134" MODIFIED="1793822046858" CHILD_NODES_LAYOUT="AUTO">
<node TEXT=" Recoger decisiones primero; realizar eliminaciones sólo tras confirmación completa." ID="ID_530212039" CREATED="1793821835175" MODIFIED="1793821835175"/>
</node>
</node>
</node>
<node TEXT="Árbol de decisión de cierre — orden propuesto" FOLDED="true" ID="ID_1695222176" CREATED="1793807270656" MODIFIED="1793807270656" AI_EDITS="true">
<node TEXT="1. Obtener versiones y comprobar acceso" ID="ID_751784474" CREATED="1793807270656" MODIFIED="1793807270656" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Leer consola, nodo actual, archivos propios y revisión en disco. Si no se pueden verificar: explicar el problema, no eliminar y permitir conservar o cancelar.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="2. ¿Cambió el archivo fuera de la consola?" ID="ID_1661429347" CREATED="1793807270658" MODIFIED="1793807270658" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Comparar con última lectura/escritura conocida. Si tiene una versión no cargada, advertir antes de proponer enviar la consola al nodo. Si consola también cambió, tratarlo como divergencia y preservar ambas versiones.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="3. ¿La consola difiere del nodo actual?" ID="ID_1470498622" CREATED="1793807270658" MODIFIED="1793807270658" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ofrecer enviar, conservar otra copia, descartar explícitamente o cancelar. Detectar si el nodo fue editado por otra vía antes de sobrescribirlo. Resolver cambios posteriores al último envío.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="4. ¿La consola tiene cambios no conservados en archivo?" ID="ID_914070315" CREATED="1793807270659" MODIFIED="1793807270659" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ofrecer guardar o conservar otra copia, descartar explícitamente o cancelar. Antes de guardar, comprobar que no se pisa una versión externa. Volver a evaluar el estado tras cada acción.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="5. ¿El temporal es elegible para eliminar?" ID="ID_1151817316" CREATED="1793807270659" MODIFIED="1793807270659" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Caso A acordado: no cambió desde su creación. Caso B acordado: cambió, se recargó, no cambió después en disco y el contenido cargado se envió luego a un nodo. Además no debe haber cambios posteriores sin resolver. Revisar límites C14-C16 antes de cerrar la definición.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="6. Recoger decisión y confirmar revisión" ID="ID_1568800495" CREATED="1793807270660" MODIFIED="1793807270660" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Si es elegible: eliminar / conservar / cancelar. Si no lo es: conservar y explicar la diferencia pertinente. Revalidar antes de borrar. No borrar ningún archivo si se cancela la fase de decisión.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Decisiones iniciales — alcance resuelto para v0.0.9" FOLDED="true" ID="ID_1293569511" CREATED="1793807270661" MODIFIED="1793836484658" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Histórico de preguntas iniciales. Alcance actual: guardar mapa sigue siendo responsabilidad del usuario; no se exige comprobar el contenido del mapa en disco ni rastrear mapas movidos. No se detectan buffers de IntelliJ sin guardar. Diferencias de nodo/archivo tienen avisos independientes. Mantener la secuencia de recarga y envío como criterio para temporales modificados. Ver decisiones confirmadas y pruebas manuales para el comportamiento vigente.
    </p>
  </body>
</html></richcontent>
<attribute NAME="script1" VALUE="def tx = node.note.plain.split(&apos;\n&apos;)&#xd;&#xa;tx.each{t -&gt;&#xd;&#xa;    node.createChild(t)&#xd;&#xa;}"/>
<node TEXT="1. ¿Exigir guardar el mapa antes de eliminar, o informar y pedir confirmación?" ID="ID_1193122038" CREATED="1793823993713" MODIFIED="1793823993713"/>
<node TEXT="2. ¿Qué recordatorio/confirmación usar para cambios no guardados en IntelliJ que no podemos detectar?" ID="ID_1228234727" CREATED="1793823993725" MODIFIED="1793823993725"/>
<node TEXT="3. ¿Qué acciones concretas tendrá el diálogo cuando archivo y consola contienen versiones distintas?" ID="ID_600074283" CREATED="1793823993751" MODIFIED="1793823993751"/>
<node TEXT="4. Al enviar a otro nodo, ¿qué nodo se considera la copia conservada y cómo se muestra? Mantener siempre identificable el original." ID="ID_1597041354" CREATED="1793823993826" MODIFIED="1793823993826"/>
<node TEXT="5. La igualdad de contenido no demuestra el orden de recarga/envío: conservar la secuencia acordada como criterio de eliminación." ID="ID_1412004433" CREATED="1793823993861" MODIFIED="1793823993861"/>
</node>
<node TEXT="Procedencia y eliminación diferida — implementadas" FOLDED="true" ID="ID_1912076748" CREATED="1793823903348" MODIFIED="1793836484653" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Alternativa adoptada e implementada en v0.0.9. Plazo configurable 7 días; fichas JSON junto a temporales; comentario generado excluido del código que vuelve al nodo; marcado automático y ventana no bloqueante al abrir consola. Los hitos anteriores describen propuestas y se conservan como historia; las decisiones confirmadas y la ronda manual reflejan el estado actual.
    </p>
  </body>
</html></richcontent>
<node TEXT="Procedencia dentro del .groovy" ID="ID_386388221" CREATED="1793823903370" MODIFIED="1793823903370" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Comentario identificable con versión de formato, identificador del temporal, ruta del mapa de origen, ID del nodo, texto core del nodo, destino (nota/script1), fecha de creación y, si se conoce, fecha de última escritura del mapa. La fecha documenta el contexto; no prueba que el mapa conserve el script. Si el mapa aún no tiene archivo, registrarlo explícitamente. Escapar el texto para que no pueda romper el comentario ni alterar el código. No duplicar el encabezado al ir y volver ni enviarlo involuntariamente al nodo.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Ficha de control separada del código" ID="ID_1467418604" CREATED="1793823903370" MODIFIED="1793823903370" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Guardar fuera del script la propiedad del archivo, su identidad y ruta, mapa/nodo que conserva la copia, huella del contenido, revisión del archivo, fecha de marcado y fecha de vencimiento. No reescribir el .groovy sólo para cambiar su estado de eliminación: evita dirty artificial y conflictos con IntelliJ. Un comentario por sí solo no concede permiso de borrado; ficha ausente, ilegible o inconsistente implica conservar. Formato y ubicación pendientes.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Al cerrar: programar eliminación, no borrar de inmediato" ID="ID_742697329" CREATED="1793823903371" MODIFIED="1793823903371" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Si el usuario elige eliminar y el caso es elegible, marcar para eliminación diferida conservando físicamente el archivo. Alternativas: Conservar (sin eliminación programada) o Cancelar cierre. El plazo de 7 días es una propuesta, aún no una decisión definitiva. Mostrar la fecha prevista y dónde está conservada la copia. Esto no reemplaza las alertas por diferencias entre consola, archivo y nodo.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Cancelar la eliminación pendiente al volver a utilizarlo" ID="ID_357797582" CREATED="1793823903371" MODIFIED="1793823903371" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Reabrir o recargar el temporal en una consola, guardarlo desde la consola o detectar un cambio externo en disco cancela la eliminación pendiente. Para programarla otra vez debe evaluarse y confirmarse nuevamente. Si sigue abierto en alguna consola, no borrar. Las ediciones no guardadas dentro de IntelliJ no son detectables mediante la lectura del disco.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Al vencer: volver a comprobar antes de eliminar" ID="ID_1824820819" CREATED="1793823903374" MODIFIED="1793823903374" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Exigir conjuntamente: archivo propio del add-on con ficha válida y marcado explícito; plazo vencido; misma identidad, revisión y contenido que al marcar; contenido conservado en el nodo correcto del mapa efectivamente guardado en disco; ninguna consola utilizando ese archivo. Comparar el cuerpo del script sin el encabezado generado mediante reglas definidas, sin eliminar comentarios del usuario ni normalizar diferencias significativas. Revalidar justo antes del borrado. Si el archivo, nodo o mapa no existen, cambiaron o no pueden verificarse, conservar e informar.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="No decidir sólo por fechas" ID="ID_692320901" CREATED="1793823903374" MODIFIED="1793823903374" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Mapa guardado después del temporal NO demuestra que incluya esa versión: pudo guardarse por otro cambio. Una fecha vencida sólo habilita la comprobación, nunca basta para borrar. Fechas de archivo pueden alterarse por copia, sincronización o reloj; ante anomalías, conservar. La huella y el contenido respaldado son la comprobación de seguridad.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Ampliación de casos de prueba" ID="ID_1766699438" CREATED="1793823903380" MODIFIED="1793823903380" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      D01: vence plazo y todas las condiciones se mantienen -&gt; eliminar.
    </p>
    <p>
      D02: IntelliJ guarda después del marcado -&gt; cancelar programación y conservar.
    </p>
    <p>
      D03: consola reabre/recarga/guarda -&gt; cancelar programación.
    </p>
    <p>
      D04: nodo cambia o mapa no conserva contenido en disco -&gt; conservar.
    </p>
    <p>
      D05: ficha corrupta/ausente o archivo sustituido -&gt; conservar.
    </p>
    <p>
      D06: archivo abierto por otra consola -&gt; conservar.
    </p>
    <p>
      D07: archivo cambia durante revisión -&gt; suspender borrado.
    </p>
    <p>
      D08: ciclos repetidos no duplican encabezado ni lo añaden al nodo.
    </p>
    <p>
      D09: mapa sin ruta, movido, inaccesible o nodo eliminado -&gt; conservar.
    </p>
    <p>
      D10: cambios únicamente en buffer de IntelliJ -&gt; límite no detectable; mantener confirmación o recordatorio explícito.
    </p>
    <p>
      Todos son expectativas propuestas, no pruebas ejecutadas.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Decisiones resueltas — limpieza diferida" ID="ID_133111697" CREATED="1793823903380" MODIFIED="1793836484655" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      RESUELTO. Plazo inicial 7 días configurable, también usado para postergar. Revisión al abrir consola, sólo con candidatos vencidos. Fichas .freeplane-temp.json en carpeta de temporales. Sin controles adicionales de buffers no guardados de IntelliJ ni seguimiento complejo de mapas movidos. Marcado automático al cerrar; Apply borra no marcados y posterga marcados; cerrar formulario sin aplicar conserva todos.
    </p>
  </body>
</html></richcontent>
<node TEXT="1. Plazo: ¿7 días y configurable?" ID="ID_718364930" CREATED="1793824137051" MODIFIED="1793824137051"/>
<node TEXT="2. ¿Cuándo revisar vencidos: al abrir consola, al cerrarla, mediante comando manual o combinación? No implica ejecutar mientras Freeplane esté cerrado." ID="ID_1362650301" CREATED="1793824137057" MODIFIED="1793824137057"/>
<node TEXT="3. Formato/ubicación de fichas y persistencia entre reinicios." ID="ID_841084251" CREATED="1793824137071" MODIFIED="1793824137071"/>
<node TEXT="4. Recordatorio sobre buffers no guardados en IntelliJ y forma de recuperar archivos durante el plazo." ID="ID_656717354" CREATED="1793824137096" MODIFIED="1793824137096"/>
<node TEXT="5. Comportamiento ante mapas movidos o copias con el mismo ID de nodo: nunca inferir un destino sólo por ID." ID="ID_1893606010" CREATED="1793824137152" MODIFIED="1793824137152"/>
<node TEXT="6. Revisar C04/C10 y el árbol anterior: reemplazar eliminación inmediata por marcado más limpieza posterior una vez aprobada la alternativa." ID="ID_547965223" CREATED="1793824137187" MODIFIED="1793824137187"/>
</node>
<node TEXT="Decisiones del usuario — prevalecen sobre las propuestas anteriores" ID="ID_1310784657" CREATED="1793824705819" MODIFIED="1793836484659" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Decisiones del usuario implementadas en v0.0.9. Prevalecen sobre las propuestas iniciales: limpieza como ayuda práctica; marcado automático, plazo configurable y revisión no bloqueante con Apply. Los hitos inferiores conservan la historia de la definición; las preguntas sobre Apply y postergación ya están resueltas.
    </p>
  </body>
</html></richcontent>
<node TEXT="Plazo: 7 días, configurable" ID="ID_1907888584" CREATED="1793824705821" MODIFIED="1793824705821" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Plazo inicial aprobado: 7 días mediante preferencia. El formulario permite postergar archivos por otros 7 días. Si se cambia el plazo general, queda por precisar si la postergación usa siempre 7 días o el valor configurado.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Revisión al abrir consola; formulario no modal" ID="ID_824782695" CREATED="1793824705822" MODIFIED="1793824705822" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Al abrir una consola, revisar los temporales vencidos. Si no hay candidatos, no abrir ventana. Si hay candidatos, abrir un formulario con su listado. El formulario funciona en paralelo, no bloquea la consola y puede revisarse más tarde. Cada archivo tiene casilla para solicitar postergación por otros 7 días; marcar significa postergar, no borrar.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Fichas en la carpeta de temporales" ID="ID_1305604114" CREATED="1793824705822" MODIFIED="1793824705822" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Guardar las fichas de control en la misma carpeta configurada para los .groovy temporales. El formato de las fichas es una decisión de implementación.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="No ampliar protección de IntelliJ ni seguimiento de mapas" ID="ID_343073538" CREATED="1793824705824" MODIFIED="1793824705824" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El usuario considera fuera de alcance recordatorios o confirmaciones especiales para buffers no guardados en IntelliJ y seguimiento complejo de mapas movidos/copias/IDs. No implementar esas salvaguardas propuestas anteriormente. Sigue siendo válido que no podemos detectar cambios que aún no estén en disco.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Marcado automático cuando sea elegible" ID="ID_316262629" CREATED="1793824705825" MODIFIED="1793824705825" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Cuando el temporal cumple las reglas de elegibilidad acordadas, marcarlo automáticamente para eliminación posterior. Reemplaza la propuesta de pedir al usuario programar la eliminación al cerrar. Se mantienen las alertas por cambios pendientes; el marcado no elimina físicamente el archivo.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="CONFIRMADO e implementado — Apply y plazo de postergación" ID="ID_1170649441" CREATED="1793824705826" MODIFIED="1793836484661" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El usuario confirmó y probó el flujo: Apply posterga marcados y elimina no marcados; sin aplicar no se borra. La postergación usa el plazo configurado (7 días por defecto), contado desde Apply. La ventana no bloquea la consola ni borra automáticamente mientras se revisa.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Implementado: marcado automático y revisión no bloqueante — 73 comprobaciones" ID="ID_931787118" CREATED="1793825394382" MODIFIED="1793825394382" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      2026-11-04. Al cerrar se marcan automáticamente los temporales elegibles, sin borrar. Plazo configurable (7 días iniciales), usado también para postergar desde la fecha de Aplicar. Al abrir consola se revisa la carpeta; sólo se abre formulario si hay vencidos. Casilla marcada = postergar; Aplicar borra no marcados y posterga marcados; cerrar sin aplicar conserva todos. Resultados en la misma ventana, sin diálogo modal. Cada temporal nuevo tiene comentario de procedencia y ficha .freeplane-temp.json en su carpeta; la consola no envía el encabezado generado al nodo. Reabrir, recargar, guardar o detectar cambios externos cancela el marcado. Aplicar revalida revisión e identidad y conserva archivos en uso. No se añaden controles de buffers no guardados de IntelliJ ni seguimiento complejo de mapas movidos. Los temporales anteriores sin ficha no se borran automáticamente. Preferencia y traducciones añadidas al mapa fuente mediante MCP; guardar ese mapa antes de empaquetar. Gradle verifyTemporaryScripts jar: BUILD SUCCESSFUL, 73 comprobaciones; incluyen formulario real y Aplicar (postergación/borrado), cierre sin aplicar, fechas, reapertura, cambios externos y CRLF. JAR generado; pendiente instalación y validación manual en Freeplane mediante el ciclo del usuario.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Ronda de pruebas cotidianas — cerrada 2026-11-04" FOLDED="true" ID="ID_440119621" CREATED="1793836171351" MODIFIED="1793836171351" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Pruebas manuales realizadas por el usuario en el add-on instalado y reportadas en el chat. No es certificación exhaustiva de todos los casos de la tabla ni reemplaza las comprobaciones automáticas. Sin cambios de código durante esta ronda.
    </p>
  </body>
</html></richcontent>
<node TEXT="SUPERADO — IntelliJ guarda sin recargar en consola" ID="ID_249757314" CREATED="1793836171351" MODIFIED="1793836171351" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El archivo conservó la versión nueva de IntelliJ; el nodo mantuvo la original; la ficha quedó sin dueAt. Confirmación explícita del usuario.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SUPERADO — Cancelar cierre con cambios posteriores a recarga" ID="ID_1788094799" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Tras editar en IntelliJ, recargar y volver a editar en consola sin guardar, apareció la advertencia. Cancel mantuvo la consola abierta y la última edición intacta.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="RECORRIDO REALIZADO — Divergencia consola/IntelliJ" ID="ID_1659667171" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Se indicó probar No ante sobrescritura del archivo y cancelar la recarga para conservar ambas versiones. El usuario respondió «hecho. siguiente», sin detallar separadamente cada resultado. No atribuir una verificación más precisa de la informada.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SUPERADO — Recarga y envío al nodo" ID="ID_446334821" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El nodo quedó con la versión de IntelliJ recargada; el usuario guardó el mapa; cierre sin advertencias; temporal conservado con dueAt.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SUPERADO — Guardar archivo sin enviar al nodo" ID="ID_800633267" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Apareció advertencia de cambios del nodo. Continue without sending cerró; archivo con versión nueva, nodo con anterior y ficha sin dueAt.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SUPERADO — Enviar al nodo sin guardar archivo" ID="ID_248230933" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Se preguntó por guardar el archivo. Cancel mantuvo la consola y contenido; después No permitió cerrar. Nodo con versión nueva, archivo con anterior y ficha sin dueAt. Usuario confirmó «tal cual».
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SUPERADO — Reabrir temporal programado" ID="ID_828102597" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Al cargar un temporal con dueAt, la fecha desapareció de su ficha; el archivo permaneció intacto. Confirmación del usuario: «tal cual».
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="SUPERADO — Revisión de vencidos, aplicar y postergar" ID="ID_202264570" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El usuario adelantó dueAt de dos temporales descartables. Confirmó el funcionamiento indicado: ventana no bloqueante; cerrar sin aplicar conserva; reapertura muestra el listado; Apply posterga el marcado según plazo configurado y elimina el no marcado y su ficha.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Pendientes para otra sesión — no ejecutados en esta ronda" ID="ID_762168831" CREATED="1793836171353" MODIFIED="1793836171353" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Modificar un archivo después de aparecer en el formulario de vencidos y antes de Apply: debe conservarse. Casos adicionales de archivos ausentes o inaccesibles, varias consolas y cambios durante la revisión. Mantener pendientes los casos de diseño no recorridos; no marcarlos globalmente como superados. Los controles complejos sobre buffers de IntelliJ no guardados y mapas movidos quedaron fuera de alcance por decisión del usuario.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="AGENTS.md" STYLE_REF="freshNew" ID="ID_120718097" CREATED="1793837069237" MODIFIED="1793837111629" LINK="AGENTS.md"/>
</node>
<node TEXT="Retomar desarrollo — 2026-11-03" POSITION="top_or_left" ID="ID_1195080121" CREATED="1793742120266" MODIFIED="1793742120266" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Diagnóstico inicial con Codex. No se modificó código. Las pruebas funcionales todavía no se ejecutaron.
    </p>
  </body>
</html></richcontent>
<node TEXT="Verificado: Java 17 y Gradle 8.0 arrancan" ID="ID_1432020595" CREATED="1793742120269" MODIFIED="1793742120269" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Java de terminal: Temurin 17.0.20.1. IntelliJ tiene enlazado el subproyecto groovyConsole; su configuración declara SDK temurin-17 y nivel de lenguaje JDK_20: revisar coherencia.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Bloqueo de compilación: localizar instalación de Freeplane" ID="ID_1135951874" CREATED="1793742120270" MODIFIED="1793742120270" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      compileGroovy --offline falla al resolver freeplanelauncher, freeplaneviewer, freeplaneeditor y plugin de scripting. build.gradle apunta a C:/Program Files/Freeplane, carpeta inexistente en este equipo. No se ha comprobado aún la resolución con red.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Pendiente: confirmar versiones de Freeplane, Groovy y add-on instalado" ID="ID_188459380" CREATED="1793742120271" MODIFIED="1793742120271" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El MCP rechazó la consulta mediante Groovy porque la ejecución de scripts está deshabilitada en el nivel de disponibilidad actual.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Pendiente: pruebas funcionales en mapa de prueba" ID="ID_1588989488" CREATED="1793742120271" MODIFIED="1793742120271" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Abrir consola; cargar desde archivo, nota y script1; guardar en nodo; cambiar selección; recargar archivo; actualizar configuración del compilador. No marcar como probado hasta ejecutarlo.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Pendiente: reconciliar tareas históricas con v0.0.8" ID="ID_689176709" CREATED="1793742120273" MODIFIED="1793742120273" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Los archivos reales indican v0.0.8. Algunas notas del inventario conservan v0.0.2. Revisar pendientes de README y resaltado del editor antes de priorizar nuevas funciones.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Groovy 4.0.27 configurado; bloqueo identificado en freeplaneviewer.jar" ID="ID_1845477497" CREATED="1793743014764" MODIFIED="1793743014764" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      build.gradle usa la instalación en AppData/Local/Programs/Freeplane y Groovy 4.0.27. Corregida declaración de groovy-all como dependencia de biblioteca, no plataforma. jarsigner confirma que freeplaneviewer.jar falla con cannot verify signature block file META-INF/OPEN_SOU. Las otras tres bibliotecas directas de Freeplane no están firmadas. Retirar viewer no sirve: contiene MenuUtils, requerido por el add-on. Se restauró la dependencia. No se alteró la instalación ni se generó nuevo JAR. Siguiente paso: obtener una copia válida de esta biblioteca desde una distribución oficial de la misma versión y verificarla antes de usarla para compilar.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Comprobado: freeplaneviewer oficial coincide con el instalado" ID="ID_782887153" CREATED="1793743704944" MODIFIED="1793743704944" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Descargado https://github.com/freeplane/freeplane/releases/download/release-1.13.4/freeplane_bin-1.13.4.zip y extraído freeplaneviewer.jar en ignoredByGitHub/freeplane-check/freeplaneviewer-official.jar. SHA-256 de ambas copias: C9AECA85B5098536B41EBF19BA1E7BE09118B5CFCA613AFAEBFB34E327C0A43B. jarsigner con Java 17 falla también en la copia oficial: cannot verify signature block file META-INF/OPEN_SOU. Esto descarta una diferencia local del archivo instalado frente a ese ZIP oficial. Instalación actual intacta. Pendiente investigar el empaquetado y la validación de firmas antes de decidir cómo compilar.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Freeplane 1.13.1: firma de freeplaneviewer.jar verificable" ID="ID_994997047" CREATED="1793744212297" MODIFIED="1793744212297" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ZIP oficial descargado desde https://github.com/freeplane/freeplane/releases/download/release-1.13.1/freeplane_bin-1.13.1.zip. Extraído en ignoredByGitHub/freeplane-check/freeplaneviewer-1.13.1-official.jar. jarsigner devuelve jar verified con Java 17 y Java 21. Java 21 advierte que no puede establecer una cadena de confianza del certificado (PKIX); esto es distinto del error de bloque de firma de 1.13.4. SHA-256: 6C5AC0FF7940F03E15E0CE3EFDA50C40CAD4D540C203A3A88198956D069E0662. No se modificó la instalación ni se sustituyeron dependencias del proyecto.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Freeplane 1.13.3: firma de freeplaneviewer.jar verificable" ID="ID_1815008666" CREATED="1793744379088" MODIFIED="1793744379088" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      ZIP oficial: https://github.com/freeplane/freeplane/releases/download/release-1.13.3/freeplane_bin-1.13.3.zip. jarsigner devuelve jar verified con Java 17 y Java 21. Java 21 advierte cadena de confianza PKIX no establecida, igual que 1.13.1. SHA-256: CE44AD8D240BE4CD12B95711A60A088A890122C55FCCA59272C6FBC217077516. Comparación: 1.13.1 y 1.13.3 verificables; 1.13.4 falla con META-INF/OPEN_SOU en ambos Java. Instalación y dependencias sin cambios.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Compilación y JAR correctos con Freeplane 1.13.3" ID="ID_1493238849" CREATED="1793744486924" MODIFIED="1793744486924" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Distribución oficial extraída en ignoredByGitHub/freeplane-check/1.13.3/freeplane-1.13.3. build.gradle selecciona v13_3 mediante una ruta relativa al proyecto. Groovy 4.0.27; Java 17; Gradle 8.0. Comando gradlew.bat --offline compileGroovy jar: BUILD SUCCESSFUL. JAR generado en groovyConsole/lib/groovyConsole.jar. Instalación actual de Freeplane intacta. Pendiente probar la biblioteca en un entorno de prueba antes de instalar o generar una nueva versión distribuible del add-on.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="PASS: carga aislada y funciones básicas del nuevo JAR" ID="ID_564438603" CREATED="1793746262581" MODIFIED="1793746262581" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Ejecución por el usuario mediante MCP: RUN_SUCCEEDED, PASS, 4 comprobaciones. Se cargó groovyConsole/lib/groovyConsole.jar con cargador separado y se confirmó que la clase pertenece a ese cargador, no al del add-on instalado. Extensión groovy reconocida en minúsculas y mayúsculas; nodo simulado sin script devuelve [null,null]. Entorno activo: Java 21.0.11 y Groovy 4.0.27. No se abrió la consola ni se modificaron nodos durante la prueba. Pendientes: interfaz, ejecución de scripts, carga/guardado y recarga desde archivos y nodos.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Pruebas iniciales superadas — aceptadas por el usuario" ID="ID_947112206" CREATED="1793746752992" MODIFIED="1793746752992" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      2026-11-03. El usuario da por superadas las pruebas realizadas con el JAR recién compilado, cargado separadamente del instalado. Compilación: Freeplane 1.13.3, Groovy 4.0.27, Java 17 y Gradle 8.0. Ejecución: Freeplane instalado con Java 21.0.11 y Groovy 4.0.27. Verificado: carga aislada del JAR; funciones básicas; apertura de consola y botones (confirmación del usuario); ejecución inicial (confirmación del usuario); guardado y recuperación en nota y script1 mediante llamadas a los métodos de la consola; prioridad de script1; carga de archivo en editor. Cierre de pruebas aceptado por el usuario. No equivale a una prueba exhaustiva de todos los botones, diálogos, recarga o permisos. Instalación actual sin reemplazos. No se publicó ni instaló una nueva versión.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Siguiente: elegir primer cambio de desarrollo" ID="ID_1967567682" CREATED="1793746752993" MODIFIED="1793746752993" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Base de compilación recuperada y pruebas iniciales aceptadas. Candidatos detectados por lectura, aún pendientes de reproducir: actualización de configuración del compilador manteniendo el mismo nodo; confirmación de guardado cuando source=file. Después priorizar ampliaciones del mapa, como scripts temporales e integración con IntelliJ.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="RESUELTO: error de instalación por formato de la descripción" ID="ID_1150084082" CREATED="1793752381441" MODIFIED="1793752381441" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      El usuario identificó y confirmó la solución: el nodo con el contenido de la descripción del add-on tenía formato; al quitarlo y dejar texto simple, la instalación funcionó. Síntoma: Error on installation: org.freeplane.plugin.script.ExecuteScriptException: java.lang.StackOverflowError. También se observó al intentar instalar el paquete anterior y en Freeplane 1.13.3 con perfil aislado. Para próximas versiones, mantener ese nodo como texto simple en el mapa fuente y regenerar el paquete con el ciclo habitual. No atribuir este fallo al JAR compilado ni confundirlo con el problema separado de firma de freeplaneviewer.jar 1.13.4. El detalle interno del fallo del instalador no se ha determinado.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="Convención: el historial se mantiene en changes del mapa fuente" POSITION="bottom_or_right" ID="ID_737794537" CREATED="1793836974256" MODIFIED="1793836974256" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Información confirmada por el usuario el 2026-11-04. El script que genera el add-on desde groovyConsole/groovyConsole.mm también genera automáticamente el archivo de historial (history.md / History.md), tomando el contenido del nodo changes. Para documentar versiones, actualizar únicamente el nodo changes mediante MCP; no editar manualmente el archivo de historial generado. Esta regla reemplaza la práctica anterior de sincronizar manualmente ambos.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Convención: mantener README.MD directamente; mapa MDH histórico" POSITION="top_or_left" ID="ID_760483295" CREATED="1793837757146" MODIFIED="1793837757146" AI_EDITS="true"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Decisión del usuario, 2026-11-04: README.MD se edita directamente con Codex. README-groovyConsole-MDH.mm deja de ser fuente activa del README; se conserva como referencia histórica, sin actualizarlo ni sincronizarlo. Queda cancelado el pendiente anterior de sincronizar ese mapa antes de regenerar README. No eliminar el archivo histórico por esta decisión. La regla del historial es distinta y no cambia: actualizar changes en groovyConsole.mm; el generador produce history.md.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</map>
