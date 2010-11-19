.class Lcom/miui/player/ui/AlbumBrowserActivity$3;
.super Landroid/os/Handler;
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
    .line 268
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$200(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$200(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$300(Lcom/miui/player/ui/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 274
    :cond_0
    return-void
.end method
