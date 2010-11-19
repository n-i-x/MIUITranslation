.class Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TrackBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# static fields
.field static final MAX_PROGRESS:I = 0x3e8


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field duration:Landroid/widget/TextView;

.field line1:Landroid/widget/TextView;

.field line2:Landroid/widget/TextView;

.field play_icon:Landroid/widget/ImageView;

.field play_indicator:Landroid/widget/ImageView;

.field progressbar:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
