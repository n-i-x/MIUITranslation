.class public Lentagged/audioformats/mp3/util/MPEGFrame;
.super Ljava/lang/Object;


# static fields
.field public static final CHANNEL_MODE_DUAL_CHANNEL:I = 0x2

.field public static final CHANNEL_MODE_JOINT_STEREO:I = 0x1

.field public static final CHANNEL_MODE_MONO:I = 0x3

.field public static final CHANNEL_MODE_STEREO:I = 0x0

.field public static final LAYER_I:I = 0x3

.field public static final LAYER_II:I = 0x2

.field public static final LAYER_III:I = 0x1

.field public static final LAYER_RESERVED:I = 0x0

.field private static final MPEGVersionTable:[I = null

.field private static final MPEGVersionTable_String:[Ljava/lang/String; = null

.field public static final MPEG_VERSION_1:I = 0x3

.field public static final MPEG_VERSION_2:I = 0x2

.field public static final MPEG_VERSION_2_5:I = 0x0

.field public static final MPEG_VERSION_RESERVED:I = 0x1

.field private static final SAMPLE_NUMBERS:[I

.field private static final bitrateTable:[[[I

.field private static final channelModeTable_String:[Ljava/lang/String;

.field private static final emphasisTable:[Ljava/lang/String;

.field private static final layerDescriptionTable:[I

.field private static final layerDescriptionTable_String:[Ljava/lang/String;

.field private static final modeExtensionTable:[[Ljava/lang/String;

.field private static final samplingRateTable:[[I


# instance fields
.field private MPEGVersion:I

.field private bitrate:I

.field private channelMode:I

.field private emphasis:Ljava/lang/String;

.field private hasPadding:Z

.field private isCopyrighted:Z

.field private isOriginal:Z

.field private isProtected:Z

.field private isValid:Z

.field private layer:I

.field private modeExtension:Ljava/lang/String;

.field private mpegBytes:[B

.field private samplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "MPEG Version 2.5"

    aput-object v1, v0, v4

    const-string v1, "reserved"

    aput-object v1, v0, v5

    const-string v1, "MPEG Version 2 (ISO/IEC 13818-3)"

    aput-object v1, v0, v6

    const-string v1, "MPEG Version 1 (ISO/IEC 11172-3)"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable_String:[Ljava/lang/String;

    new-array v0, v6, [[[I

    new-array v1, v7, [[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v5

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrateTable:[[[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Stereo"

    aput-object v1, v0, v4

    const-string v1, "Joint stereo (Stereo)"

    aput-object v1, v0, v5

    const-string v1, "Dual channel (2 mono channels)"

    aput-object v1, v0, v6

    const-string v1, "Single channel (Mono)"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelModeTable_String:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v4

    const-string v1, "50/15 ms"

    aput-object v1, v0, v5

    const-string v1, "reserved"

    aput-object v1, v0, v6

    const-string v1, "CCIT J.17"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasisTable:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "reserved"

    aput-object v1, v0, v4

    const-string v1, "Layer III"

    aput-object v1, v0, v5

    const-string v1, "Layer II"

    aput-object v1, v0, v6

    const-string v1, "Layer I"

    aput-object v1, v0, v7

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable_String:[Ljava/lang/String;

    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "4-31"

    aput-object v2, v1, v4

    const-string v2, "8-31"

    aput-object v2, v1, v5

    const-string v2, "12-31"

    aput-object v2, v1, v6

    const-string v2, "16-31"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "off-off"

    aput-object v2, v1, v4

    const-string v2, "on-off"

    aput-object v2, v1, v5

    const-string v2, "off-on"

    aput-object v2, v1, v6

    const-string v2, "on-on"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtensionTable:[[Ljava/lang/String;

    new-array v0, v7, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRateTable:[[I

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    sput-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->SAMPLE_NUMBERS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xa0t 0x1t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x22t 0x56t 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x11t 0x2bt 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isMPEGFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescription()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isProtected()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isProtected:Z

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate:I

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate:I

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode()I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtension:Ljava/lang/String;

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isCopyrighted()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isCopyrighted:Z

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->isOriginal()Z

    move-result v0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isOriginal:Z

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasis()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasis:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid:Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid:Z

    goto :goto_0
.end method

.method private MPEGVersion()I
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x3

    sget-object v1, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable:[I

    aget v0, v1, v0

    return v0
.end method

.method private bitrate()I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v0, v0, 0x4

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    if-ne v1, v6, :cond_0

    move v1, v4

    :goto_0
    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v2, v6, :cond_1

    move v2, v4

    :goto_1
    sget-object v3, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrateTable:[[[I

    aget-object v1, v3, v1

    aget-object v1, v1, v2

    aget v0, v1, v0

    return v0

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    iget v2, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private channelMode()I
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xc0

    ushr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private emphasis()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3

    sget-object v1, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasisTable:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private hasPadding()Z
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCopyrighted()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMPEGFrame()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isOriginal()Z
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProtected()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layerDescription()I
    .locals 2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x6

    ushr-int/lit8 v0, v0, 0x1

    sget-object v1, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable:[I

    aget v0, v1, v0

    return v0
.end method

.method private modeExtension()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v0, v0, 0x4

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    sget-object v2, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtensionTable:[[Ljava/lang/String;

    aget-object v1, v2, v1

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private samplingRate()I
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->mpegBytes:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xc

    ushr-int/lit8 v0, v0, 0x2

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRateTable:[[I

    aget-object v1, v2, v1

    aget v0, v1, v0

    return v0

    :cond_0
    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public MPEGVersionToString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionTable_String:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public channelModeToString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelModeTable_String:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate:I

    return v0
.end method

.method public getChannelMode()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFrameLength()I
    .locals 2

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getBitrate()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getPaddingLength()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getBitrate()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x90

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getSamplingRate()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lentagged/audioformats/mp3/util/MPEGFrame;->getPaddingLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getLayerVersion()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    return v0
.end method

.method public getMPEGVersion()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    return v0
.end method

.method public getPaddingLength()I
    .locals 2

    const/4 v1, 0x3

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleNumber()I
    .locals 2

    sget-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->SAMPLE_NUMBERS:[I

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    aget v0, v0, v1

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isValid:Z

    return v0
.end method

.method public layerToString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lentagged/audioformats/mp3/util/MPEGFrame;->layerDescriptionTable_String:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v2, "\n"

    const-string v0, "\n----MPEGFrame--------------------\n"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "MPEG Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersion:I

    invoke-virtual {p0, v1}, Lentagged/audioformats/mp3/util/MPEGFrame;->MPEGVersionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tLayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->layer:I

    invoke-virtual {p0, v1}, Lentagged/audioformats/mp3/util/MPEGFrame;->layerToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Bitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tSamp.Freq.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->samplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tChan.Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->channelMode:I

    invoke-virtual {p0, v1}, Lentagged/audioformats/mp3/util/MPEGFrame;->channelModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Mode Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->modeExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tEmphasis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->emphasis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Padding? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->hasPadding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tProtected? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tCopyright? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isCopyrighted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tOriginal? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/MPEGFrame;->isOriginal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "--------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
