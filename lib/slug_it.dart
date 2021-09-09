library slug_it;

/// SlugIT ==> make slug from string.
class SlugIT {
  String makeSlug(String text, {String separator = '-'}) {
    Map<String, String> chars = _latinMap();
    chars.addAll(_greekMap());
    chars.addAll(_turkishMap());
    chars.addAll(_russianMap());
    chars.addAll(_ukrainianMap());
    chars.addAll(_czechMap());
    chars.addAll(_polishMap());
    chars.addAll(_latvianMap());
    chars.addAll(_currencyMap());
    chars.addAll(_symbolsMap());
    chars.addAll(_vietnameseMap());
    String slug = '';
    text = text.toLowerCase();
    for (var i = 0; i < text.length; i++) {
      var char = text[i];
      if (chars[char] != null) {
        slug += chars[char]!;
      } else {
        slug += char;
      }
    }
    slug = slug.replaceAll(RegExp(r"[^A-Za-z0-9]"), " ");
    //Remove multiple white space
    slug = slug.replaceAll(RegExp(' +'), ' ');
    //Remove whitespace from first and last
    slug = slug.trim();
    slug = slug.replaceAll(RegExp(r"\s+"), separator);
    return slug;
  }

  static Map<String, String> _vietnameseMap() => {
        //a
        'ả': 'a',
        'ạ': 'a',
        'ấ': 'a',
        'ậ': 'a',
        'ă': 'a',
        'ắ': 'a',
        'ằ': 'a',
        'ẳ': 'a',
        'ẵ': 'a',
        'ặ': 'a',
        'ầ': 'a',
        'ẩ': 'a',
        'ẫ': 'a',
        //d
        'đ': 'd',
        //e
        'ẹ': 'e',
        'ẻ': 'e',
        'ẽ': 'e',
        'ế': 'e',
        'ề': 'e',
        'ệ': 'e',
        'ể': 'e',
        'ễ': 'e',
        //i
        'ỉ': 'i',
        'ĩ': 'i',
        'ị': 'i',
        //o
        'ố': 'o',
        'ỗ': 'o',
        'ộ': 'o',
        'ợ': 'o',
        'ờ': 'o',
        'ớ': 'o',
        'ơ': 'o',
        //u
        'ù': 'u',
        'ũ': 'u',
        'ụ': 'u',
        'ư': 'u',
        'ứ': 'u',
        'ừ': 'u',
        'ử': 'u',
        'ữ': 'u',
        'ự': 'u',
        //  y
        'ỳ': 'y',
        'ỷ': 'y',
        'ỹ': 'y',
        'ỵ': 'y',
      };

  static Map<String, String> _latinMap() => {
        'ß': 'ss',
        'à': 'a',
        'á': 'a',
        'â': 'a',
        'ã': 'a',
        'ä': 'a',
        'å': 'a',
        'æ': 'ae',
        'ç': 'c',
        'è': 'e',
        'é': 'e',
        'ê': 'e',
        'ë': 'e',
        'ì': 'i',
        'í': 'i',
        'î': 'i',
        'ï': 'i',
        'ð': 'd',
        'ñ': 'n',
        'ò': 'o',
        'ó': 'o',
        'ô': 'o',
        'õ': 'o',
        'ö': 'o',
        'ő': 'o',
        'ø': 'o',
        'ù': 'u',
        'ú': 'u',
        'û': 'u',
        'ü': 'u',
        'ű': 'u',
        'ý': 'y',
        'þ': 'th',
        'ÿ': 'y'
      };

  static Map<String, String> _greekMap() => {
        'α': 'a',
        'β': 'b',
        'γ': 'g',
        'δ': 'd',
        'ε': 'e',
        'ζ': 'z',
        'η': 'h',
        'θ': '8',
        'ι': 'i',
        'κ': 'k',
        'λ': 'l',
        'μ': 'm',
        'ν': 'n',
        'ξ': '3',
        'ο': 'o',
        'π': 'p',
        'ρ': 'r',
        'σ': 's',
        'τ': 't',
        'υ': 'y',
        'φ': 'f',
        'χ': 'x',
        'ψ': 'ps',
        'ω': 'w',
        'ά': 'a',
        'έ': 'e',
        'ί': 'i',
        'ό': 'o',
        'ύ': 'y',
        'ή': 'h',
        'ώ': 'w',
        'ς': 's',
        'ϊ': 'i',
        'ΰ': 'y',
        'ϋ': 'y',
        'ΐ': 'i',
        'Α': 'A',
        'Β': 'B',
        'Γ': 'G',
        'Δ': 'D',
        'Ε': 'E',
        'Ζ': 'Z',
        'Η': 'H',
        'Θ': '8',
        'Ι': 'I',
        'Κ': 'K',
        'Λ': 'L',
        'Μ': 'M',
        'Ν': 'N',
        'Ξ': '3',
        'Ο': 'O',
        'Π': 'P',
        'Ρ': 'R',
        'Σ': 'S',
        'Τ': 'T',
        'Υ': 'Y',
        'Φ': 'F',
        'Χ': 'X',
        'Ψ': 'PS',
        'Ω': 'W',
        'Ά': 'A',
        'Έ': 'E',
        'Ί': 'I',
        'Ό': 'O',
        'Ύ': 'Y',
        'Ή': 'H',
        'Ώ': 'W',
        'Ϊ': 'I',
        'Ϋ': 'Y'
      };

  static Map<String, String> _turkishMap() => {
        'ş': 's',
        'Ş': 'S',
        'ı': 'i',
        'İ': 'I',
        'ç': 'c',
        'Ç': 'C',
        'ü': 'u',
        'Ü': 'U',
        'ö': 'o',
        'Ö': 'O',
        'ğ': 'g',
        'Ğ': 'G'
      };

  static Map<String, String> _russianMap() => {
        'а': 'a',
        'б': 'b',
        'в': 'v',
        'г': 'g',
        'д': 'd',
        'е': 'e',
        'ё': 'yo',
        'ж': 'zh',
        'з': 'z',
        'и': 'i',
        'й': 'j',
        'к': 'k',
        'л': 'l',
        'м': 'm',
        'н': 'n',
        'о': 'o',
        'п': 'p',
        'р': 'r',
        'с': 's',
        'т': 't',
        'у': 'u',
        'ф': 'f',
        'х': 'h',
        'ц': 'c',
        'ч': 'ch',
        'ш': 'sh',
        'щ': 'sh',
        'ъ': '',
        'ы': 'y',
        'ь': '',
        'э': 'e',
        'ю': 'yu',
        'я': 'ya',
        'А': 'A',
        'Б': 'B',
        'В': 'V',
        'Г': 'G',
        'Д': 'D',
        'Е': 'E',
        'Ё': 'Yo',
        'Ж': 'Zh',
        'З': 'Z',
        'И': 'I',
        'Й': 'J',
        'К': 'K',
        'Л': 'L',
        'М': 'M',
        'Н': 'N',
        'О': 'O',
        'П': 'P',
        'Р': 'R',
        'С': 'S',
        'Т': 'T',
        'У': 'U',
        'Ф': 'F',
        'Х': 'H',
        'Ц': 'C',
        'Ч': 'Ch',
        'Ш': 'Sh',
        'Щ': 'Sh',
        'Ъ': '',
        'Ы': 'Y',
        'Ь': '',
        'Э': 'E',
        'Ю': 'Yu',
        'Я': 'Ya'
      };

  static Map<String, String> _ukrainianMap() => {
        'Є': 'Ye',
        'І': 'I',
        'Ї': 'Yi',
        'Ґ': 'G',
        'є': 'ye',
        'і': 'i',
        'ї': 'yi',
        'ґ': 'g'
      };

  static Map<String, String> _czechMap() => {
        'č': 'c',
        'ď': 'd',
        'ě': 'e',
        'ň': 'n',
        'ř': 'r',
        'š': 's',
        'ť': 't',
        'ů': 'u',
        'ž': 'z',
        'Č': 'C',
        'Ď': 'D',
        'Ě': 'E',
        'Ň': 'N',
        'Ř': 'R',
        'Š': 'S',
        'Ť': 'T',
        'Ů': 'U',
        'Ž': 'Z'
      };

  static Map<String, String> _polishMap() => {
        'ą': 'a',
        'ć': 'c',
        'ę': 'e',
        'ł': 'l',
        'ń': 'n',
        'ó': 'o',
        'ś': 's',
        'ź': 'z',
        'ż': 'z',
        'Ą': 'A',
        'Ć': 'C',
        'Ę': 'e',
        'Ł': 'L',
        'Ń': 'N',
        'Ó': 'o',
        'Ś': 'S',
        'Ź': 'Z',
        'Ż': 'Z'
      };

  static Map<String, String> _latvianMap() => {
        'ā': 'a',
        'č': 'c',
        'ē': 'e',
        'ģ': 'g',
        'ī': 'i',
        'ķ': 'k',
        'ļ': 'l',
        'ņ': 'n',
        'š': 's',
        'ū': 'u',
        'ž': 'z',
        'Ā': 'A',
        'Č': 'C',
        'Ē': 'E',
        'Ģ': 'G',
        'Ī': 'i',
        'Ķ': 'k',
        'Ļ': 'L',
        'Ņ': 'N',
        'Š': 'S',
        'Ū': 'u',
        'Ž': 'Z'
      };

  static Map<String, String> _currencyMap() => {
        '€': 'euro',
        '\$': 'dollar',
        '₢': 'cruzeiro',
        '₣': 'french franc',
        '£': 'pound',
        '₤': 'lira',
        '₥': 'mill',
        '₦': 'naira',
        '₧': 'peseta',
        '₨': 'rupee',
        '₩': 'won',
        '₪': 'new shequel',
        '₫': 'dong',
        '₭': 'kip',
        '₮': 'tugrik',
        '₯': 'drachma',
        '₰': 'penny',
        '₱': 'peso',
        '₲': 'guarani',
        '₳': 'austral',
        '₴': 'hryvnia',
        '₵': 'cedi',
        '¢': 'cent',
        '¥': 'yen',
        '元': 'yuan',
        '円': 'yen',
        '﷼': 'rial',
        '₠': 'ecu',
        '¤': 'currency',
        '฿': 'baht'
      };

  static Map<String, String> _symbolsMap() => {
        '©': '(c)',
        'œ': 'oe',
        'Œ': 'OE',
        '∑': 'sum',
        '®': '(r)',
        '†': '+',
        '“': '"',
        '”': '"',
        '‘': "'",
        '’': "'",
        '∂': 'd',
        'ƒ': 'f',
        '™': 'tm',
        '℠': 'sm',
        '…': '...',
        '˚': 'o',
        'º': 'o',
        'ª': 'a',
        '•': '*',
        '∆': 'delta',
        '∞': 'infinity',
        '♥': 'love',
        '&': 'and'
      };
}
