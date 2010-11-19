.class Lcom/miui/player/ui/ArtistAlbumBrowserActivity$3;
.super Landroid/os/Handler;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$100(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$3;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-static {v1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$100(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$200(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 217
    :cond_0
    return-void
.end method
