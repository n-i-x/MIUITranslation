.class Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnButtonBarFocusChangeListener"
.end annotation


# instance fields
.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p1, p0, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;->mParent:Landroid/view/ViewGroup;

    .line 1044
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1048
    if-eqz p2, :cond_0

    .line 1049
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1051
    iget-object v1, p0, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/miui/player/MusicUtils;->access$000(Landroid/view/ViewGroup;I)V

    .line 1052
    iget-object v1, p0, Lcom/miui/player/MusicUtils$OnButtonBarFocusChangeListener;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/miui/player/MusicUtils;->processTabClick(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1057
    .end local v0           #i:I
    :cond_0
    return-void

    .line 1049
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
