.class Lcom/miui/player/ui/ArtistAlbumBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 196
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$1;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$1;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 200
    return-void
.end method
