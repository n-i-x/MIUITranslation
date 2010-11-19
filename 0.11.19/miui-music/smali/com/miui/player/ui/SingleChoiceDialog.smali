.class public Lcom/miui/player/ui/SingleChoiceDialog;
.super Ljava/lang/Object;
.source "SingleChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/SingleChoiceDialog$1;,
        Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;,
        Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;
    }
.end annotation


# instance fields
.field private mCommond:Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;

.field private mContext:Landroid/content/Context;

.field private mItems:[Ljava/lang/CharSequence;

.field private mResTitle:I

.field private mWhich:I


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;Landroid/content/Context;II)V
    .locals 0
    .parameter "items"
    .parameter "commond"
    .parameter "context"
    .parameter "which"
    .parameter "resTitle"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mItems:[Ljava/lang/CharSequence;

    .line 22
    iput-object p3, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mCommond:Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;

    .line 24
    iput p4, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mWhich:I

    .line 25
    iput p5, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mResTitle:I

    .line 26
    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/SingleChoiceDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mWhich:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/player/ui/SingleChoiceDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput p1, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mWhich:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/player/ui/SingleChoiceDialog;)Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mCommond:Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/SingleChoiceDialog;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mItems:[Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mResTitle:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mItems:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/miui/player/ui/SingleChoiceDialog;->mWhich:I

    new-instance v3, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;-><init>(Lcom/miui/player/ui/SingleChoiceDialog;Lcom/miui/player/ui/SingleChoiceDialog$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 32
    return-void
.end method
