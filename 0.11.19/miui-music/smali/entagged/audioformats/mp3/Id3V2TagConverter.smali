.class public final Lentagged/audioformats/mp3/Id3V2TagConverter;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final $assertionsDisabled:Z = false

.field public static final DATE:Ljava/lang/String; = "TDAT"

.field public static final RECORDING_TIME:Ljava/lang/String; = "TDRC"

.field public static final RECORD_DAT:Ljava/lang/String; = "TRDA"

.field public static final TIME:Ljava/lang/String; = "TIME"

.field public static final YEAR:Ljava/lang/String; = "TYER"

.field static class$entagged$audioformats$mp3$Id3V2TagConverter:Ljava/lang/Class;

.field private static final conversion22to23:Ljava/util/HashMap;

.field private static final discard24:Ljava/util/HashSet;

.field private static final specialStore24:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->class$entagged$audioformats$mp3$Id3V2TagConverter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "entagged.audioformats.mp3.Id3V2TagConverter"

    invoke-static {v0}, Lentagged/audioformats/mp3/Id3V2TagConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->class$entagged$audioformats$mp3$Id3V2TagConverter:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    :goto_1
    sput-boolean v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->conversion22to23:Ljava/util/HashMap;

    const/16 v0, 0x3f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BUF"

    aput-object v1, v0, v6

    const-string v1, "CNT"

    aput-object v1, v0, v7

    const-string v1, "COM"

    aput-object v1, v0, v8

    const-string v1, "CRA"

    aput-object v1, v0, v9

    const-string v1, "CRM"

    aput-object v1, v0, v3

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

    aput-object v2, v1, v6

    const-string v2, "PCNT"

    aput-object v2, v1, v7

    const-string v2, "COMM"

    aput-object v2, v1, v8

    const-string v2, "AENC"

    aput-object v2, v1, v9

    const-string v2, ""

    aput-object v2, v1, v3

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

    move v2, v6

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    sget-object v3, Lentagged/audioformats/mp3/Id3V2TagConverter;->conversion22to23:Ljava/util/HashMap;

    aget-object v4, v0, v2

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    sget-object v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->class$entagged$audioformats$mp3$Id3V2TagConverter:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_1
    move v0, v6

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "TIME"

    aput-object v2, v1, v6

    const-string v2, "TYER"

    aput-object v2, v1, v7

    const-string v2, "TDAT"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->specialStore24:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "TRDA"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->discard24:Ljava/util/HashSet;

    sget-object v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->discard24:Ljava/util/HashSet;

    sget-object v1, Lentagged/audioformats/mp3/Id3V2TagConverter;->specialStore24:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static convert(Lentagged/audioformats/mp3/Id3v2Tag;I)Lentagged/audioformats/mp3/Id3v2Tag;
    .locals 3

    sget-boolean v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    if-eq p1, v0, :cond_0

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-eq p1, v0, :cond_0

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v0

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v0

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v0

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v1

    if-gt p1, v1, :cond_4

    move-object v0, p0

    :cond_3
    :goto_0
    sget-boolean v1, Lentagged/audioformats/mp3/Id3V2TagConverter;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v1

    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-ge v1, v2, :cond_5

    invoke-static {p0}, Lentagged/audioformats/mp3/Id3V2TagConverter;->convert22to23(Lentagged/audioformats/mp3/Id3v2Tag;)Lentagged/audioformats/mp3/Id3v2Tag;

    move-result-object v0

    :cond_5
    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v1

    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ge v1, v2, :cond_3

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-gt p1, v1, :cond_3

    invoke-static {v0}, Lentagged/audioformats/mp3/Id3V2TagConverter;->convert23to24(Lentagged/audioformats/mp3/Id3v2Tag;)Lentagged/audioformats/mp3/Id3v2Tag;

    move-result-object v0

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static convert22to23(Lentagged/audioformats/mp3/Id3v2Tag;)Lentagged/audioformats/mp3/Id3v2Tag;
    .locals 4

    sget-boolean v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v0

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/TagField;

    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lentagged/audioformats/mp3/Id3V2TagConverter;->conversion22to23:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    instance-of v3, v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    if-eqz v3, :cond_2

    new-instance v3, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    invoke-virtual {v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lentagged/audioformats/mp3/Id3v2Tag;->add(Lentagged/audioformats/generic/TagField;)V

    goto :goto_0

    :cond_3
    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    invoke-virtual {p0, v0}, Lentagged/audioformats/mp3/Id3v2Tag;->setRepresentedVersion(B)V

    return-object p0
.end method

.method private static convert23to24(Lentagged/audioformats/mp3/Id3v2Tag;)Lentagged/audioformats/mp3/Id3v2Tag;
    .locals 5

    sget-boolean v0, Lentagged/audioformats/mp3/Id3V2TagConverter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getRepresentedVersion()B

    move-result v0

    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lentagged/audioformats/mp3/Id3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/TagField;

    sget-object v3, Lentagged/audioformats/mp3/Id3V2TagConverter;->specialStore24:Ljava/util/HashSet;

    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v3, Lentagged/audioformats/mp3/Id3V2TagConverter;->discard24:Ljava/util/HashSet;

    invoke-interface {v0}, Lentagged/audioformats/generic/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    const-string v0, "TDAT"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v1, "TIME"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    const-string v3, "TYER"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    invoke-static {v0, v1, v2}, Lentagged/audioformats/mp3/Id3V2TagConverter;->createTimeField(Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;)Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lentagged/audioformats/mp3/Id3v2Tag;->set(Lentagged/audioformats/generic/TagField;)V

    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    invoke-virtual {p0, v0}, Lentagged/audioformats/mp3/Id3v2Tag;->setRepresentedVersion(B)V

    return-object p0
.end method

.method private static createTimeField(Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;)Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x4

    const-string v0, "\""

    const/4 v0, 0x0

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_3

    const/4 v2, 0x5

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_4

    const/16 v2, 0xb

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_5

    const/4 v2, 0x1

    invoke-virtual {p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    :cond_2
    :goto_2
    new-instance v2, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;

    const-string v3, "TRDA"

    invoke-direct {v2, v3, v1}, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;-><init>(Ljava/lang/String;Ljava/util/Calendar;)V

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Field TDAT ignroed, since it is not spec conform: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Numberformatexception occured in timestamp interpretation, date is set to zero."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    goto :goto_3

    :cond_4
    :try_start_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Field TIME ignroed, since it is not spec conform: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Field TYER ignroed, since it is not spec conform: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
