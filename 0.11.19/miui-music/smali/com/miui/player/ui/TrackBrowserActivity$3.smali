.class Lcom/miui/player/ui/TrackBrowserActivity$3;
.super Landroid/os/Handler;
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
    .line 390
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->access$500(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$500(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->getTrackCursor(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 399
    :cond_0
    return-void
.end method
