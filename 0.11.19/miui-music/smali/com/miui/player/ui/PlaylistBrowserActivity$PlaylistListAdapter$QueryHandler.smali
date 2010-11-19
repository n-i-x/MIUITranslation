.class Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 621
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 622
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 623
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 629
    if-eqz p3, :cond_0

    .line 630
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-static {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->access$500(Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/miui/player/ui/PlaylistBrowserActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$600(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p3

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-static {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;->access$500(Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/miui/player/ui/PlaylistBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 633
    return-void
.end method
