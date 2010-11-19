.class Lcom/miui/player/ui/RenamePlaylist$2;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/RenamePlaylist;
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
    .line 100
    iput-object p1, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 113
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 103
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    invoke-static {v0}, Lcom/miui/player/ui/RenamePlaylist;->access$000(Lcom/miui/player/ui/RenamePlaylist;)V

    .line 109
    return-void
.end method
