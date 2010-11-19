.class Lcom/miui/player/ui/PlaylistBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$200(Lcom/miui/player/ui/PlaylistBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    return-void
.end method
