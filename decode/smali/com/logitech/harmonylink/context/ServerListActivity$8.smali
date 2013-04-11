.class Lcom/logitech/harmonylink/context/ServerListActivity$8;
.super Ljava/lang/Object;
.source "ServerListActivity.java"

# interfaces
.implements Lcom/logitech/connect/IGlobalResponseObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/ServerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/ServerListActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/ServerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$8;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPacketSendingFailed(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 402
    packed-switch p1, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 408
    :pswitch_0
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/logitech/connect/ConnectClient;->setCurrentConnectionTarget(I)Z

    .line 409
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    .line 410
    .local v0, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$8;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #calls: Lcom/logitech/harmonylink/context/ServerListActivity;->updateWith(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$000(Lcom/logitech/harmonylink/context/ServerListActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPacketSendingStarted()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onPacketSendingSucceeded()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public onServiceUnauthorized()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onServiceUnavailable()V
    .locals 3

    .prologue
    .line 427
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/logitech/connect/ConnectClient;->setCurrentConnectionTarget(I)Z

    .line 428
    sget-object v1, Lcom/logitech/connect/ConnectClient;->sInstance:Lcom/logitech/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    .line 429
    .local v0, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    iget-object v1, p0, Lcom/logitech/harmonylink/context/ServerListActivity$8;->this$0:Lcom/logitech/harmonylink/context/ServerListActivity;

    #calls: Lcom/logitech/harmonylink/context/ServerListActivity;->updateWith(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/logitech/harmonylink/context/ServerListActivity;->access$000(Lcom/logitech/harmonylink/context/ServerListActivity;Ljava/util/ArrayList;)V

    .line 430
    return-void
.end method
