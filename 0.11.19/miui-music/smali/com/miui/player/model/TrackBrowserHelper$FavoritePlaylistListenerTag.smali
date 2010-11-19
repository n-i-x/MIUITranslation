.class public Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;
.super Ljava/lang/Object;
.source "TrackBrowserHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoritePlaylistListenerTag"
.end annotation


# instance fields
.field public final mId:J

.field public final mPos:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "id"
    .parameter "pos"

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-wide p1, p0, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;->mId:J

    .line 478
    iput p3, p0, Lcom/miui/player/model/TrackBrowserHelper$FavoritePlaylistListenerTag;->mPos:I

    .line 479
    return-void
.end method
