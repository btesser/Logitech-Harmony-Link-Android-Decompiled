.class Lcom/logitech/connect/ConnectClient$4;
.super Ljava/lang/Object;
.source "ConnectClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/connect/ConnectClient;->onConnectChanged(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/connect/ConnectClient;

.field final synthetic val$connected:I

.field final synthetic val$errorCode:I

.field final synthetic val$errorCondition:Z


# direct methods
.method constructor <init>(Lcom/logitech/connect/ConnectClient;IZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iput p2, p0, Lcom/logitech/connect/ConnectClient$4;->val$connected:I

    iput-boolean p3, p0, Lcom/logitech/connect/ConnectClient$4;->val$errorCondition:Z

    iput p4, p0, Lcom/logitech/connect/ConnectClient$4;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 577
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v3, v3, Lcom/logitech/connect/ConnectClient;->mConnected:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/logitech/connect/ConnectClient$4;->val$connected:I

    if-ne v3, v4, :cond_0

    .line 580
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    const-string v4, "ConnectClient"

    invoke-virtual {v3, v4, v6}, Lcom/logitech/connect/ConnectClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 582
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "userName"

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget-object v5, v5, Lcom/logitech/connect/ConnectClient;->mUserName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "passWord"

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget-object v5, v5, Lcom/logitech/connect/ConnectClient;->mPasssword:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "localServer"

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget-object v5, v5, Lcom/logitech/connect/ConnectClient;->mServer:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "port"

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v5, v5, Lcom/logitech/connect/ConnectClient;->mPort:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "serverIdentity"

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget-object v5, v5, Lcom/logitech/connect/ConnectClient;->mServerIdentity:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    #setter for: Lcom/logitech/connect/ConnectClient;->mDisconnectPending:Z
    invoke-static {v3, v6}, Lcom/logitech/connect/ConnectClient;->access$402(Lcom/logitech/connect/ConnectClient;Z)Z

    .line 592
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v4, p0, Lcom/logitech/connect/ConnectClient$4;->val$connected:I

    iput v4, v3, Lcom/logitech/connect/ConnectClient;->mConnected:I

    .line 593
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget-boolean v4, p0, Lcom/logitech/connect/ConnectClient$4;->val$errorCondition:Z

    iput-boolean v4, v3, Lcom/logitech/connect/ConnectClient;->mErrorCondition:Z

    .line 594
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v4, p0, Lcom/logitech/connect/ConnectClient$4;->val$errorCode:I

    iput v4, v3, Lcom/logitech/connect/ConnectClient;->mErrorCode:I

    .line 596
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    #getter for: Lcom/logitech/connect/ConnectClient;->mObservers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/logitech/connect/ConnectClient;->access$500(Lcom/logitech/connect/ConnectClient;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/logitech/connect/IConnectClientObserver;

    .line 597
    .local v1, o:Lcom/logitech/connect/IConnectClientObserver;
    iget-object v3, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v3, v3, Lcom/logitech/connect/ConnectClient;->mConnected:I

    iget-object v4, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget-boolean v4, v4, Lcom/logitech/connect/ConnectClient;->mErrorCondition:Z

    iget-object v5, p0, Lcom/logitech/connect/ConnectClient$4;->this$0:Lcom/logitech/connect/ConnectClient;

    iget v5, v5, Lcom/logitech/connect/ConnectClient;->mErrorCode:I

    invoke-interface {v1, v3, v4, v5}, Lcom/logitech/connect/IConnectClientObserver;->onConnectedChanged(IZI)V

    goto :goto_0

    .line 599
    .end local v1           #o:Lcom/logitech/connect/IConnectClientObserver;
    :cond_1
    return-void
.end method
