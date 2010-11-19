.class Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumArtTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFinish(Landroid/graphics/Bitmap;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    .locals 0
    .parameter "result"
    .parameter "albumInfo"

    .prologue
    .line 884
    return-void
.end method

.method public downloadStart(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;I)Z
    .locals 1
    .parameter "albumInfo"
    .parameter "status"

    .prologue
    .line 888
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$200(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$200(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 891
    :cond_0
    const/4 v0, 0x1

    .line 893
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
