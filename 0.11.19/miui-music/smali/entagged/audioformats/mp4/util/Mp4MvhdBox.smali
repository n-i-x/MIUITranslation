.class public Lentagged/audioformats/mp4/util/Mp4MvhdBox;
.super Ljava/lang/Object;


# instance fields
.field private timeLength:J

.field private timeScale:I

.field private version:B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->version:B

    iget-byte v0, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->version:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    const/16 v1, 0x17

    invoke-static {p1, v0, v1}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->timeScale:I

    const/16 v0, 0x18

    const/16 v1, 0x1f

    invoke-static {p1, v0, v1}, Lentagged/audioformats/generic/Utils;->getLongNumberBigEndian([BII)J

    move-result-wide v0

    iput-wide v0, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->timeLength:J

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->timeScale:I

    const/16 v0, 0x10

    const/16 v1, 0x13

    invoke-static {p1, v0, v1}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->timeLength:J

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 4

    iget-wide v0, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->timeLength:J

    iget v2, p0, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->timeScale:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
