.class Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;
.super Ljava/lang/Object;
.source "OneTouchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0600a9

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 185
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mIsInEditMode:Z
    invoke-static {v1, v3}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$302(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Z)Z

    .line 188
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setEditMode(Z)V

    .line 189
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 194
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2, v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$602(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 195
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2, v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$602(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 207
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 240
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mIsInEditMode:Z
    invoke-static {v1, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$302(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Z)Z

    .line 213
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setEditMode(Z)V

    .line 214
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTrashView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->setSelector(Z)V

    .line 216
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 220
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getButtonAttributes()Landroid/util/AttributeSet;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$900(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 221
    .local v0, attributes:Landroid/util/AttributeSet;
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1000(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1, v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$602(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mEditNDoneButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #calls: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->getTextViewAttributes()Landroid/util/AttributeSet;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mActivityContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$1000(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #setter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1, v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$602(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mAddNewFavourites:Landroid/widget/Button;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->notifyGridAdapter()V

    .line 234
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchGridView:Lcom/logitech/harmonylink/context/view/OneTouchGridView;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$100(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/context/view/OneTouchGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/OneTouchGridView;->invalidateGridView()V

    .line 235
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->updateDatabase()V

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->mOneTouchAdapter:Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/OneTouchActivity;)Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/logitech/harmonylink/olive/ui/OneTouchGridAdapter;->resetUpdateFlag(Z)V

    goto/16 :goto_0
.end method
