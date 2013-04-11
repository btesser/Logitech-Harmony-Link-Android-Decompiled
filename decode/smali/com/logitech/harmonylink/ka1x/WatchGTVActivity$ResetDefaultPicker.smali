.class Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;
.super Ljava/lang/Object;
.source "WatchGTVActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDefaultPicker"
.end annotation


# instance fields
.field private mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

.field final synthetic this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;


# direct methods
.method private constructor <init>(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    #getter for: Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    invoke-static {v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->access$500(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->unlock()V

    .line 393
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->dismissDialog(I)V

    .line 394
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 371
    new-instance v2, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    iget-object v3, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-direct {v2, v3}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0600b7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 376
    iget-object v2, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 381
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 383
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->cleanup()V

    .line 389
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->cleanup()V

    .line 402
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->mAdapter:Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;

    invoke-virtual {v0, p2}, Lcom/logitech/harmonylink/view/widget/dragdrop/YesNoAdapter;->getItemTag(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity$ResetDefaultPicker;->this$0:Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;

    #getter for: Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    invoke-static {v0}, Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;->access$500(Lcom/logitech/harmonylink/ka1x/WatchGTVActivity;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->resetToDefault()V

    .line 406
    :cond_0
    return-void
.end method
