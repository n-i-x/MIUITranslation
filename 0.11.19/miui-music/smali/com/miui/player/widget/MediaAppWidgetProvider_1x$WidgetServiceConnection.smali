.class Lcom/miui/player/widget/MediaAppWidgetProvider_1x$WidgetServiceConnection;
.super Ljava/lang/Object;
.source "MediaAppWidgetProvider_1x.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/widget/MediaAppWidgetProvider_1x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;


# direct methods
.method constructor <init>(Lcom/miui/player/widget/MediaAppWidgetProvider_1x;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x$WidgetServiceConnection;->this$0:Lcom/miui/player/widget/MediaAppWidgetProvider_1x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 395
    invoke-static {p2}, Lcom/miui/player/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/MediaPlaybackService;

    invoke-static {p0}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->access$402(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/MediaPlaybackService;

    .line 396
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 399
    return-void
.end method
