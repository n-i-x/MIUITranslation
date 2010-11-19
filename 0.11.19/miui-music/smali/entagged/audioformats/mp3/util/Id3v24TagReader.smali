.class public Lentagged/audioformats/mp3/util/Id3v24TagReader;
.super Ljava/lang/Object;


# instance fields
.field private conversion22to23:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->initConversionTable()V

    return-void
.end method

.method private convertFromId3v22(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/Id3v24TagReader;->conversion22to23:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private createId3Frame(Ljava/lang/String;[BB)Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    if-ne p3, v0, :cond_5

    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->convertFromId3v22(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;

    invoke-direct {v1, v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;-><init>(Ljava/lang/String;[BB)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v1, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    invoke-direct {v1, v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-direct {v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;-><init>([BB)V

    goto :goto_1

    :cond_2
    const-string v1, "UFID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    invoke-direct {v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;-><init>([BB)V

    goto :goto_1

    :cond_3
    const-string v1, "APIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    invoke-direct {v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;-><init>([BB)V

    goto :goto_1

    :cond_4
    new-instance v1, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;

    invoke-direct {v1, v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;-><init>(Ljava/lang/String;[BB)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, p1

    goto :goto_0
.end method

.method private initConversionTable()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/mp3/util/Id3v24TagReader;->conversion22to23:Ljava/util/Hashtable;

    const/16 v0, 0x3f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BUF"

    aput-object v1, v0, v4

    const-string v1, "CNT"

    aput-object v1, v0, v3

    const-string v1, "COM"

    aput-object v1, v0, v5

    const-string v1, "CRA"

    aput-object v1, v0, v6

    const-string v1, "CRM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ETC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EQU"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GEO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IPL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LNK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MCI"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MLL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PIC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "POP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "REV"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RVA"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SLT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "STC"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TAL"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TBP"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TCM"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TCO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TCR"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TDA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TDY"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "TEN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TFT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "TIM"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "TKE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "TLA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TLE"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "TMT"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "TOA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "TOF"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TOL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "TOR"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "TOT"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "TP1"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "TP2"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "TP3"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "TP4"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "TPA"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "TPB"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "TRC"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "TRD"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "TRK"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "TSI"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "TSS"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "TT1"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "TT2"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "TT3"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "TXT"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "TXX"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "TYE"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "UFI"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "ULT"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "WAF"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "WAR"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "WAS"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "WCM"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "WCP"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "WPB"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "WXX"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RBUF"

    aput-object v2, v1, v4

    const-string v2, "PCNT"

    aput-object v2, v1, v3

    const-string v2, "COMM"

    aput-object v2, v1, v5

    const-string v2, "AENC"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "ETCO"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "EQUA"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "GEOB"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "IPLS"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "LINK"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "MCDI"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "MLLT"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "APIC"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "POPM"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "RVRB"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "RVAD"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "SYLT"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SYTC"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "TALB"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "TBPM"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "TCOM"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "TCON"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "TCOP"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "TDAT"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "TDLY"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "TENC"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "TFLT"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TIME"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "TKEY"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "TLAN"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "TLEN"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "TMED"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "TOPE"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "TOFN"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "TOLY"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "TORY"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "TOAL"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "TPE1"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "TPE2"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "TPE3"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "TPE4"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "TPOS"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "TPUB"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "TSRC"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "TRDA"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "TRCK"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "TSIZ"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "TSSE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "TIT1"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "TIT2"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "TIT3"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "TXXX"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "TYER"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "UFID"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "USLT"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "WOAF"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "WOAR"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "WOAS"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "WCOM"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "WCOP"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "WPUB"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "WXXX"

    aput-object v3, v1, v2

    move v2, v4

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lentagged/audioformats/mp3/util/Id3v24TagReader;->conversion22to23:Ljava/util/Hashtable;

    aget-object v4, v0, v2

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processExtendedHeader(Ljava/nio/ByteBuffer;B)I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-ne p2, v0, :cond_0

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSize(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSyncsafeInteger(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private readSize(Ljava/nio/ByteBuffer;I)I
    .locals 2

    const/4 v0, 0x0

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSyncsafeInteger(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private readSyncsafeInteger(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-instance v1, Lentagged/audioformats/mp3/Id3v2Tag;

    invoke-direct {v1}, Lentagged/audioformats/mp3/Id3v2Tag;-><init>()V

    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-eq p3, v2, :cond_0

    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne p3, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    aget-boolean v2, p2, v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p3}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->processExtendedHeader(Ljava/nio/ByteBuffer;B)I

    :cond_1
    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    if-ne p3, v2, :cond_3

    const/4 v2, 0x3

    :goto_0
    move v3, v7

    :goto_1
    if-ge v3, v0, :cond_2

    new-array v4, v2, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v5, v2, :cond_4

    :cond_2
    :goto_2
    return-object v1

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    aget-byte v4, v4, v7

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, p3}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSize(Ljava/nio/ByteBuffer;I)I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v4, v6, :cond_5

    if-gtz v4, :cond_6

    :cond_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " Frame size error, skiping the rest of the tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-byte v6, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-eq p3, v6, :cond_7

    sget-byte v6, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne p3, v6, :cond_9

    :cond_7
    const/4 v6, 0x2

    :goto_3
    add-int/2addr v4, v6

    new-array v4, v4, [B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v5, v4, p3}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->createId3Frame(Ljava/lang/String;[BB)Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v1, v4}, Lentagged/audioformats/mp3/Id3v2Tag;->add(Lentagged/audioformats/generic/TagField;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    move v6, v7

    goto :goto_3

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v6

    goto :goto_4
.end method
