.class Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
.super Ljava/lang/Object;
.source "MusicMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/MusicMetaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetaInfo"
.end annotation


# instance fields
.field public final mExtendName:Ljava/lang/String;

.field public final mRelateDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "relateDir"
    .parameter "extendName"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mRelateDir:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    .line 48
    return-void
.end method
