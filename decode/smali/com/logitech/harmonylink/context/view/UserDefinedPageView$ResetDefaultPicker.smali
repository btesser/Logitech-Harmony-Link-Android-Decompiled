.class Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;
.super Ljava/lang/Object;
.source "UserDefinedPageView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDefaultPicker"
.end annotation


# instance fields
.field private mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

.field final synthetic this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;Lcom/logitech/harmonylink/context/view/UserDefinedPageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1335
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;-><init>(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->unlock()V

    .line 1367
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->dismissDialog(I)V

    .line 1368
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1343
    new-instance v2, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    iget-object v3, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v3}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    .line 1346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    #getter for: Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->mParentActivity:Lcom/logitech/harmonylink/ui/common/BaseActivity;
    invoke-static {v2}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->access$700(Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)Lcom/logitech/harmonylink/ui/common/BaseActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1347
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0600b7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1348
    iget-object v2, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1350
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1352
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1353
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1355
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1360
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->cleanup()V

    .line 1361
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1374
    invoke-direct {p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->cleanup()V

    .line 1377
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    invoke-virtual {v0, p2}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->getItemTag(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/logitech/harmonylink/context/view/UserDefinedPageView$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->resetToDefault()V

    .line 1381
    :cond_0
    return-void
.end method
