.class Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToTrackClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;Lcom/miui/player/ui/AlbumBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 856
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v4}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$1000(Lcom/miui/player/ui/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 857
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    const-string v4, "artist"

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v5}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$1000(Lcom/miui/player/ui/AlbumBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 862
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    if-eqz v4, :cond_0

    .line 863
    move-object v0, v3

    check-cast v0, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;

    move-object v1, v0

    .line 864
    .local v1, holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    const-string v4, "albumname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->albumTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const-string v4, "artistname"

    iget-object v5, v1, Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;->artistTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    .end local v1           #holder:Lcom/miui/player/ui/AlbumBrowserActivity$ViewHolder;
    :cond_0
    const-string v4, "top_tab"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 869
    const-string v4, "withtabs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 870
    const-string v4, "withtabs_2"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 871
    const-string v4, "active_tab_2"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 872
    const-string v4, "active_tab"

    const v5, 0x7f0b0029

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 873
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-static {v4, v2, v6}, Lcom/miui/player/MusicUtils;->transitWithoutAnim(Landroid/app/Activity;Landroid/content/Intent;Z)V

    .line 875
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_1
    return-void
.end method
