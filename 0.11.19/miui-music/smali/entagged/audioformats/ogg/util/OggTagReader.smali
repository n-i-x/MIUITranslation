.class public Lentagged/audioformats/ogg/util/OggTagReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    new-instance v0, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v0}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    new-array v1, v7, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1, v5, v6}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lentagged/audioformats/ogg/OggTag;->setVendor(Ljava/lang/String;)V

    new-array v1, v7, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1, v5, v6}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v1

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_0

    new-array v3, v7, [B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v3, v5, v6}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v4, Lentagged/audioformats/ogg/util/OggTagField;

    invoke-direct {v4, v3}, Lentagged/audioformats/ogg/util/OggTagField;-><init>([B)V

    invoke-virtual {v0, v4}, Lentagged/audioformats/ogg/OggTag;->add(Lentagged/audioformats/generic/TagField;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
