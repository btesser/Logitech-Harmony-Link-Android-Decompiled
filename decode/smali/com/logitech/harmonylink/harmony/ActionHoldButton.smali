.class public Lcom/logitech/harmonylink/harmony/ActionHoldButton;
.super Ljava/lang/Object;
.source "ActionHoldButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HEARTBEAT_INTERVAL:J = 0x42aL

.field private static final OLIVE_HEARTBEAT_INTERVAL:J = 0xc8L

.field private static mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionHoldButton;


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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mButtonView:Landroid/view/View;

    .line 18
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mIsStopped:Z

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;
    .locals 1
    .parameter "buttonView"
    .parameter "dom"

    .prologue
    .line 59
    sget-object v0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    invoke-direct {v0, p0, p1}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;-><init>(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)V

    sput-object v0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    .line 62
    :cond_0
    sget-object v0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    return-object v0
.end method

.method private heartbeat()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->sendIrCommandHold()Z

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mIsStopped:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->heartbeat()V

    .line 49
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mIsStopped:Z

    if-nez v0, :cond_0

    .line 50
    const-string v0, "82"

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0x42a

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mIsStopped:Z

    .line 29
    invoke-direct {p0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->heartbeat()V

    .line 30
    const-string v0, "82"

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/harmony/Dom;->getConnectClient()Lcom/logitech/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/logitech/connect/ConnectClient;->getHubId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mButtonView:Landroid/view/View;

    const-wide/16 v1, 0x42a

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mIsStopped:Z

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->mHeartbeat:Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    .line 25
    return-void
.end method
