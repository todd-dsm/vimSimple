" http://vim.wikia.com/wiki/Unique_sorting
" Works like sort(), optionally taking in a comparator (just like the
" original), except that duplicate entries will be removed.
function! SortUnique( list, ... )
  let dictionary = {}
  for i in a:list
    execute "let dictionary[ '" . i . "' ] = ''"
  endfor
  let result = []
  if ( exists( 'a:1' ) )
    let result = sort( keys( dictionary ), a:1 )
  else
    let result = sort( keys( dictionary ) )
  endif
  return result
endfunction

" Ref: http://www.iana.org/assignments/language-subtag-registry
" Version: 2010/09/07
" Description: only get two-letter language tag
let lang_tag = [
    \ 'aa', 'ab', 'ae', 'af', 'ak', 'am', 'an', 'ar', 'as', 'av', 'ay', 'az', 'ba', 'be', 'bg', 'bh', 'bi', 'bm',
    \ 'bn', 'bo', 'br', 'bs', 'ca', 'ce', 'ch', 'co', 'cr', 'cs', 'cu', 'cv', 'cy', 'da', 'de', 'dv', 'dz', 'ee',
    \ 'el', 'en', 'eo', 'es', 'et', 'eu', 'fa', 'ff', 'fi', 'fj', 'fo', 'fr', 'fy', 'ga', 'gd', 'gl', 'gn', 'gu',
    \ 'gv', 'ha', 'he', 'hi', 'ho', 'hr', 'ht', 'hu', 'hy', 'hz', 'ia', 'id', 'ie', 'ig', 'ii', 'ik', 'in', 'io',
    \ 'is', 'it', 'iu', 'iw', 'ja', 'ji', 'jv', 'jw', 'ka', 'kg', 'ki', 'kj', 'kk', 'kl', 'km', 'kn', 'ko', 'kr',
    \ 'ks', 'ku', 'kv', 'kw', 'ky', 'la', 'lb', 'lg', 'li', 'ln', 'lo', 'lt', 'lu', 'lv', 'mg', 'mh', 'mi', 'mk',
    \ 'ml', 'mn', 'mo', 'mr', 'ms', 'mt', 'my', 'na', 'nb', 'nd', 'ne', 'ng', 'nl', 'nn', 'no', 'nr', 'nv', 'ny',
    \ 'oc', 'oj', 'om', 'or', 'os', 'pa', 'pi', 'pl', 'ps', 'pt', 'qu', 'rm', 'rn', 'ro', 'ru', 'rw', 'sa', 'sc',
    \ 'sd', 'se', 'sg', 'sh', 'si', 'sk', 'sl', 'sm', 'sn', 'so', 'sq', 'sr', 'ss', 'st', 'su', 'sv', 'sw', 'ta',
    \ 'te', 'tg', 'th', 'ti', 'tk', 'tl', 'tn', 'to', 'tr', 'ts', 'tt', 'tw', 'ty', 'ug', 'uk', 'ur', 'uz', 've',
    \ 'vi', 'vo', 'wa', 'wo', 'xh', 'yi', 'yo', 'za', 'zh', 'zu', 'zh-CN', 'zh-TW']

" Ref: http://www.iana.org/assignments/character-sets 
" Version: 2010/09/07
let charset = [
    \ 'ANSI_X3.4-1968', 'ISO_8859-1:1987', 'ISO_8859-2:1987', 'ISO_8859-3:1988', 'ISO_8859-4:1988', 'ISO_8859-5:1988', 
    \ 'ISO_8859-6:1987', 'ISO_8859-7:1987', 'ISO_8859-8:1988', 'ISO_8859-9:1989', 'ISO-8859-10', 'ISO_6937-2-add', 'JIS_X0201', 
    \ 'JIS_Encoding', 'Shift_JIS', 'Extended_UNIX_Code_Packed_Format_for_Japanese', 'Extended_UNIX_Code_Fixed_Width_for_Japanese',
    \ 'BS_4730', 'SEN_850200_C', 'IT', 'ES', 'DIN_66003', 'NS_4551-1', 'NF_Z_62-010', 'ISO-10646-UTF-1', 'ISO_646.basic:1983', 
    \ 'INVARIANT', 'ISO_646.irv:1983', 'NATS-SEFI', 'NATS-SEFI-ADD', 'NATS-DANO', 'NATS-DANO-ADD', 'SEN_850200_B', 'KS_C_5601-1987',
    \ 'ISO-2022-KR', 'EUC-KR', 'ISO-2022-JP', 'ISO-2022-JP-2', 'JIS_C6220-1969-jp', 'JIS_C6220-1969-ro', 'PT', 'greek7-old', 
    \ 'latin-greek', 'NF_Z_62-010_(1973)', 'Latin-greek-1', 'ISO_5427', 'JIS_C6226-1978', 'BS_viewdata', 'INIS', 'INIS-8', 
    \ 'INIS-cyrillic', 'ISO_5427:1981', 'ISO_5428:1980', 'GB_1988-80', 'GB_2312-80', 'NS_4551-2', 'videotex-suppl', 'PT2', 
    \ 'ES2', 'MSZ_7795.3', 'JIS_C6226-1983', 'greek7', 'ASMO_449', 'iso-ir-90', 'JIS_C6229-1984-a', 'JIS_C6229-1984-b', 
    \ 'JIS_C6229-1984-b-add', 'JIS_C6229-1984-hand', 'JIS_C6229-1984-hand-add', 'JIS_C6229-1984-kana', 'ISO_2033-1983', 
    \ 'ANSI_X3.110-1983', 'T.61-7bit', 'T.61-8bit', 'ECMA-cyrillic', 'CSA_Z243.4-1985-1', 'CSA_Z243.4-1985-2', 'CSA_Z243.4-1985-gr', 
    \ 'ISO_8859-6-E', 'ISO_8859-6-I', 'T.101-G2', 'ISO_8859-8-E', 'ISO_8859-8-I', 'CSN_369103', 'JUS_I.B1.002', 'IEC_P27-1', 
    \ 'JUS_I.B1.003-serb', 'JUS_I.B1.003-mac', 'greek-ccitt', 'NC_NC00-10:81', 'ISO_6937-2-25', 'GOST_19768-74', 'ISO_8859-supp', 
    \ 'ISO_10367-box', 'latin-lap', 'JIS_X0212-1990', 'DS_2089', 'us-dk', 'dk-us', 'KSC5636', 'UNICODE-1-1-UTF-7', 'ISO-2022-CN', 
    \ 'ISO-2022-CN-EXT', 'UTF-8', 'ISO-8859-13', 'ISO-8859-14', 'ISO-8859-15', 'ISO-8859-16', 'GBK', 'GB18030', 'OSD_EBCDIC_DF04_15', 
    \ 'OSD_EBCDIC_DF03_IRV', 'OSD_EBCDIC_DF04_1', 'ISO-11548-1', 'KZ-1048', 'ISO-10646-UCS-2', 'ISO-10646-UCS-4', 'ISO-10646-UCS-Basic',
    \ 'ISO-10646-Unicode-Latin1', 'ISO-10646-J-1', 'ISO-Unicode-IBM-1261', 'ISO-Unicode-IBM-1268', 'ISO-Unicode-IBM-1276', 
    \ 'ISO-Unicode-IBM-1264', 'ISO-Unicode-IBM-1265', 'UNICODE-1-1', 'SCSU', 'UTF-7', 'UTF-16BE', 'UTF-16LE', 'UTF-16', 'CESU-8', 
    \ 'UTF-32', 'UTF-32BE', 'UTF-32LE', 'BOCU-1', 'ISO-8859-1-Windows-3.0-Latin-1', 'ISO-8859-1-Windows-3.1-Latin-1', 
    \ 'ISO-8859-2-Windows-Latin-2', 'ISO-8859-9-Windows-Latin-5', 'hp-roman8', 'Adobe-Standard-Encoding', 'Ventura-US', 
    \ 'Ventura-International', 'DEC-MCS', 'IBM850', 'PC8-Danish-Norwegian', 'IBM862', 'PC8-Turkish', 'IBM-Symbols', 'IBM-Thai', 
    \ 'HP-Legal', 'HP-Pi-font', 'HP-Math8', 'Adobe-Symbol-Encoding', 'HP-DeskTop', 'Ventura-Math', 'Microsoft-Publishing', 
    \ 'Windows-31J', 'GB2312', 'Big5', 'macintosh', 'IBM037', 'IBM038', 'IBM273', 'IBM274', 'IBM275', 'IBM277', 'IBM278', 
    \ 'IBM280', 'IBM281', 'IBM284', 'IBM285', 'IBM290', 'IBM297', 'IBM420', 'IBM423', 'IBM424', 'IBM437', 'IBM500', 'IBM851', 
    \ 'IBM852', 'IBM855', 'IBM857', 'IBM860', 'IBM861', 'IBM863', 'IBM864', 'IBM865', 'IBM868', 'IBM869', 'IBM870', 'IBM871', 
    \ 'IBM880', 'IBM891', 'IBM903', 'IBM904', 'IBM905', 'IBM918', 'IBM1026', 'EBCDIC-AT-DE', 'EBCDIC-AT-DE-A', 'EBCDIC-CA-FR', 
    \ 'EBCDIC-DK-NO', 'EBCDIC-DK-NO-A', 'EBCDIC-FI-SE', 'EBCDIC-FI-SE-A', 'EBCDIC-FR', 'EBCDIC-IT', 'EBCDIC-PT', 'EBCDIC-ES', 
    \ 'EBCDIC-ES-A', 'EBCDIC-ES-S', 'EBCDIC-UK', 'EBCDIC-US', 'UNKNOWN-8BIT', 'MNEMONIC', 'MNEM', 'VISCII', 'VIQR', 'KOI8-R', 
    \ 'HZ-GB-2312', 'IBM866', 'IBM775', 'KOI8-U', 'IBM00858', 'IBM00924', 'IBM01140', 'IBM01141', 'IBM01142', 'IBM01143', 
    \ 'IBM01144', 'IBM01145', 'IBM01146', 'IBM01147', 'IBM01148', 'IBM01149', 'Big5-HKSCS', 'IBM1047', 'PTCP154', 'Amiga-1251', 
    \ 'KOI7-switched', 'BRF', 'TSCII', 'windows-1250', 'windows-1251', 'windows-1252', 'windows-1253', 'windows-1254', 'windows-1255', 
    \ 'windows-1256', 'windows-1257', 'windows-1258', 'TIS-620', ]

let core_attributes = {'accesskey': [], 'class': [], 'contenteditable': ['true', 'false', ''], 'contextmenu': [], 'dir': ['ltr', 'rtl'], 'draggable': ['true', 'false'], 'hidden': ['hidden', ''], 'id': [], 'lang': [], 'spellcheck': ['true', 'false', ''], 'style': [], 'tabindex': [], 'title': []}
let event_handler_attributes = {'onabort': [], 'onblur': [], 'oncanplay': [], 'oncanplaythrough': [], 'onchange': [], 'onclick': [], 'oncontextmenu': [], 'ondblclick': [], 'ondrag': [], 'ondragend': [], 'ondragenter': [], 'ondragleave': [], 'ondragover': [], 'ondragstart': [], 'ondrop': [], 'ondurationchange': [], 'onemptied': [], 'onended': [], 'onerror': [], 'onfocus': [], 'onformchange': [], 'onforminput': [], 'oninput': [], 'oninvalid': [], 'onkeydown': [], 'onkeypress': [], 'onkeyup': [], 'onload': [], 'onloadeddata': [], 'onloadedmetadata': [], 'onloadstart': [], 'onmousedown': [], 'onmousemove': [], 'onmouseout': [], 'onmouseover': [], 'onmouseup': [], 'onmousewheel': [], 'onpause': [], 'onplay': [], 'onplaying': [], 'onprogress': [], 'onratechange': [], 'onreadystatechange': [], 'onscroll': [], 'onseeked': [], 'onseeking': [], 'onselect': [], 'onshow': [], 'onstalled': [], 'onsubmit': [], 'onsuspend': [], 'ontimeupdate': [], 'onvolumechange': [], 'onwaiting': []}
let xml_attributes = {'xml:lang': lang_tag, 'xml:space': [], 'xml:base': []}

let global_attributes = extend(core_attributes, xml_attributes)
if !exists('g:event_handler_attributes_complete')
    let g:event_handler_attributes_complete = 1
endif
if g:event_handler_attributes_complete == 1
    let global_attributes = extend(global_attributes, event_handler_attributes)
endif

let phrasing_elements = ['a', 'em', 'strong', 'small', 'mark', 'abbr', 'dfn', 'i', 'b', 'code', 'var', 'samp', 'kbd', 'sup', 'sub', 'q', 'cite', 'span', 'bdo', 'br', 'wbr', 'ins', 'del', 'img', 'embed', 'object', 'iframe', 'map', 'area', 'script', 'noscript', 'ruby', 'video', 'audio', 'input', 'textarea', 'select', 'button', 'label', 'output', 'datalist', 'keygen', 'progress', 'command', 'canvas', 'time', 'meter']

let metadata_elements = ['link', 'style', 'meta name', 'meta', 'script', 'noscript', 'command']

let flow_elements = SortUnique( phrasing_elements + ['p', 'hr', 'pre', 'ul', 'ol', 'dl', 'div', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hgroup', 'address', 'blockquote', 'ins', 'del', 'object', 'map', 'noscript', 'section', 'nav', 'article', 'aside', 'header', 'footer', 'video', 'audio', 'figure', 'table', 'form', 'fieldset', 'menu', 'canvas', 'details'] )

let g:xmldata_html5 = {
\ 'vimxmlentities': ['AElig', 'Aacute', 'Acirc', 'Agrave', 'Alpha', 'Aring', 'Atilde', 'Auml', 'Beta', 'Ccedil', 'Chi', 'Dagger', 'Delta', 'ETH', 'Eacute', 'Ecirc', 'Egrave', 'Epsilon', 'Eta', 'Euml', 'Gamma', 'Iacute', 'Icirc', 'Igrave', 'Iota', 'Iuml', 'Kappa', 'Lambda', 'Mu', 'Ntilde', 'Nu', 'OElig', 'Oacute', 'Ocirc', 'Ograve', 'Omega', 'Omicron', 'Oslash', 'Otilde', 'Ouml', 'Phi', 'Pi', 'Prime', 'Psi', 'Rho', 'Scaron', 'Sigma', 'THORN', 'Tau', 'Theta', 'Uacute', 'Ucirc', 'Ugrave', 'Upsilon', 'Uuml', 'Xi', 'Yacute', 'Yuml', 'Zeta', 'aacute', 'acirc', 'acute', 'aelig', 'agrave', 'alefsym', 'alpha', 'amp', 'and', 'ang', 'apos', 'aring', 'asymp', 'atilde', 'auml', 'bdquo', 'beta', 'brvbar', 'bull', 'cap', 'ccedil', 'cedil', 'cent', 'chi', 'circ', 'clubs', 'cong', 'copy', 'crarr', 'cup', 'curren', 'dArr', 'dagger', 'darr', 'deg', 'delta', 'diams', 'divide', 'eacute', 'ecirc', 'egrave', 'empty', 'emsp', 'ensp', 'epsilon', 'equiv', 'eta', 'eth', 'euml', 'euro', 'exist', 'fnof', 'forall', 'frac12', 'frac14', 'frac34', 'frasl', 'gamma', 'ge', 'gt', 'hArr', 'harr', 'hearts', 'hellip', 'iacute', 'icirc', 'iexcl', 'igrave', 'image', 'infin', 'int', 'iota', 'iquest', 'isin', 'iuml', 'kappa', 'lArr', 'lambda', 'lang', 'laquo', 'larr', 'lceil', 'ldquo', 'le', 'lfloor', 'lowast', 'loz', 'lrm', 'lsaquo', 'lsquo', 'lt', 'macr', 'mdash', 'micro', 'middot', 'minus', 'mu', 'nabla', 'nbsp', 'ndash', 'ne', 'ni', 'not', 'notin', 'nsub', 'ntilde', 'nu', 'oacute', 'ocirc', 'oelig', 'ograve', 'oline', 'omega', 'omicron', 'oplus', 'or', 'ordf', 'ordm', 'oslash', 'otilde', 'otimes', 'ouml', 'para', 'part', 'permil', 'perp', 'phi', 'pi', 'piv', 'plusmn', 'pound', 'prime', 'prod', 'prop', 'psi', 'quot', 'rArr', 'radic', 'rang', 'raquo', 'rarr', 'rceil', 'rdquo', 'real', 'reg', 'rfloor', 'rho', 'rlm', 'rsaquo', 'rsquo', 'sbquo', 'scaron', 'sdot', 'sect', 'shy', 'sigma', 'sigmaf', 'sim', 'spades', 'sub', 'sube', 'sum', 'sup', 'sup1', 'sup2', 'sup3', 'supe', 'szlig', 'tau', 'there4', 'theta', 'thetasym', 'thinsp', 'thorn', 'tilde', 'times', 'trade', 'uArr', 'uacute', 'uarr', 'ucirc', 'ugrave', 'uml', 'upsih', 'upsilon', 'uuml', 'weierp', 'xi', 'yacute', 'yen', 'yuml', 'zeta', 'zwj', 'zwnj'],
\ 'vimxmlroot': ['html'],
\ 'a': [
\ filter(copy(flow_elements), "!(v:val =~ 'details\\|embed\\|iframe\\|img\\|keygen\\|label\\|menu\\|select\\|textarea')"),
\ extend(copy(global_attributes), {'name': [], 'href': [], 'target': [], 'rel': [], 'hreflang': lang_tag, 'media': [], 'type': []}) 
\ ],
\ 'abbr': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'address': [
\ filter(copy(flow_elements), "!(v:val =~ 'address\\|nav\\|article\\|header\\|footer\\|section\\|aside\\|h1\\|h2\\|h3\\|h4\\|h5\\|h6')"),
\ global_attributes
\ ],
\ 'area': [
\ [],
\ extend(copy(global_attributes), {'alt': [], 'href': [], 'target': [], 'rel': [], 'media': [], 'hreflang': lang_tag, 'type': [], 'shape': ['rect', 'circle', 'poly', 'default'], 'coords': []})
\ ],
\ 'article': [
\ flow_elements + ['style'],
\ global_attributes
\ ],
\ 'aside': [
\ flow_elements + ['style'],
\ global_attributes
\ ],
\ 'audio': [
\ flow_elements + ['source', 'track'],
\ extend(copy(global_attributes), {'autoplay': ['autoplay', ''], 'preload': ['none', 'metadata', 'auto', ''], 'controls': ['controls', ''], 'loop': ['loop', ''], 'src': []})
\ ],
\ 'b': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'base': [
\ [],
\ extend(copy(global_attributes), {'href': [], 'target': []})
\ ],
\ 'bdo': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'blockquote': [
\ flow_elements,
\ extend(copy(global_attributes), {'cite': []})
\ ],
\ 'body': [
\ flow_elements,
\ extend(copy(global_attributes), {'onafterprint': [], 'onbeforeprint': [], 'onbeforeunload': [], 'onblur': [], 'onerror': [], 'onfocus': [], 'onhashchange': [], 'onload': [], 'onmessage': [], 'onoffline': [], 'ononline': [], 'onpopstate': [], 'onredo': [], 'onresize': [], 'onstorage': [], 'onundo': [], 'onunload': []})
\ ],
\ 'br': [
\ [],
\ global_attributes
\ ],
\ 'button': [
\ filter(copy(phrasing_elements), "!(v:val =~ 'details\\|embed\\|button\\|img\\|keygen\\|label\\|menu\\|select\\|textarea')"),
\ extend(copy(global_attributes), {'type': ['submit', 'reset', 'button'], 'name': [], 'disabled': ['disabled', ''], 'form': [], 'value': [], 'formaction': [], 'autofocus': ['autofocus', ''], 'formenctype': ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], 'formmethod': ['get', 'post', 'put', 'delete'], 'formtarget': [], 'formnovalidate': ['formnovalidate', '']})
\ ],
\ 'canvas': [
\ flow_elements,
\ extend(copy(global_attributes), {'height': [], 'width': []})
\ ],
\ 'caption': [
\ filter(copy(flow_elements), "!(v:val =~ 'table')"),
\ global_attributes
\ ],
\ 'cite': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'code': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'col': [
\ [],
\ extend(copy(global_attributes), {'span': []})
\ ],
\ 'colgroup': [
\ [],
\ extend(copy(global_attributes), {'span': []})
\ ],
\ 'command': [
\ ['col'],
\ extend(copy(global_attributes), {'type': ['command', 'radio', 'checkbox'], 'radiogroup': [], 'checked': ['checked', ''], 'label': [], 'icon': [], 'disabled': ['disabled', '']})
\ ],
\ 'datalist': [
\ phrasing_elements + ['option'],
\ global_attributes
\ ],
\ 'dd': [
\ flow_elements,
\ global_attributes
\ ],
\ 'del': [
\ flow_elements,
\ extend(copy(global_attributes), {'cite': [], 'datetime': []})
\ ],
\ 'details': [
\ flow_elements + ['summary'],
\ extend(copy(global_attributes), {'open': ['open', '']})
\ ],
\ 'dfn': [
\ filter(copy(phrasing_elements), "!(v:val =~ 'dfn')"),
\ global_attributes
\ ],
\ 'div': [
\ flow_elements + ['style'],
\ global_attributes
\ ],
\ 'dl': [
\ ['dt', 'dd'],
\ global_attributes
\ ],
\ 'dt': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'em': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'embed': [
\ [],
\ extend(copy(global_attributes), {'src': [], 'type': [], 'height': [], 'width': []})
\ ],
\ 'fieldset': [
\ flow_elements + ['legend'],
\ extend(copy(global_attributes), {'name': [], 'disabled': ['disabled', ''], 'form': []})
\ ],
\ 'figcaption': [
\ flow_elements,
\ global_attributes
\ ],
\ 'figure': [
\ flow_elements + ['figcaption'],
\ global_attributes
\ ],
\ 'footer': [
\ filter(copy(flow_elements), "!(v:val =~ 'address\\|header\\|footer')"),
\ global_attributes
\ ],
\ 'form': [
\ flow_elements,
\ extend(copy(global_attributes), {'name': [], 'action': [], 'enctype': ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], 'method': ['get', 'post', 'put', 'delete'], 'target': [], 'novalidate': ['novalidate', ''], 'accept-charset': charset, 'autocomplete': ['on', 'off']})
\ ],
\ 'h1': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'h2': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'h3': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'h4': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'h5': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'h6': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'head': [
\ metadata_elements + ['title', 'base'],
\ global_attributes
\ ],
\ 'header': [
\ filter(copy(flow_elements), "!(v:val =~ 'address\\|header\\|footer')"),
\ global_attributes
\ ],
\ 'hgroup': [
\ ['h1', 'h2', 'h3', 'h4', 'h5', 'h6'],
\ global_attributes
\ ],
\ 'hr': [
\ [],
\ global_attributes
\ ],
\ 'html': [
\ ['head', 'body'],
\ extend(copy(global_attributes), {'manifest': []})
\ ],
\ 'i': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'iframe': [
\ [],
\ extend(copy(global_attributes), {'src': [], 'name': [], 'width': [], 'height': [], 'sandbox': [], 'seamless': ['seamless', '']})
\ ],
\ 'img': [
\ [],
\ extend(copy(global_attributes), {'src': [], 'alt': [], 'height': [], 'width': [], 'usemap': [], 'ismap': ['ismap', '']})
\ ],
\ 'input': [
\ [],
\ extend(copy(global_attributes), {'type': ['text', 'passwprd', 'checkbox', 'radio', 'button', 'submit', 'reset', 'file', 'hidden', 'image', 'datetime', 'datetime-local', 'date', 'month', 'time', 'week', 'number', 'range', 'email', 'url', 'search', 'tel', 'coloe'], 'name': [], 'disabled': ['disabled', ''], 'form': [], 'maxlength': [], 'readonly': ['readonly', ''], 'size': [], 'value': [], 'autocomplete': ['on', 'off'], 'autofocus': ['autofocus', ''], 'list': [], 'pattern': [], 'required': ['required', ''], 'placeholder': [], 'checked': ['checked'], 'accept': [], 'multiple': ['multiple', ''], 'alt': [], 'src': [], 'height': [], 'width': [], 'min': [], 'max': [], 'step': [], 'formenctype': ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], 'formmethod': ['get', 'post', 'put', 'delete'], 'formtarget': [], 'formnovalidate': ['formnovalidate', '']})
\ ],
\ 'ins': [
\ flow_elements,
\ extend(copy(global_attributes), {'cite': [], 'datetime': []})
\ ],
\ 'kbd': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'keygen': [
\ [],
\ extend(copy(global_attributes), {'challenge': [], 'keytype': ['rsa'], 'autofocus': ['autofocus', ''], 'name': [], 'disabled': ['disabled', ''], 'form': []})
\ ],
\ 'label': [
\ filter(copy(phrasing_elements), "!(v:val =~ 'label')"),
\ extend(copy(global_attributes), {'for': [], 'form': []})
\ ],
\ 'legend': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'li': [
\ flow_elements,
\ extend(copy(global_attributes), {'value': []})
\ ],
\ 'link': [
\ [],
\ extend(copy(global_attributes), {'href': [], 'rel': [], 'hreflang': lang_tag, 'media': [], 'type': [], 'sizes': ['any']})
\ ],
\ 'map': [
\ flow_elements,
\ extend(copy(global_attributes), {'name': []})
\ ],
\ 'mark': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'menu': [
\ flow_elements + ['li'],
\ extend(copy(global_attributes), {'type': ['toolbar', 'context'], 'label': []})
\ ],
\ 'meta': [
\ [],
\ extend(copy(global_attributes), {'name': [], 'http-equiv': ['refresh', 'default-style', 'content-type'], 'content': [], 'charset': charset})
\ ],
\ 'meter': [
\ phrasing_elements,
\ extend(copy(global_attributes), {'value': [], 'min': [], 'low': [], 'high': [], 'max': [], 'optimum': []})
\ ],
\ 'nav': [
\ flow_elements,
\ global_attributes
\ ],
\ 'noscript': [
\ flow_elements + ['link', 'meta', 'style'],
\ global_attributes
\ ],
\ 'object': [
\ flow_elements + ['param'],
\ extend(copy(global_attributes), {'data': [], 'type': [], 'height': [], 'width': [], 'usemap': [], 'name': [], 'form': []})
\ ],
\ 'ol': [
\ ['li'],
\ extend(copy(global_attributes), {'start': [], 'reversed': ['reversed', '']})
\ ],
\ 'optgroup': [
\ ['option'],
\ extend(copy(global_attributes), {'label': [], 'disabled': ['disabled', '']})
\ ],
\ 'option': [
\ [''],
\ extend(copy(global_attributes), {'disabled': ['disabled', ''], 'selected': ['selected', ''], 'label': [], 'value': []})
\ ],
\ 'output': [
\ phrasing_elements,
\ extend(copy(global_attributes), {'name': [], 'form': [], 'for': []})
\ ],
\ 'p': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'param': [
\ [],
\ extend(copy(global_attributes), {'name': [], 'value': []})
\ ],
\ 'pre': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'progress': [
\ filter(copy(phrasing_elements), "!(v:val =~ 'progress')"),
\ extend(copy(global_attributes), {'value': [], 'max': []})
\ ],
\ 'q': [
\ phrasing_elements,
\ extend(copy(global_attributes), {'cite': []})
\ ],
\ 'rp': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'rt': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'ruby': [
\ phrasing_elements + ['rp', 'rt'],
\ global_attributes
\ ],
\ 'samp': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'script': [
\ [],
\ extend(copy(global_attributes), {'src': [], 'defer': ['defer', ''], 'async': ['async', ''], 'type': [], 'charset': charset})
\ ],
\ 'section': [
\ flow_elements + ['style'],
\ global_attributes
\ ],
\ 'select': [
\ ['optgroup', 'option'],
\ extend(copy(global_attributes), {'name': [], 'disabled': ['disabled', ''], 'form': [], 'size': [], 'multiple': ['multiple', '']})
\ ],
\ 'small': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'source': [
\ [],
\ extend(copy(global_attributes), {'src': [], 'type': [], 'media': []})
\ ],
\ 'span': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'strong': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'style': [
\ [],
\ extend(copy(global_attributes), {'type': [], 'media': [], 'scoped': ['scoped', '']})
\ ],
\ 'sub': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'summary': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'sup': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'table': [
\ ['caption', 'col', 'colgroup', 'thead', 'tfoot', 'tbody', 'tr'],
\ extend(copy(global_attributes), {'summary': []})
\ ],
\ 'tbody': [
\ ['tr'],
\ global_attributes
\ ],
\ 'td': [
\ flow_elements,
\ extend(copy(global_attributes), {'colspan': [], 'rowspan': [], 'headers': []})
\ ],
\ 'textarea': [
\ [''],
\ extend(copy(global_attributes), {'name': [], 'disabled': ['disabled', ''], 'form': [], 'readonly': ['readonly', ''], 'maxlength': [], 'autofocus': ['autofocus', ''], 'required': ['required', ''], 'placeholder': [], 'rows': [], 'wrap': ['hard', 'soft'], 'cols': []})
\ ],
\ 'tfoot': [
\ ['tr'],
\ global_attributes
\ ],
\ 'th': [
\ phrasing_elements,
\ extend(copy(global_attributes), {'scope': ['row', 'col', 'rowgroup', 'colgroup'], 'colspan': [], 'rowspan': [], 'headers': []})
\ ],
\ 'thead': [
\ ['tr'],
\ global_attributes
\ ],
\ 'time': [
\ phrasing_elements,
\ extend(copy(global_attributes), {'datetime': [], 'pubdate': ['pubdate', '']})
\ ],
\ 'title': [
\ [''],
\ global_attributes
\ ],
\ 'tr': [
\ ['th', 'td'],
\ global_attributes
\ ],
\ 'track': [
\ [],
\ extend(copy(global_attributes), {'kind': ['subtitles', 'captions', 'descriptions', 'chapters', 'metadata'], 'src': [], 'charset': charset, 'srclang': lang_tag, 'label': []})
\ ],
\ 'ul': [
\ ['li'],
\ global_attributes
\ ],
\ 'var': [
\ phrasing_elements,
\ global_attributes
\ ],
\ 'video': [
\ flow_elements + ['source', 'track'],
\ extend(copy(global_attributes), {'autoplay': ['autoplay', ''], 'preload': ['none', 'metadata', 'auto', ''], 'controls': ['controls', ''], 'loop': ['loop', ''], 'poster': [], 'height': [], 'width': [], 'src': []})
\ ],
\ 'wbr': [
\ [],
\ global_attributes
\ ],
\ 'vimxmlattrinfo' : {
\ 'accept' : ['ContentType', ''],
\ 'accesskey' : ['Character', ''],
\ 'action' : ['*URI', ''],
\ 'align' : ['String', ''],
\ 'alt' : ['*Text', ''],
\ 'archive' : ['UriList', ''],
\ 'autoplay' : ['Bool', ''],
\ 'axis' : ['CDATA', ''],
\ 'border' : ['Pixels', ''],
\ 'cellpadding' : ['Length', ''],
\ 'cellspacing' : ['Length', ''],
\ 'char' : ['Character', ''],
\ 'charoff' : ['Length', ''],
\ 'charset' : ['Charset', ''],
\ 'checked' : ['Bool', ''],
\ 'class' : ['CDATA', ''],
\ 'codetype' : ['ContentType', ''],
\ 'cols' : ['*Number', ''],
\ 'colspan' : ['Number', ''],
\ 'content' : ['*CDATA', ''],
\ 'contenteditable' : ['Bool', ''],
\ 'contextmenu' : ['ID', ''],
\ 'controls' : ['Bool', ''],
\ 'coords' : ['Coords', ''],
\ 'data' : ['URI', ''],
\ 'datetime' : ['DateTime', ''],
\ 'declare' : ['Bool', ''],
\ 'defer' : ['Bool', ''],
\ 'dir' : ['String', ''],
\ 'disabled' : ['Bool', ''],
\ 'draggable' : ['Bool', ''],
\ 'enctype' : ['ContentType', ''],
\ 'for' : ['ID', ''],
\ 'form' : ['ID', ''],
\ 'formaction' : ['*URL', ''],
\ 'formnovalidate ' : ['Bool', ''],
\ 'headers' : ['IDREFS', ''],
\ 'height' : ['Number', ''],
\ 'href' : ['*URI', ''],
\ 'hreflang' : ['LangCode', ''],
\ 'id' : ['ID', ''],
\ 'ismap' : ['Bool', ''],
\ 'label' : ['*Text', ''],
\ 'lang' : ['LangCode', ''],
\ 'list' : ['ID', ''],
\ 'longdesc' : ['URI', ''],
\ 'loop' : ['Bool', ''],
\ 'manifest' : ['*URL', ''],
\ 'max' : ['Number', ''],
\ 'maxlength' : ['Number', ''],
\ 'media' : ['MediaDesc', ''],
\ 'method' : ['String', ''],
\ 'min' : ['Number', ''],
\ 'multiple' : ['Bool', ''],
\ 'name' : ['CDATA', ''],
\ 'nohref' : ['Bool', ''],
\ 'onblur' : ['Script', ''],
\ 'onchange' : ['Script', ''],
\ 'onclick' : ['Script', ''],
\ 'ondblclick' : ['Script', ''],
\ 'onfocus' : ['Script', ''],
\ 'onkeydown' : ['Script', ''],
\ 'onkeypress' : ['Script', ''],
\ 'onkeyup' : ['Script', ''],
\ 'onload' : ['Script', ''],
\ 'onmousedown' : ['Script', ''],
\ 'onmousemove' : ['Script', ''],
\ 'onmouseout' : ['Script', ''],
\ 'onmouseover' : ['Script', ''],
\ 'onmouseup' : ['Script', ''],
\ 'onreset' : ['Script', ''],
\ 'onselect' : ['Script', ''],
\ 'onsubmit' : ['Script', ''],
\ 'onunload' : ['Script', ''],
\ 'placeholder' : ['String', ''],
\ 'poster' : ['*URI', ''],
\ 'preload' : ['Bool', ''],
\ 'profile' : ['URI', ''],
\ 'pubdate' : ['Bool', ''],
\ 'readonly' : ['Bool', ''],
\ 'rel' : ['LinkTypes', ''],
\ 'rows' : ['*Number', ''],
\ 'rules' : ['String', ''],
\ 'scheme' : ['CDATA', ''],
\ 'selected' : ['Bool', ''],
\ 'shape' : ['Shape', ''],
\ 'size' : ['CDATA', ''],
\ 'span' : ['Number', ''],
\ 'spellcheck ' : ['Bool', ''],
\ 'src' : ['*URI', ''],
\ 'srclang' : ['LangCode', ''],
\ 'standby' : ['Text', ''],
\ 'step' : ['Number', ''],
\ 'style' : ['StyleSheet', ''],
\ 'summary' : ['*Text', ''],
\ 'tabindex' : ['Number', ''],
\ 'title' : ['Text', ''],
\ 'type' : ['', ''],
\ 'usemap' : ['URI', ''],
\ 'valign' : ['String', ''],
\ 'valuetype' : ['String', ''],
\ 'width' : ['Number', ''],
\ 'wrap' : ['', ''],
\ 'xmlns' : ['URI', ''],
\ 'xml:base' : ['*URI', '']
\ },
\ 'vimxmltaginfo': {
\ 'area': ['/>', ''],
\ 'base': ['/>', ''],
\ 'br': ['/>', ''],
\ 'col': ['/>', ''],
\ 'hr': ['/>', ''],
\ 'img': ['/>', ''],
\ 'input': ['/>', ''],
\ 'link': ['/>', ''],
\ 'meta': ['/>', ''],
\ 'wbr': ['/>', ''],
\ }
\ }