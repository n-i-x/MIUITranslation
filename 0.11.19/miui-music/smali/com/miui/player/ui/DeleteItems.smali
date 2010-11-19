.class public Lcom/miui/player/ui/DeleteItems;
.super Landroid/app/Activity;
.source "DeleteItems.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mButtonClicked:Landroid/view/View$OnClickListener;

.field private mItemList:[J

.field private mPrompt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/miui/player/ui/DeleteItems$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/DeleteItems$2;-><init>(Lcom/miui/player/ui/DeleteItems;)V

    iput-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/DeleteItems;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/player/ui/DeleteItems;->mItemList:[J

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/player/ui/DeleteItems;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 43
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/DeleteItems;->setVolumeControlStream(I)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/DeleteItems;->requestWindowFeature(I)Z

    .line 46
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/DeleteItems;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/player/ui/DeleteItems;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 50
    const v2, 0x7f0b0032

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/ui/DeleteItems;->mPrompt:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f0b0033

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/player/ui/DeleteItems;->mButton:Landroid/widget/Button;

    .line 52
    iget-object v2, p0, Lcom/miui/player/ui/DeleteItems;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/player/ui/DeleteItems;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v2, 0x7f0b0034

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/DeleteItems;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/miui/player/ui/DeleteItems$1;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/DeleteItems$1;-><init>(Lcom/miui/player/ui/DeleteItems;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/miui/player/ui/DeleteItems;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, desc:Ljava/lang/String;
    const-string v2, "items"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/DeleteItems;->mItemList:[J

    .line 64
    iget-object v2, p0, Lcom/miui/player/ui/DeleteItems;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
