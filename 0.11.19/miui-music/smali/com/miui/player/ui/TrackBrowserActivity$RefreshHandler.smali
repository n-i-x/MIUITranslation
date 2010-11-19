.class Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 905
    invoke-direct {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 908
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$500(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$500(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, newMsg:Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity$RefreshHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 919
    .end local v0           #newMsg:Landroid/os/Message;
    :cond_1
    return-void

    .line 913
    :catch_0
    move-exception v1

    goto :goto_0
.end method
