.class public Lcom/logitech/remote/control/input/KeyEventMessage;
.super Ljava/lang/Object;
.source "KeyEventMessage.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IMessage;


# static fields
.field public static final NAME:Ljava/lang/String; = "keyevent"

.field public static final URI:Ljava/lang/String; = "message://input.logitech.com/KeyEvent"


# instance fields
.field private mKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyEvent"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/logitech/remote/control/input/KeyEventMessage;->mKeyEvent:Landroid/view/KeyEvent;

    .line 29
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/logitech/remote/control/input/KeyEventMessage;
    .locals 10
    .parameter "body"

    .prologue
    const-wide/16 v1, 0x0

    const/16 v4, 0x10

    .line 46
    const/4 v0, 0x2

    const/16 v3, 0xa

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 47
    .local v5, action:I
    const/16 v0, 0xb

    const/16 v3, 0x13

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 48
    .local v6, keyCode:I
    const/16 v0, 0x14

    const/16 v3, 0x1c

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 49
    .local v8, metaState:I
    const/16 v0, 0x1d

    const/16 v3, 0x25

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 51
    .local v7, repeatCount:I
    new-instance v9, Lcom/logitech/remote/control/input/KeyEventMessage;

    new-instance v0, Landroid/view/KeyEvent;

    move-wide v3, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    invoke-direct {v9, v0}, Lcom/logitech/remote/control/input/KeyEventMessage;-><init>(Landroid/view/KeyEvent;)V

    return-object v9
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, "0:%08X:%08X:%08X:%08X"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/logitech/remote/control/input/KeyEventMessage;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/logitech/remote/control/input/KeyEventMessage;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/logitech/remote/control/input/KeyEventMessage;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/logitech/remote/control/input/KeyEventMessage;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyEvent()Landroid/view/KeyEvent;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/logitech/remote/control/input/KeyEventMessage;->mKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "keyevent"

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "message://input.logitech.com/KeyEvent"

    return-object v0
.end method
