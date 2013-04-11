.class Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;
.super Ljava/lang/Object;
.source "AddChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    new-instance v1, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-direct {v1, v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;-><init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V

    #setter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$602(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->addViewToAnimator(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$700(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$800(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/ViewAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    #calls: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->showView(I)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$900(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;I)V

    .line 255
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-static {v0, p1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->hideSoftKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mFavoriteSearchHandler:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$600(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    move-result-object v0

    invoke-static {}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$1000()Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getDiscoveryServiceUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$4;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->startSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method
