.class Lcom/miui/player/ui/DeleteItems$2;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/DeleteItems;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/DeleteItems;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/player/ui/DeleteItems$2;->this$0:Lcom/miui/player/ui/DeleteItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems$2;->this$0:Lcom/miui/player/ui/DeleteItems;

    iget-object v1, p0, Lcom/miui/player/ui/DeleteItems$2;->this$0:Lcom/miui/player/ui/DeleteItems;

    invoke-static {v1}, Lcom/miui/player/ui/DeleteItems;->access$000(Lcom/miui/player/ui/DeleteItems;)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 71
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems$2;->this$0:Lcom/miui/player/ui/DeleteItems;

    invoke-virtual {v0}, Lcom/miui/player/ui/DeleteItems;->finish()V

    .line 72
    return-void
.end method
