.class Lcom/miui/player/helper/LyricParser$EntityCompator;
.super Ljava/lang/Object;
.source "LyricParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/LyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityCompator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/player/helper/LyricParser$LyricEntity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/LyricParser$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/miui/player/helper/LyricParser$EntityCompator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/player/helper/LyricParser$LyricEntity;Lcom/miui/player/helper/LyricParser$LyricEntity;)I
    .locals 2
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 410
    iget v0, p1, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    iget v1, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    check-cast p1, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .end local p1
    check-cast p2, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/helper/LyricParser$EntityCompator;->compare(Lcom/miui/player/helper/LyricParser$LyricEntity;Lcom/miui/player/helper/LyricParser$LyricEntity;)I

    move-result v0

    return v0
.end method
