.class Lcom/miui/player/ui/TrackBrowserActivity$5;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/ui/TouchInterceptor$RemoveListener;


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
    .line 587
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$5;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$5;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$5;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$300(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->removeTrack(Lcom/miui/player/IMediaPlaybackService;ILjava/lang/String;)Z

    .line 590
    return-void
.end method
