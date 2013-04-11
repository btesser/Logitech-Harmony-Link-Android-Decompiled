.class public Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;
.super Ljava/lang/Object;
.source "ActionDownHeartbeat.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HEARTBEAT_INTERVAL:J = 0x42aL

.field private static final OLIVE_HEARTBEAT_INTERVAL:J = 0xc8L

.field private static mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;


# instance fields
.field private mButtonView:Landroid/view/View;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;

.field private mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 1
    .parameter "buttonView"
    .parameter "dom"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mButtonView:Landroid/view/View;

    .line 20
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mIsStopped:Z

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;
    .locals 1
    .parameter "buttonView"
    .parameter "dom"

    .prologue
    .line 65
    sget-object v0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    invoke-direct {v0, p0, p1}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;-><init>(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    .line 68
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    return-object v0
.end method

.method private heartbeat()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendIrCommandHeartbeat()Z

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendIrCommandHold()Z

    goto :goto_0
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mIsStopped:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->heartbeat()V

    .line 55
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mIsStopped:Z

    if-nez v0, :cond_0

    .line 56
    const-string v0, "82"

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0x42a

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mIsStopped:Z

    .line 31
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->heartbeat()V

    .line 32
    const-string v0, "82"

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0x42a

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mIsStopped:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionDownHeartbeat;

    .line 27
    return-void
.end method
