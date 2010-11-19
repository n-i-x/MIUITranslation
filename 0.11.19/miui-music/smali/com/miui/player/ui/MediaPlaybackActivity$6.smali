.class Lcom/miui/player/ui/MediaPlaybackActivity$6;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/ui/TouchInterceptor$RemoveListener;


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
    .line 977
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$6;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$6;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1300(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$6;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    const-string v2, "nowplaying"

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->removeTrack(Lcom/miui/player/IMediaPlaybackService;ILjava/lang/String;)Z

    .line 980
    return-void
.end method
