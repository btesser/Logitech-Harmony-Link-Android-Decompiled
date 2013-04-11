.class Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;
.super Ljava/lang/Object;
.source "HarmonyRemoteApplication.java"

# interfaces
.implements Lcom/logitech/connect/IGlobalResponseObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/HarmonyRemoteApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacketSendingFailed(I)V
    .locals 6
    .parameter "errorCode"

    .prologue
    const v5, 0x7f0600c2

    const v4, 0x7f0600c1

    const/4 v3, 0x0

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 567
    :goto_0
    return-void

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const-string v2, "Wifi Connection lost"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1802(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 539
    :pswitch_1
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const-string v2, "Could not connect"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1802(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 544
    :pswitch_2
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :pswitch_3
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const-string v2, "Too many connections"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1802(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 555
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    #getter for: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mLastToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1800(Lcom/logitech/harmonylink/HarmonyRemoteApplication;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 558
    :pswitch_4
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v0, v0, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->mConnectClient:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, v4}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    iget-object v1, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    invoke-virtual {v1, v5}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPacketSendingStarted()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v1, 0x0

    #calls: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public onPacketSendingSucceeded()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const/4 v1, 0x0

    #calls: Lcom/logitech/harmonylink/HarmonyRemoteApplication;->setNotice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/logitech/harmonylink/HarmonyRemoteApplication;->access$1900(Lcom/logitech/harmonylink/HarmonyRemoteApplication;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public onServiceUnauthorized()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public onServiceUnavailable()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/logitech/harmonylink/HarmonyRemoteApplication$11;->this$0:Lcom/logitech/harmonylink/HarmonyRemoteApplication;

    const v1, 0x7f06001b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 521
    return-void
.end method
