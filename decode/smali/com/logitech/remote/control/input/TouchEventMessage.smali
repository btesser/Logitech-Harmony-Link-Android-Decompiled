.class public Lcom/logitech/remote/control/input/TouchEventMessage;
.super Ljava/lang/Object;
.source "TouchEventMessage.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IMessage;


# static fields
.field public static final NAME:Ljava/lang/String; = "e"

.field public static final URI:Ljava/lang/String; = "message://input.logitech.com/TouchEvent"


# instance fields
.field private mAction:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mAction:I

    .line 36
    iput p2, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mX:I

    .line 37
    iput p3, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mY:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mAction:I

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mX:I

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mY:I

    .line 32
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mAction:I

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    const-string v0, "0v%08X:%08X:%08X"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mAction:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "e"

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "message://input.logitech.com/TouchEvent"

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/logitech/remote/control/input/TouchEventMessage;->mY:I

    return v0
.end method
