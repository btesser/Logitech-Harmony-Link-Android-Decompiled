.class Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;
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
    .line 212
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 214
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    const/4 v6, 0x0

    #calls: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->enableButtons(Z)V
    invoke-static {v5, v6}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$200(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Z)V

    .line 215
    new-instance v1, Lcom/logitech/harmonylink/model/OneTouchContent;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "channels"

    invoke-direct {v1, v5, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v1, channel:Lcom/logitech/harmonylink/model/OneTouchContent;
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelNumber:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$300(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    .line 221
    .local v0, app:Lcom/logitech/harmonylink/HarmonyRemoteApplication;
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/logitech/harmonylink/dao/OneTouchDao;->getMaxColoumn(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, max:I
    new-instance v4, Lcom/logitech/harmonylink/model/OneTouchContent;

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$400(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "channels"

    invoke-direct {v4, v5, v6}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v4, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mEditChannelNumber:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$300(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 227
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mIconPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 228
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f02006d

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mIconPath:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$502(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    :cond_0
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->mIconPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->access$500(Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4, v3}, Lcom/logitech/harmonylink/dao/OneTouchDao;->insert(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/harmonylink/model/OneTouchContent;I)Z

    .line 234
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->getDom()Lcom/logitech/harmonylink/harmony/Dom;

    move-result-object v5

    invoke-static {v5}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->getOneTouchManager(Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/OneTouchManager;

    move-result-object v2

    .line 236
    .local v2, mOneTouchManager:Lcom/logitech/harmonylink/harmony/OneTouchManager;
    iget-object v6, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getHarmonyLinkID()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v5

    const-string v8, "82"

    invoke-virtual {v2, v6, v7, v5, v8}, Lcom/logitech/harmonylink/harmony/OneTouchManager;->retrieveOneTouchContents(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/connect/ConnectClient;Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity$3;->this$0:Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;

    invoke-virtual {v5}, Lcom/logitech/harmonylink/olive/ui/AddChannelActivity;->finish()V

    .line 241
    return-void
.end method
