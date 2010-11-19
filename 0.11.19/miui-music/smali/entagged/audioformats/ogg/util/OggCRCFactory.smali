.class public Lentagged/audioformats/ogg/util/OggCRCFactory;
.super Ljava/lang/Object;


# static fields
.field private static crc_lookup:[J

.field private static init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lentagged/audioformats/ogg/util/OggCRCFactory;->crc_lookup:[J

    const/4 v0, 0x0

    sput-boolean v0, Lentagged/audioformats/ogg/util/OggCRCFactory;->init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCRC([B)[B
    .locals 14

    const/16 v11, 0x18

    const/16 v10, 0x8

    const/4 v9, 0x0

    const-wide/16 v7, 0xff

    sget-boolean v0, Lentagged/audioformats/ogg/util/OggCRCFactory;->init:Z

    if-nez v0, :cond_0

    invoke-static {}, Lentagged/audioformats/ogg/util/OggCRCFactory;->init()V

    :cond_0
    const-wide/16 v0, 0x0

    move-wide v12, v0

    move-wide v1, v12

    move v0, v9

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    ushr-long v3, v1, v11

    and-long/2addr v3, v7

    aget-byte v5, p0, v0

    invoke-static {v5}, Lentagged/audioformats/ogg/util/OggCRCFactory;->u(I)I

    move-result v5

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    shl-long/2addr v1, v10

    sget-object v4, Lentagged/audioformats/ogg/util/OggCRCFactory;->crc_lookup:[J

    aget-wide v3, v4, v3

    xor-long/2addr v1, v3

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    and-long v3, v1, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v9

    const/4 v3, 0x1

    ushr-long v4, v1, v10

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x10

    ushr-long v4, v1, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    ushr-long/2addr v1, v11

    and-long/2addr v1, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    return-object v0
.end method

.method public static init()V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    move v0, v9

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    shl-int/lit8 v1, v0, 0x18

    int-to-long v1, v1

    move-wide v10, v1

    move-wide v2, v10

    move v1, v9

    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    const-wide v4, 0x80000000L

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    shl-long/2addr v2, v8

    const-wide/32 v4, 0x4c11db7

    xor-long/2addr v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    shl-long/2addr v2, v8

    goto :goto_2

    :cond_1
    sget-object v1, Lentagged/audioformats/ogg/util/OggCRCFactory;->crc_lookup:[J

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sput-boolean v8, Lentagged/audioformats/ogg/util/OggCRCFactory;->init:Z

    return-void
.end method

.method private static u(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public checkCRC([B[B)Z
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lentagged/audioformats/ogg/util/OggCRCFactory;->computeCRC([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
