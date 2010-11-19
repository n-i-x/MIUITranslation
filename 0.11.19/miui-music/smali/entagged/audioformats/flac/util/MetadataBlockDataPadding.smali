.class public Lentagged/audioformats/flac/util/MetadataBlockDataPadding;
.super Ljava/lang/Object;

# interfaces
.implements Lentagged/audioformats/flac/util/MetadataBlockData;


# static fields
.field static final $assertionsDisabled:Z

.field static class$entagged$audioformats$flac$util$MetadataBlockDataPadding:Ljava/lang/Class;


# instance fields
.field private length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->class$entagged$audioformats$flac$util$MetadataBlockDataPadding:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "entagged.audioformats.flac.util.MetadataBlockDataPadding"

    invoke-static {v0}, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->class$entagged$audioformats$flac$util$MetadataBlockDataPadding:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->class$entagged$audioformats$flac$util$MetadataBlockDataPadding:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->length:I

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


# virtual methods
.method public getBytes()[B
    .locals 1

    sget-boolean v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;->length:I

    return v0
.end method
