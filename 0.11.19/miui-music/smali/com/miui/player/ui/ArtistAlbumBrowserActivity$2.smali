.class Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 207
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$000(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    return-void
.end method
