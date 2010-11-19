.class Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;->this$1:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 508
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 509
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$QueryHandler;->this$1:Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$300(Lcom/miui/player/ui/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 515
    return-void
.end method
