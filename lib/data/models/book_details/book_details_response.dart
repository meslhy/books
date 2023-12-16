/// kind : "books#volume"
/// id : "yw6NEkx-ZKwC"
/// etag : "b1KA+jiokNw"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/yw6NEkx-ZKwC"
/// volumeInfo : {"title":"Sport and Policy","subtitle":"Issues and Analysis","authors":["Russell Hoye","Matthew Nicholson","Barrie Houlihan"],"publisher":"Routledge","publishedDate":"2010","description":"<p>Sport and Policy is the first book of its kind to critically analyse the regulatory role of the state and its impact on sport and the intersections of sport with other areas of government policy. Offering a unique and comprehensive examination of how sport is affected by a range of government policy, each chapter uses an international comparative approach in order to facilitate a broad understanding of sport and policy in a global context.</p> <p>This book is essential reading for any student or practitioner studying or working in policy today, and is:</p> <ul> <li>The first book to examine the intersection of sport with other (non-sport) policies from an international perspective including topics such as gambling, the media, social inclusion and economic development</li> <li>Far-reaching in scope encompassing government regulation and sport's intersections with other government policies</li> </ul> <p>This challenging text provides an accessible critical analysis of the intersections of sport with government policy.</p>","industryIdentifiers":[{"type":"ISBN_10","identifier":"0750685948"},{"type":"ISBN_13","identifier":"9780750685948"}],"readingModes":{"text":false,"image":true},"pageCount":202,"printedPageCount":218,"dimensions":{"height":"24.00 cm","width":"19.00 cm","thickness":"1.30 cm"},"printType":"BOOK","maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.1.0.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73NXHAajmrlgdUEQtxrBSVimlZjEG-xxxGlKOxY8ED59cALXnSr7el1sD-TEZ7Gz8Gv1VnzkpNrUZI3ne07IzIIgt9TeP1YCan3PJmYAy3SCZgkNswU4qomMFEj6YuaGdTKakS4&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70wns8GdS7nTw6skFTL01MlYYQzHnTrFwLp1yIGEcFOf9AsXFWFbZBYV6L9RFPDB6PgN7ku3TH2zHpziHGuCH42l5dQITnvHr6JgpP0UmXv3jZGSfpugxNFWWSUBdz17M57IBD0&source=gbs_api","small":"http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70dqNopuYikongPfv2vvFavYvNrnyyuTrWxJlRLzgIkjPBKKBHnFGaHswZnI9ZUVpmhULomIRKjWMc8qsx3I8SZyNqHyDpFfi36Xy7Nxcx3CpI1EViNZxUD2Lel5ZwguJRvybjw&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=yw6NEkx-ZKwC&hl=&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=yw6NEkx-ZKwC&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=yw6NEkx-ZKwC"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Sport_and_Policy-sample-pdf.acsm?id=yw6NEkx-ZKwC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=yw6NEkx-ZKwC&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}

class BookDetailsResponse {
  BookDetailsResponse({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo,});

  BookDetailsResponse.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    return map;
  }

}

/// country : "EG"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":false}
/// pdf : {"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Sport_and_Policy-sample-pdf.acsm?id=yw6NEkx-ZKwC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=yw6NEkx-ZKwC&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false

class AccessInfo {
  AccessInfo({
      this.country, 
      this.viewability, 
      this.embeddable, 
      this.publicDomain, 
      this.textToSpeechPermission, 
      this.epub, 
      this.pdf, 
      this.webReaderLink, 
      this.accessViewStatus, 
      this.quoteSharingAllowed,});

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub?.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf?.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }

}

/// isAvailable : true
/// acsTokenLink : "http://books.google.com.eg/books/download/Sport_and_Policy-sample-pdf.acsm?id=yw6NEkx-ZKwC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

class Pdf {
  Pdf({
      this.isAvailable, 
      this.acsTokenLink,});

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}

/// isAvailable : false

class Epub {
  Epub({
      this.isAvailable,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }

}

/// country : "EG"
/// saleability : "NOT_FOR_SALE"
/// isEbook : false

class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }
  String? country;
  String? saleability;
  bool? isEbook;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    return map;
  }

}

/// title : "Sport and Policy"
/// subtitle : "Issues and Analysis"
/// authors : ["Russell Hoye","Matthew Nicholson","Barrie Houlihan"]
/// publisher : "Routledge"
/// publishedDate : "2010"
/// description : "<p>Sport and Policy is the first book of its kind to critically analyse the regulatory role of the state and its impact on sport and the intersections of sport with other areas of government policy. Offering a unique and comprehensive examination of how sport is affected by a range of government policy, each chapter uses an international comparative approach in order to facilitate a broad understanding of sport and policy in a global context.</p> <p>This book is essential reading for any student or practitioner studying or working in policy today, and is:</p> <ul> <li>The first book to examine the intersection of sport with other (non-sport) policies from an international perspective including topics such as gambling, the media, social inclusion and economic development</li> <li>Far-reaching in scope encompassing government regulation and sport's intersections with other government policies</li> </ul> <p>This challenging text provides an accessible critical analysis of the intersections of sport with government policy.</p>"
/// industryIdentifiers : [{"type":"ISBN_10","identifier":"0750685948"},{"type":"ISBN_13","identifier":"9780750685948"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 202
/// printedPageCount : 218
/// dimensions : {"height":"24.00 cm","width":"19.00 cm","thickness":"1.30 cm"}
/// printType : "BOOK"
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.1.0.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73NXHAajmrlgdUEQtxrBSVimlZjEG-xxxGlKOxY8ED59cALXnSr7el1sD-TEZ7Gz8Gv1VnzkpNrUZI3ne07IzIIgt9TeP1YCan3PJmYAy3SCZgkNswU4qomMFEj6YuaGdTKakS4&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70wns8GdS7nTw6skFTL01MlYYQzHnTrFwLp1yIGEcFOf9AsXFWFbZBYV6L9RFPDB6PgN7ku3TH2zHpziHGuCH42l5dQITnvHr6JgpP0UmXv3jZGSfpugxNFWWSUBdz17M57IBD0&source=gbs_api","small":"http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70dqNopuYikongPfv2vvFavYvNrnyyuTrWxJlRLzgIkjPBKKBHnFGaHswZnI9ZUVpmhULomIRKjWMc8qsx3I8SZyNqHyDpFfi36Xy7Nxcx3CpI1EViNZxUD2Lel5ZwguJRvybjw&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=yw6NEkx-ZKwC&hl=&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=yw6NEkx-ZKwC&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=yw6NEkx-ZKwC"

class VolumeInfo {
  VolumeInfo({
      this.title, 
      this.subtitle, 
      this.authors, 
      this.publisher, 
      this.publishedDate, 
      this.description, 
      this.industryIdentifiers, 
      this.readingModes, 
      this.pageCount, 
      this.printedPageCount, 
      this.dimensions, 
      this.printType, 
      this.maturityRating, 
      this.allowAnonLogging, 
      this.contentVersion, 
      this.panelizationSummary, 
      this.imageLinks, 
      this.language, 
      this.previewLink, 
      this.infoLink, 
      this.canonicalVolumeLink,});

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    subtitle = json['subtitle'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    pageCount = json['pageCount'];
    printedPageCount = json['printedPageCount'];
    dimensions = json['dimensions'] != null ? Dimensions.fromJson(json['dimensions']) : null;
    printType = json['printType'];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  int? printedPageCount;
  Dimensions? dimensions;
  String? printType;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subtitle'] = subtitle;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] = industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printedPageCount'] = printedPageCount;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['printType'] = printType;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }

}

/// smallThumbnail : "http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73NXHAajmrlgdUEQtxrBSVimlZjEG-xxxGlKOxY8ED59cALXnSr7el1sD-TEZ7Gz8Gv1VnzkpNrUZI3ne07IzIIgt9TeP1YCan3PJmYAy3SCZgkNswU4qomMFEj6YuaGdTKakS4&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70wns8GdS7nTw6skFTL01MlYYQzHnTrFwLp1yIGEcFOf9AsXFWFbZBYV6L9RFPDB6PgN7ku3TH2zHpziHGuCH42l5dQITnvHr6JgpP0UmXv3jZGSfpugxNFWWSUBdz17M57IBD0&source=gbs_api"
/// small : "http://books.google.com/books/content?id=yw6NEkx-ZKwC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE70dqNopuYikongPfv2vvFavYvNrnyyuTrWxJlRLzgIkjPBKKBHnFGaHswZnI9ZUVpmhULomIRKjWMc8qsx3I8SZyNqHyDpFfi36Xy7Nxcx3CpI1EViNZxUD2Lel5ZwguJRvybjw&source=gbs_api"

class ImageLinks {
  ImageLinks({
      this.smallThumbnail, 
      this.thumbnail, 
      this.small,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
    small = json['small'];
  }
  String? smallThumbnail;
  String? thumbnail;
  String? small;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    map['small'] = small;
    return map;
  }

}

/// containsEpubBubbles : false
/// containsImageBubbles : false

class PanelizationSummary {
  PanelizationSummary({
      this.containsEpubBubbles, 
      this.containsImageBubbles,});

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }

}

/// height : "24.00 cm"
/// width : "19.00 cm"
/// thickness : "1.30 cm"

class Dimensions {
  Dimensions({
      this.height, 
      this.width, 
      this.thickness,});

  Dimensions.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    thickness = json['thickness'];
  }
  String? height;
  String? width;
  String? thickness;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['thickness'] = thickness;
    return map;
  }

}

/// text : false
/// image : true

class ReadingModes {
  ReadingModes({
      this.text, 
      this.image,});

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }
  bool? text;
  bool? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }

}

/// type : "ISBN_10"
/// identifier : "0750685948"

class IndustryIdentifiers {
  IndustryIdentifiers({
      this.type, 
      this.identifier,});

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }
  String? type;
  String? identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }

}