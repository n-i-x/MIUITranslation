.class Lcom/miui/player/ui/SpectrumVisualizer$1;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/player/ui/SpectrumVisualizer$1;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/ui/SpectrumVisualizer$1;->this$0:Lcom/miui/player/ui/SpectrumVisualizer;

    invoke-static {v0}, Lcom/miui/player/ui/SpectrumVisualizer;->access$000(Lcom/miui/player/ui/SpectrumVisualizer;)V

    .line 67
    return-void
.end method
