.class public Lcom/logitech/harmonylink/harmony/SendCommands;
.super Ljava/lang/Object;
.source "SendCommands.java"


# instance fields
.field private mButton:Landroid/view/View;

.field private mCommand:Lcom/logitech/harmonylink/harmony/Command;

.field private mDom:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;Landroid/view/View;)V
    .locals 0
    .parameter "dom"
    .parameter "command"
    .parameter "button"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    .line 12
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    .line 13
    iput-object p3, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mButton:Landroid/view/View;

    .line 14
    return-void
.end method


# virtual methods
.method public sendCancelCommand()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mButton:Landroid/view/View;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->stop()V

    .line 23
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->send2xCancelCommand()Z

    .line 24
    return-void
.end method

.method public sendCommand()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->startSend2xCommand(Lcom/logitech/harmonylink/harmony/Command;)V

    .line 18
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mButton:Landroid/view/View;

    iget-object v1, p0, Lcom/logitech/harmonylink/harmony/SendCommands;->mDom:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-static {v0, v1}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->getInstance(Landroid/view/View;Lcom/logitech/harmonylink/harmony/Dom;)Lcom/logitech/harmonylink/harmony/ActionHoldButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/ActionHoldButton;->start()V

    .line 19
    return-void
.end method
