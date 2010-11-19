.class Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lcom/miui/player/ui/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/SpectrumVisualizer;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/SpectrumVisualizer;Lcom/miui/player/ui/SpectrumVisualizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lcom/miui/player/ui/SpectrumVisualizer;)V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 10
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$300(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v2}, Lcom/miui/player/ui/SpectrumVisualizer;->access$400(Lcom/miui/player/ui/SpectrumVisualizer;)[I

    move-result-object v2

    aget v2, v2, p2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    div-int/lit8 v5, v0, 0xc

    .line 273
    .local v5, top:I
    int-to-double v0, v5

    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v2}, Lcom/miui/player/ui/SpectrumVisualizer;->access$500(Lcom/miui/player/ui/SpectrumVisualizer;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v2}, Lcom/miui/player/ui/SpectrumVisualizer;->access$600(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v1}, Lcom/miui/player/ui/SpectrumVisualizer;->access$600(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v1

    mul-int v5, v0, v1

    .line 275
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$300(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$700(Lcom/miui/player/ui/SpectrumVisualizer;)[I

    move-result-object v1

    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$800(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v0

    mul-int v2, v0, v5

    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$800(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v3

    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$800(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v0

    mul-int v4, v0, p2

    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$800(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v6

    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$300(Lcom/miui/player/ui/SpectrumVisualizer;)I

    move-result v0

    sub-int v7, v0, v5

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$AsymmetryDotBar;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$900(Lcom/miui/player/ui/SpectrumVisualizer;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 279
    :cond_0
    return-void
.end method
