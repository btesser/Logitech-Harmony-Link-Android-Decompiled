.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;-><init>(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 80
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->hideSoftKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mDiscoveryServiceUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$100(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$1;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->startSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
