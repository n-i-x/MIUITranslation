.class public Lentagged/audioformats/asf/util/ChunkPositionComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lentagged/audioformats/asf/data/Chunk;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lentagged/audioformats/asf/data/Chunk;

    if-eqz v1, :cond_0

    check-cast p1, Lentagged/audioformats/asf/data/Chunk;

    check-cast p2, Lentagged/audioformats/asf/data/Chunk;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p2}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    return v0
.end method
