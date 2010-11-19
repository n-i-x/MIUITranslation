.class Lcom/miui/player/ui/RenamePlaylist$1;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/RenamePlaylist;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miui/player/ui/RenamePlaylist$1;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist$1;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    invoke-virtual {v0}, Lcom/miui/player/ui/RenamePlaylist;->finish()V

    .line 71
    return-void
.end method
