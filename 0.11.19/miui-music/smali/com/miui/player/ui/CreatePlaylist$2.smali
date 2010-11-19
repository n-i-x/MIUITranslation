.class Lcom/miui/player/ui/CreatePlaylist$2;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/CreatePlaylist;
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
    .line 82
    iput-object p1, p0, Lcom/miui/player/ui/CreatePlaylist$2;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 99
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 85
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/player/ui/CreatePlaylist$2;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-virtual {v0}, Lcom/miui/player/ui/CreatePlaylist;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/CreatePlaylist$2;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-static {v1}, Lcom/miui/player/ui/CreatePlaylist;->access$000(Lcom/miui/player/ui/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/player/ui/CreatePlaylist$2;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-static {v0}, Lcom/miui/player/ui/CreatePlaylist;->access$100(Lcom/miui/player/ui/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/CreatePlaylist$2;->this$0:Lcom/miui/player/ui/CreatePlaylist;

    invoke-static {v0}, Lcom/miui/player/ui/CreatePlaylist;->access$100(Lcom/miui/player/ui/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
