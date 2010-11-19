.class Lcom/miui/player/ui/CreatePlaylist$1;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/CreatePlaylist;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/CreatePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/player/ui/CreatePlaylist$1;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/player/ui/CreatePlaylist$1;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v0}, Lcom/miui/player/ui/CreatePlaylist;->finish()V

    .line 66
    return-void
.end method
