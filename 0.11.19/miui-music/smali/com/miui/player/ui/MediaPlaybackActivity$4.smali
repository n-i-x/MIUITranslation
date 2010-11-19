.class Lcom/miui/player/ui/MediaPlaybackActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$4;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$4;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$4;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1300(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$4;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$4;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1200(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/miui/player/model/TrackBrowserHelper;->onReceiveNowPlaying(Lcom/miui/player/IMediaPlaybackService;Landroid/widget/SimpleCursorAdapter;Landroid/content/Intent;)V

    goto :goto_0
.end method
