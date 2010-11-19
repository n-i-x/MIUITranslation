.class Lcom/miui/player/ui/PlaylistBrowserActivity$3;
.super Landroid/os/Handler;
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
    .line 260
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$3;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$3;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$300(Lcom/miui/player/ui/PlaylistBrowserActivity;)Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$3;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$3;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$300(Lcom/miui/player/ui/PlaylistBrowserActivity;)Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$400(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 266
    :cond_0
    return-void
.end method
