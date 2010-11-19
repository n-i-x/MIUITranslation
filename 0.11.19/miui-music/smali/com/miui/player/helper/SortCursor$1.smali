.class Lcom/miui/player/helper/SortCursor$1;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/SortCursor;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/SortCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/player/helper/SortCursor$1;->this$0:Lcom/miui/player/helper/SortCursor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/player/helper/SortCursor$1;->this$0:Lcom/miui/player/helper/SortCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/player/helper/SortCursor;->access$002(Lcom/miui/player/helper/SortCursor;I)I

    .line 54
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/player/helper/SortCursor$1;->this$0:Lcom/miui/player/helper/SortCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/player/helper/SortCursor;->access$102(Lcom/miui/player/helper/SortCursor;I)I

    .line 59
    return-void
.end method
