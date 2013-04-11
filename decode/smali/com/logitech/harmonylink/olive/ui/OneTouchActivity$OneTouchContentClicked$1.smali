.class Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked$1;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;

.field final synthetic val$mShowNoWatchTvWarning:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked$1;->this$1:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked;

    iput-object p2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked$1;->val$mShowNoWatchTvWarning:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$OneTouchContentClicked$1;->val$mShowNoWatchTvWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 639
    return-void
.end method
