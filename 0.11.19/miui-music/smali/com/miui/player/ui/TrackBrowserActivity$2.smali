.class Lcom/miui/player/ui/TrackBrowserActivity$2;
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
    .line 378
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$2;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$2;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$2;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$400(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    return-void
.end method
