class Wallet {
  String? address;
  Crypto? crypto;
  String? id;
  int? version;

  Wallet({this.address, this.crypto, this.id, this.version});

  Wallet.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    crypto =
        json['crypto'] != null ? new Crypto.fromJson(json['crypto']) : null;
    id = json['id'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    if (this.crypto != null) {
      data['crypto'] = this.crypto!.toJson();
    }
    data['id'] = this.id;
    data['version'] = this.version;
    return data;
  }
}

class Crypto {
  String? cipher;
  Cipherparams? cipherparams;
  String? ciphertext;
  String? kdf;
  Kdfparams? kdfparams;
  String? mac;

  Crypto(
      {this.cipher,
      this.cipherparams,
      this.ciphertext,
      this.kdf,
      this.kdfparams,
      this.mac});

  Crypto.fromJson(Map<String, dynamic> json) {
    cipher = json['cipher'];
    cipherparams = json['cipherparams'] != null
        ? new Cipherparams.fromJson(json['cipherparams'])
        : null;
    ciphertext = json['ciphertext'];
    kdf = json['kdf'];
    kdfparams = json['kdfparams'] != null
        ? new Kdfparams.fromJson(json['kdfparams'])
        : null;
    mac = json['mac'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cipher'] = this.cipher;
    if (this.cipherparams != null) {
      data['cipherparams'] = this.cipherparams!.toJson();
    }
    data['ciphertext'] = this.ciphertext;
    data['kdf'] = this.kdf;
    if (this.kdfparams != null) {
      data['kdfparams'] = this.kdfparams!.toJson();
    }
    data['mac'] = this.mac;
    return data;
  }
}

class Cipherparams {
  String? iv;

  Cipherparams({this.iv});

  Cipherparams.fromJson(Map<String, dynamic> json) {
    iv = json['iv'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iv'] = this.iv;
    return data;
  }
}

class Kdfparams {
  int? dklen;
  int? n;
  int? p;
  int? r;
  String? salt;

  Kdfparams({this.dklen, this.n, this.p, this.r, this.salt});

  Kdfparams.fromJson(Map<String, dynamic> json) {
    dklen = json['dklen'];
    n = json['n'];
    p = json['p'];
    r = json['r'];
    salt = json['salt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dklen'] = this.dklen;
    data['n'] = this.n;
    data['p'] = this.p;
    data['r'] = this.r;
    data['salt'] = this.salt;
    return data;
  }
}
