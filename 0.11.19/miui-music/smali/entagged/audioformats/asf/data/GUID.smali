.class public Lentagged/audioformats/asf/data/GUID;
.super Ljava/lang/Object;


# static fields
.field public static final GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_ENCODING:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_FILE:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_HEADER:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_HEADER_EXTENSION:Lentagged/audioformats/asf/data/GUID; = null

.field public static final GUID_LENGTH:I = 0x10

.field public static final GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

.field public static final GUID_STREAM_BITRATE_PROPERTIES:Lentagged/audioformats/asf/data/GUID;

.field public static final GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

.field public static final KNOWN_GUIDS:[Lentagged/audioformats/asf/data/GUID;


# instance fields
.field private description:Ljava/lang/String;

.field private guid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x10

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    const-string v2, "Audio error concealment absent."

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    const-string v2, "Interleaved audio error concealment."

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    const-string v2, " Audio stream"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    const-string v2, "Content Description"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    const-string v2, "Encoding description"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_ENCODING:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    const-string v2, "Extended Content Description"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    const-string v2, "File header"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    const-string v2, "Asf header"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    const-string v2, "Stream"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    const-string v2, "Header Extension"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER_EXTENSION:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    const-string v2, "Stream bitrate properties"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lentagged/audioformats/asf/data/GUID;

    new-instance v0, Lentagged/audioformats/asf/data/GUID;

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    const-string v2, "Video stream"

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    const/16 v0, 0xc

    new-array v0, v0, [Lentagged/audioformats/asf/data/GUID;

    const/4 v1, 0x0

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_ENCODING:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_FILE:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_HEADER_EXTENSION:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lentagged/audioformats/asf/data/GUID;

    aput-object v2, v0, v1

    sput-object v0, Lentagged/audioformats/asf/data/GUID;->KNOWN_GUIDS:[Lentagged/audioformats/asf/data/GUID;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x33t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x40t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0xa1t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x91t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xb5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xcet 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x8dt 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x8dt 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xc0t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/asf/data/GUID;->description:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    invoke-direct {p0, p1}, Lentagged/audioformats/asf/data/GUID;->setGUID([I)V

    return-void
.end method

.method public constructor <init>([ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lentagged/audioformats/asf/data/GUID;-><init>([I)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lentagged/audioformats/asf/data/GUID;->description:Ljava/lang/String;

    return-void
.end method

.method public static assertGUID([I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getGuidDescription(Lentagged/audioformats/asf/data/GUID;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    sget-object v2, Lentagged/audioformats/asf/data/GUID;->KNOWN_GUIDS:[Lentagged/audioformats/asf/data/GUID;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lentagged/audioformats/asf/data/GUID;->KNOWN_GUIDS:[Lentagged/audioformats/asf/data/GUID;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lentagged/audioformats/asf/data/GUID;->KNOWN_GUIDS:[Lentagged/audioformats/asf/data/GUID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private setGUID([I)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-static {p1}, Lentagged/audioformats/asf/data/GUID;->assertGUID([I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    iput-object v0, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    iget-object v0, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given guid doesn\'t match the GUID specification."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lentagged/audioformats/asf/data/GUID;

    if-eqz v0, :cond_0

    check-cast p1, Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/GUID;->getGUID()[I

    move-result-object v0

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/GUID;->getGUID()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 3

    iget-object v0, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    array-length v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lentagged/audioformats/asf/data/GUID;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGUID()[I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    iget-object v2, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/GUID;->getGUID()[I

    move-result-object v0

    invoke-static {v0}, Lentagged/audioformats/asf/data/GUID;->assertGUID([I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lentagged/audioformats/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lentagged/audioformats/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lentagged/audioformats/asf/data/GUID;->guid:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-lez v1, :cond_2

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
