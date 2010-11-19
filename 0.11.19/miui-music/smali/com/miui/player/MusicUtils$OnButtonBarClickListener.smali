.class Lcom/miui/player/MusicUtils$OnButtonBarClickListener;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnButtonBarClickListener"
.end annotation


# instance fields
.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    iput-object p1, p0, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;->mParent:Landroid/view/ViewGroup;

    .line 1030
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/miui/player/MusicUtils$OnButtonBarClickListener;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/miui/player/MusicUtils;->processTabClick(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1035
    return-void
.end method
