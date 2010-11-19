.class public Lentagged/audioformats/mp3/util/LameMPEGFrame;
.super Ljava/lang/Object;


# instance fields
.field private bitrate:I

.field private containsLameFrame:Z

.field private containsLameMPEGFrame:Z

.field private fileSize:I

.field private isValidLameMPEGFrame:Z

.field private lameVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    iput-boolean v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameFrame:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "LAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/LameMPEGFrame;->u([B)[I

    move-result-object v0

    const/16 v1, 0x9

    aget v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameFrame:Z

    new-array v1, v6, [B

    aget-byte v2, p1, v5

    aput-byte v2, v1, v3

    aget-byte v2, p1, v6

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->lameVersion:Ljava/lang/String;

    invoke-direct {p0}, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame()Z

    move-result v1

    iput-boolean v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame:Z

    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    aget v1, v0, v1

    iput v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->bitrate:I

    const/16 v1, 0x1c

    aget v1, v0, v1

    const v2, 0xffffff

    mul-int/2addr v1, v2

    const/16 v2, 0x1d

    aget v2, v0, v2

    const v3, 0xffff

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    const/16 v2, 0x1e

    aget v2, v0, v2

    mul-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    const/16 v2, 0x1f

    aget v0, v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->fileSize:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    goto :goto_1
.end method

.method private containsLameMPEGFrame()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameFrame:Z

    return v0
.end method

.method private u([B)[I
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->isValidLameMPEGFrame:Z

    if-eqz v0, :cond_1

    const-string v0, "\n----LameMPEGFrame--------------------\n"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Lame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->lameVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->containsLameMPEGFrame:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tMin.Bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\tLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp3/util/LameMPEGFrame;->fileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n--------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "\n!!!No Valid Lame MPEG Frame!!!\n"

    goto :goto_0
.end method
