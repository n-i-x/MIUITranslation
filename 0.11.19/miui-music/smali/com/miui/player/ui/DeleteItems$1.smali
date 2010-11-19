.class Lcom/miui/player/ui/DeleteItems$1;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/DeleteItems;->onCreate(Landroid/os/Bundle;)V
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
    .line 54
    iput-object p1, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems$1;->this$0:Lcom/miui/player/ui/DeleteItems;

    invoke-virtual {v0}, Lcom/miui/player/ui/DeleteItems;->finish()V

    .line 57
    return-void
.end method
