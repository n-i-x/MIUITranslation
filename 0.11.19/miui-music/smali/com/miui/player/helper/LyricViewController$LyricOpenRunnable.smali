.class public Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;
.super Ljava/lang/Object;
.source "LyricViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/LyricViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LyricOpenRunnable"
.end annotation


# instance fields
.field private final rArtist:Ljava/lang/String;

.field private final rTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/helper/LyricViewController;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/LyricViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "artist"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->this$0:Lcom/miui/player/helper/LyricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    .line 174
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 178
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->this$0:Lcom/miui/player/helper/LyricViewController;

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/player/helper/LyricViewController;->access$000(Lcom/miui/player/helper/LyricViewController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    .line 183
    .local v0, fileName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    const-string v3, "lyric"

    invoke-static {v1, v2, v3}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_3
    if-nez v0, :cond_4

    .line 189
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->this$0:Lcom/miui/player/helper/LyricViewController;

    invoke-static {v1}, Lcom/miui/player/helper/LyricViewController;->access$200(Lcom/miui/player/helper/LyricViewController;)Lcom/miui/player/helper/LyricMovementController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->this$0:Lcom/miui/player/helper/LyricViewController;

    invoke-static {v2}, Lcom/miui/player/helper/LyricViewController;->access$100(Lcom/miui/player/helper/LyricViewController;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070068

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/LyricMovementController;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->this$0:Lcom/miui/player/helper/LyricViewController;

    invoke-static {v1}, Lcom/miui/player/helper/LyricViewController;->access$300(Lcom/miui/player/helper/LyricViewController;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->this$0:Lcom/miui/player/helper/LyricViewController;

    invoke-static {v1}, Lcom/miui/player/helper/LyricViewController;->access$300(Lcom/miui/player/helper/LyricViewController;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/helper/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->this$0:Lcom/miui/player/helper/LyricViewController;

    iget-object v2, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/helper/LyricViewController$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/miui/player/helper/LyricViewController;->access$400(Lcom/miui/player/helper/LyricViewController;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
