.class public Lentagged/audioformats/mp4/util/Mp4TagCoverField;
.super Lentagged/audioformats/mp4/util/Mp4TagBinaryField;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "covr"

    invoke-direct {p0, v0}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "covr"

    invoke-direct {p0, v0, p1}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
