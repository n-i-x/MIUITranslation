.class Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;
.super Ljava/lang/Object;
.source "SingleChoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/SingleChoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleChoiceDialogCheckedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/SingleChoiceDialog;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/SingleChoiceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/SingleChoiceDialog;Lcom/miui/player/ui/SingleChoiceDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;-><init>(Lcom/miui/player/ui/SingleChoiceDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    invoke-static {v0, p2}, Lcom/miui/player/ui/SingleChoiceDialog;->access$102(Lcom/miui/player/ui/SingleChoiceDialog;I)I

    .line 39
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    invoke-static {v0}, Lcom/miui/player/ui/SingleChoiceDialog;->access$200(Lcom/miui/player/ui/SingleChoiceDialog;)Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    invoke-static {v0}, Lcom/miui/player/ui/SingleChoiceDialog;->access$200(Lcom/miui/player/ui/SingleChoiceDialog;)Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    invoke-static {v1}, Lcom/miui/player/ui/SingleChoiceDialog;->access$300(Lcom/miui/player/ui/SingleChoiceDialog;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/SingleChoiceDialog$SingleChoiceDialogCheckedListener;->this$0:Lcom/miui/player/ui/SingleChoiceDialog;

    invoke-static {v2}, Lcom/miui/player/ui/SingleChoiceDialog;->access$100(Lcom/miui/player/ui/SingleChoiceDialog;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;->excute([Ljava/lang/CharSequence;I)V

    .line 42
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    return-void
.end method
