.class public Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;
.super Lcom/logitech/harmonylink/ui/common/BaseActivity;
.source "EditUserDefinedPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final CELL_X_INTENT_PARAMETER:Ljava/lang/String; = "cellX"

.field public static final CELL_Y_INTENT_PARAMETER:Ljava/lang/String; = "cellY"

.field public static final LAUNCH_PICKER_INTENT_PARAMETER:Ljava/lang/String; = "launchPicker"


# instance fields
.field private mCurrentDialog:Landroid/app/Dialog;

.field private mDialogIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/logitech/harmonylink/ui/common/BaseActivity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mDialogIDMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v4}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->requestWindowFeature(I)Z

    .line 38
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    iput-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    .line 42
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v1, p0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->setParentActivity(Lcom/logitech/harmonylink/ui/common/BaseActivity;)V

    .line 45
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-virtual {v1, p0, v5}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->loadItem(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/harmony/Dom;)V

    .line 47
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    const v5, 0x7f070062

    invoke-virtual {v1, v5}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 48
    .local v8, cancelButton:Landroid/widget/Button;
    new-instance v1, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$1;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$1;-><init>(Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    const v5, 0x7f070064

    invoke-virtual {v1, v5}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 59
    .local v9, doneButton:Landroid/widget/Button;
    new-instance v1, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$2;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$2;-><init>(Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    const v5, 0x7f070063

    invoke-virtual {v1, v5}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 69
    .local v12, restoreButton:Landroid/widget/Button;
    new-instance v1, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$3;

    invoke-direct {v1, p0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$3;-><init>(Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;)V

    invoke-virtual {v12, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 79
    .local v10, extras:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 80
    const-string v1, "launchPicker"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 81
    .local v11, launchPicker:Z
    if-eqz v11, :cond_0

    .line 82
    const-string v1, "cellX"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, cellX:I
    const-string v1, "cellY"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    .local v3, cellY:I
    new-instance v0, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;-><init>(Landroid/view/View;IIIIIZ)V

    .line 87
    .local v0, cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->showAddDialog(Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;)V

    .line 90
    .end local v0           #cellInfo:Lcom/logitech/harmonylink/view/widget/dragdrop/CellLayout$CellInfo;
    .end local v2           #cellX:I
    .end local v3           #cellY:I
    .end local v11           #launchPicker:Z
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v1, p0, p1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->onCreateDialog(Lcom/logitech/harmonylink/ui/common/BaseActivity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 113
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mDialogIDMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    iput-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 118
    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mDialogIDMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 131
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    invoke-virtual {v0, p0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->rollback(Lcom/logitech/harmonylink/ui/common/BaseActivity;Lcom/logitech/harmonylink/context/view/UserDefinedPageView;)V

    .line 97
    invoke-virtual {p0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->finish()V

    .line 98
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mDialogIDMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->removeDialog(I)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/logitech/harmonylink/ui/common/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method
