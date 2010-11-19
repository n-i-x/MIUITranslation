.class Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    .line 634
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 635
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;

    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;->access$400(Lcom/miui/player/ui/AlbumBrowserActivity$AlbumListAdapter;)Lcom/miui/player/ui/AlbumBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 641
    return-void
.end method
