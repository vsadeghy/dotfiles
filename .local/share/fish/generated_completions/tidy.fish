# tidy
# Autogenerated from man page /usr/share/man/man1/tidy.1.gz
complete -c tidy -o output -s o --description 'write output to the specified <file>.'
complete -c tidy -o config --description 'set configuration options from the specified <file>.'
complete -c tidy -o file -s f --description 'write errors and warnings to the specified <file>.'
complete -c tidy -o modify -s m --description 'modify the original input files . SS Processing directives.'
complete -c tidy -o indent -s i --description 'indent element content.'
complete -c tidy -o wrap -s w --description 'wrap text at the specified <column>.  0 is assumed if <column> is missing.'
complete -c tidy -o upper -s u --description 'force tags to upper case.'
complete -c tidy -o clean -s c --description 'replace FONT, NOBR and CENTER tags with CSS.'
complete -c tidy -o bare -s b --description 'strip out smart quotes and em dashes, etc.'
complete -c tidy -o gdoc -s g --description 'produce clean version of html exported by Google Docs.'
complete -c tidy -o numeric -s n --description 'output numeric rather than named entities.'
complete -c tidy -o errors -s e --description 'show only errors and warnings.'
complete -c tidy -o quiet -s q --description 'suppress nonessential output.'
complete -c tidy -o omit --description 'omit optional start tags and end tags.'
complete -c tidy -o xml --description 'specify the input is well formed XML.'
complete -c tidy -o asxml -o asxhtml --description 'convert HTML to well formed XHTML.'
complete -c tidy -o ashtml --description 'force XHTML to well formed HTML.'
complete -c tidy -o access --description 'do additional accessibility checks (<level> = 0, 1, 2, 3).'
complete -c tidy -o raw --description 'output values above 127 without conversion to entities.'
complete -c tidy -o ascii --description 'use ISO-8859-1 for input, US-ASCII for output.'
complete -c tidy -o latin0 --description 'use ISO-8859-15 for input, US-ASCII for output.'
complete -c tidy -o latin1 --description 'use ISO-8859-1 for both input and output.'
complete -c tidy -o iso2022 --description 'use ISO-2022 for both input and output.'
complete -c tidy -o utf8 --description 'use UTF-8 for both input and output.'
complete -c tidy -o mac --description 'use MacRoman for input, US-ASCII for output.'
complete -c tidy -o win1252 --description 'use Windows-1252 for input, US-ASCII for output.'
complete -c tidy -o ibm858 --description 'use IBM-858 (CP850+Euro) for input, US-ASCII for output.'
complete -c tidy -o utf16le --description 'use UTF-16LE for both input and output.'
complete -c tidy -o utf16be --description 'use UTF-16BE for both input and output.'
complete -c tidy -o utf16 --description 'use UTF-16 for both input and output.'
complete -c tidy -o big5 --description 'use Big5 for both input and output.'
complete -c tidy -o shiftjis --description 'use Shift_JIS for both input and output . SS Miscellaneous.'
complete -c tidy -o version -s v --description 'show the version of Tidy.'
complete -c tidy -o help -s h -s '?' --description 'list the command line options.'
complete -c tidy -o help-config --description 'list all configuration options.'
complete -c tidy -o help-env --description 'show information about the environment and runtime configuration.'
complete -c tidy -o show-config --description 'list the current configuration settings.'
complete -c tidy -o export-config --description 'list the current configuration settings, suitable for a config file.'
complete -c tidy -o export-default-config --description 'list the default configuration settings, suitable for a config file.'
complete -c tidy -o help-option --description 'show a description of the <option>.'
complete -c tidy -o language --description 'set Tidy\'s output language to <lang>.  Specify \'-language help\' for more help.'
complete -c tidy -o xml-help --description 'list the command line options in XML format.'
complete -c tidy -o xml-config --description 'list all configuration options in XML format.'
complete -c tidy -o xml-strings --description 'output all of Tidy\'s strings in XML format.'
complete -c tidy -o xml-error-strings --description 'output error constants and strings in XML format.'
complete -c tidy -o xml-options-strings --description 'output option descriptions in XML format .'
complete -c tidy -l gnu-emacs --description 'br This option specifies that Tidy should change the format for reporting err…'
complete -c tidy -l markup --description 'br This option specifies if Tidy should generate a pretty printed version of …'
complete -c tidy -l mute --description 'br Use this option to prevent Tidy from displaying certain types of report ou…'
complete -c tidy -l mute-id --description 'br This option indicates whether or not Tidy should display message ID\'s with…'
complete -c tidy -l quiet --description 'br When enabled, this option limits Tidy\'s non-document output to report only…'
complete -c tidy -l show-body-only --description 'br Supported values: no, yes, auto  This option specifies if Tidy should prin…'
complete -c tidy -l show-errors --description 'br This option specifies the number Tidy uses to determine if further errors …'
complete -c tidy -l show-filename --description 'br This option specifies if Tidy should show the filename in messages.  eg:  .'
complete -c tidy -l show-info --description 'br This option specifies if Tidy should display info-level messages.'
complete -c tidy -l show-warnings --description 'br This option specifies if Tidy should suppress warnings.'
complete -c tidy -l add-meta-charset --description 'br This option, when enabled, adds a <meta> element and sets the charset attr…'
complete -c tidy -l add-xml-decl --description 'br This option specifies if Tidy should add the XML declaration when outputti…'
complete -c tidy -l add-xml-space --description 'br This option specifies if Tidy should add xml:space="preserve" to elements …'
complete -c tidy -l doctype --description 'br This option specifies the DOCTYPE declaration generated by Tidy.'
complete -c tidy -l input-xml --description 'br This option specifies if Tidy should use the XML parser rather than the er…'
complete -c tidy -l output-html --description 'br This option specifies if Tidy should generate pretty printed output, writi…'
complete -c tidy -l output-xhtml --description 'br This option specifies if Tidy should generate pretty printed output, writi…'
complete -c tidy -l output-xml --description 'br This option specifies if Tidy should pretty print output, writing it as we…'
complete -c tidy -l error-file --description 'br This option specifies the error file Tidy uses for errors and warnings.'
complete -c tidy -l keep-time --description 'br This option specifies if Tidy should keep the original modification time o…'
complete -c tidy -l output-file --description 'br This option specifies the output file Tidy uses for markup.'
complete -c tidy -l write-back --description 'br This option specifies if Tidy should write back the tidied markup to the s…'
complete -c tidy -l accessibility-check --description 'br Supported values: 0 (Tidy Classic), 1 (Priority 1 Checks), 2 (Priority 2 C…'
complete -c tidy -l force-output --description 'br This option specifies if Tidy should produce output even if errors are enc…'
complete -c tidy -l show-meta-change --description 'br This option enables a message whenever Tidy changes the content attribute …'
complete -c tidy -l warn-proprietary-attributes --description 'br This option specifies if Tidy should warn on proprietary attributes.'
complete -c tidy -l char-encoding --description 'br Supported values: raw, ascii, latin0, latin1, utf8, iso2022, mac, win1252,…'
complete -c tidy -l input-encoding --description 'br Supported values: raw, ascii, latin0, latin1, utf8, iso2022, mac, win1252,…'
complete -c tidy -l newline --description 'br Supported values: LF, CRLF, CR  The default is appropriate to the current …'
complete -c tidy -l output-bom --description 'br Supported values: no, yes, auto  This option specifies if Tidy should writ…'
complete -c tidy -l output-encoding --description 'br Supported values: raw, ascii, latin0, latin1, utf8, iso2022, mac, win1252,…'
complete -c tidy -l bare --description 'br This option specifies if Tidy should strip Microsoft specific HTML from Wo…'
complete -c tidy -l clean --description 'br This option specifies if Tidy should perform cleaning of some legacy prese…'
complete -c tidy -l drop-empty-elements --description 'br This option specifies if Tidy should discard empty elements.'
complete -c tidy -l drop-empty-paras --description 'br This option specifies if Tidy should discard empty paragraphs.'
complete -c tidy -l drop-proprietary-attributes --description 'br This option specifies if Tidy should strip out proprietary attributes, suc…'
complete -c tidy -l gdoc --description 'br This option specifies if Tidy should enable specific behavior for cleaning…'
complete -c tidy -l logical-emphasis --description 'br This option specifies if Tidy should replace any occurrence of <i> with <e…'
complete -c tidy -l merge-divs --description 'br Supported values: no, yes, auto  This option can be used to modify the beh…'
complete -c tidy -l merge-spans --description 'br Supported values: no, yes, auto  This option can be used to modify the beh…'
complete -c tidy -l word-2000 --description 'br This option specifies if Tidy should go to great pains to strip out all th…'
complete -c tidy -l ascii-chars --description 'br Can be used to modify behavior of the clean option when set to yes.'
complete -c tidy -l ncr --description 'br This option specifies if Tidy should allow numeric character references.'
complete -c tidy -l numeric-entities --description 'br This option specifies if Tidy should output entities other than the built-…'
complete -c tidy -l preserve-entities --description 'br This option specifies if Tidy should preserve well-formed entities as foun…'
complete -c tidy -l quote-ampersand --description 'br This option specifies if Tidy should output unadorned & characters as &amp…'
complete -c tidy -l quote-marks --description 'br This option specifies if Tidy should output " characters as &quot; as is p…'
complete -c tidy -l quote-nbsp --description 'br This option specifies if Tidy should output non-breaking space characters …'
complete -c tidy -l alt-text --description 'br This option specifies the default alt= text Tidy uses for <img> attributes…'
complete -c tidy -l anchor-as-name --description 'br This option controls the deletion or addition of the name attribute in ele…'
complete -c tidy -l assume-xml-procins --description 'br This option specifies if Tidy should change the parsing of processing inst…'
complete -c tidy -l coerce-endtags --description 'br This option specifies if Tidy should coerce a start tag into an end tag in…'
complete -c tidy -l css-prefix --description 'br This option specifies the prefix that Tidy uses for styles rules.'
complete -c tidy -l custom-tags --description 'br Supported values: no, blocklevel, empty, inline, pre  This option enables …'
complete -c tidy -l enclose-block-text --description 'br This option specifies if Tidy should insert a <p> element to enclose any t…'
complete -c tidy -l enclose-text --description 'br This option specifies if Tidy should enclose any text it finds in the body…'
complete -c tidy -l escape-scripts --description 'br This option causes items that look like closing tags, like </g to be escap…'
complete -c tidy -l fix-backslash --description 'br This option specifies if Tidy should replace backslash characters \\in URLs…'
complete -c tidy -l fix-bad-comments --description 'br Supported values: no, yes, auto  This option specifies if Tidy should repl…'
complete -c tidy -l fix-style-tags --description 'br This option specifies if Tidy should move all style tags to the head of th…'
complete -c tidy -l fix-uri --description 'br This option specifies if Tidy should check attribute values that carry URI…'
complete -c tidy -l literal-attributes --description 'br This option specifies how Tidy deals with whitespace characters within att…'
complete -c tidy -l lower-literals --description 'br This option specifies if Tidy should convert the value of an attribute tha…'
complete -c tidy -l repeated-attributes --description 'br Supported values: keep-first, keep-last  This option specifies if Tidy sho…'
complete -c tidy -l skip-nested --description 'br This option specifies that Tidy should skip nested tags when parsing scrip…'
complete -c tidy -l strict-tags-attributes --description 'br This options ensures that tags and attributes are applicable for the versi…'
complete -c tidy -l uppercase-attributes --description 'br Supported values: no, yes, preserve  This option specifies if Tidy should …'
complete -c tidy -l uppercase-tags --description 'br This option specifies if Tidy should output tag names in upper case.'
complete -c tidy -l decorate-inferred-ul --description 'br This option specifies if Tidy should decorate inferred <ul> elements with …'
complete -c tidy -l escape-cdata --description 'br This option specifies if Tidy should convert <![CDATA[]]> sections to norm…'
complete -c tidy -l hide-comments --description 'br This option specifies if Tidy should not print out comments.'
complete -c tidy -l join-classes --description 'br This option specifies if Tidy should combine class names to generate a sin…'
complete -c tidy -l join-styles --description 'br This option specifies if Tidy should combine styles to generate a single, …'
complete -c tidy -l merge-emphasis --description 'br This option specifies if Tidy should merge nested <b> and <i> elements; fo…'
complete -c tidy -l replace-color --description 'br This option specifies if Tidy should replace numeric values in color attri…'
complete -c tidy -l new-blocklevel-tags --description 'br Supported values: tagX, tagY, .'
complete -c tidy -l new-empty-tags --description 'br Supported values: tagX, tagY, .'
complete -c tidy -l new-inline-tags --description 'br Supported values: tagX, tagY, .'
complete -c tidy -l new-pre-tags --description 'br Supported values: tagX, tagY, .'
complete -c tidy -l break-before-br --description 'br This option specifies if Tidy should output a line break before each <br> …'
complete -c tidy -l indent --description 'br Supported values: no, yes, auto  This option specifies if Tidy should inde…'
complete -c tidy -l indent-attributes --description 'br This option specifies if Tidy should begin each attribute on a new line.'
complete -c tidy -l indent-cdata --description 'br This option specifies if Tidy should indent <![CDATA[]]> sections.'
complete -c tidy -l indent-spaces --description 'br This option specifies the number of spaces or tabs that Tidy uses to inden…'
complete -c tidy -l indent-with-tabs --description 'br This option specifies if Tidy should indent with tabs instead of spaces, a…'
complete -c tidy -l keep-tabs --description 'br With the default no Tidy will replace all source tabs with spaces, control…'
complete -c tidy -l omit-optional-tags --description 'br This option specifies if Tidy should omit optional start tags and end tags…'
complete -c tidy -l priority-attributes --description 'br Supported values: attributeX, attributeY, .'
complete -c tidy -l punctuation-wrap --description 'br This option specifies if Tidy should line wrap after some Unicode or Chine…'
complete -c tidy -l sort-attributes --description 'br Supported values: none, alpha  This option specifies that Tidy should sort…'
complete -c tidy -l tab-size --description 'br This option specifies the number of columns that Tidy uses between success…'
complete -c tidy -l tidy-mark --description 'br This option specifies if Tidy should add a meta element to the document he…'
complete -c tidy -l vertical-space --description 'br Supported values: no, yes, auto  This option specifies if Tidy should add …'
complete -c tidy -l wrap --description 'br This option specifies the right margin Tidy uses for line wrapping.'
complete -c tidy -l wrap-asp --description 'br This option specifies if Tidy should line wrap text contained within ASP p…'
complete -c tidy -l wrap-attributes --description 'br This option specifies if Tidy should line-wrap attribute values, meaning t…'
complete -c tidy -l wrap-jste --description 'br This option specifies if Tidy should line wrap text contained within JSTE …'
complete -c tidy -l wrap-php --description 'br This option specifies if Tidy should line wrap text contained within PHP p…'
complete -c tidy -l wrap-script-literals --description 'br This option specifies if Tidy should line wrap string literals that appear…'
complete -c tidy -l wrap-sections --description '.'
