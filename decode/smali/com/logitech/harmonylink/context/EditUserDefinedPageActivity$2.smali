.class Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$2;
.super Ljava/lang/Object;
.source "EditUserDefinedPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$2;->this$0:Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$2;->this$0:Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;

    #getter for: Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    invoke-static {v0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->access$000(Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getModel()Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;

    move-result-object v0

    iget-object v1, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$2;->this$0:Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;

    #getter for: Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->mUserDefinedPageView:Lcom/logitech/harmonylink/context/view/UserDefinedPageView;
    invoke-static {v1}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->access$000(Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;)Lcom/logitech/harmonylink/context/view/UserDefinedPageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/context/view/UserDefinedPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutModel;->commit(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity$2;->this$0:Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/EditUserDefinedPageActivity;->finish()V

    .line 64
    return-void
.end method
