.class Lcom/miui/player/ui/AlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 264
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$100(Lcom/miui/player/ui/AlbumBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    return-void
.end method
