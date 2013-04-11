.class Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;
.super Ljava/lang/Object;
.source "FavoriteSearchHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;
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
    .line 131
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$000(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/logitech/harmonylink/util/HarmonyRemoteDisplay;->hideSoftKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mDiscoveryServiceUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$100(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler$3;->this$0:Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;

    #getter for: Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->access$200(Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/logitech/harmonylink/olive/ui/FavoriteSearchHandler;->startSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method
