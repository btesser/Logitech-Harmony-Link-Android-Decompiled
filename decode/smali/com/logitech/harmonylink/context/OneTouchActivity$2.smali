.class Lcom/logitech/harmonylink/context/OneTouchActivity$2;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/OneTouchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0600a9

    .line 171
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/context/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/OneTouchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setEditMode(Z)V

    .line 176
    sget-object v0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$300(Lcom/logitech/harmonylink/context/OneTouchActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/context/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 179
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 180
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 197
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setEditMode(Z)V

    .line 184
    sget-object v0, Lcom/logitech/harmonylink/context/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setSelector(Z)V

    .line 186
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$300(Lcom/logitech/harmonylink/context/OneTouchActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/context/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 189
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 190
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->updateDatabase()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/context/OneTouchActivity$2;->this$0:Lcom/logitech/harmonylink/context/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/context/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/context/OneTouchActivity;)Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/logitech/harmonylink/provider/OneTouchGridAdapter;->resetUpdateFlag(Z)V

    goto :goto_0
.end method
