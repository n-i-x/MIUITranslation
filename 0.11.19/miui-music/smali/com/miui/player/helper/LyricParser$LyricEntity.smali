.class public Lcom/miui/player/helper/LyricParser$LyricEntity;
.super Ljava/lang/Object;
.source "LyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/LyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricEntity"
.end annotation


# instance fields
.field public lyric:Ljava/lang/String;

.field public time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "t"
    .parameter "str"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    .line 72
    iput-object p2, p0, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/String;

    .line 73
    return-void
.end method
