.class Lcom/miui/player/ui/TrackBrowserActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$7;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$500(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/miui/player/model/TrackBrowserHelper;->onReceiveNowPlaying(Lcom/miui/player/IMediaPlaybackService;Landroid/widget/SimpleCursorAdapter;Landroid/content/Intent;)V

    .line 604
    return-void
.end method
