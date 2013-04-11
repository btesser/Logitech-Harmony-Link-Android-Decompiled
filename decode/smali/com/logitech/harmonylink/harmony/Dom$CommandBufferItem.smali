.class Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;
.super Ljava/lang/Object;
.source "Dom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/harmony/Dom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandBufferItem"
.end annotation


# instance fields
.field private mCommand:Lcom/logitech/harmonylink/harmony/Command;

.field private mHold:Z

.field private mModifier:I

.field final synthetic this$0:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;Lcom/logitech/harmonylink/harmony/Command;ZI)V
    .locals 0
    .parameter
    .parameter "command"
    .parameter "hold"
    .parameter "modifier"

    .prologue
    .line 866
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p2, p0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    .line 868
    iput-boolean p3, p0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->mHold:Z

    .line 869
    iput p4, p0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->mModifier:I

    .line 870
    return-void
.end method


# virtual methods
.method public getCommand()Lcom/logitech/harmonylink/harmony/Command;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->mCommand:Lcom/logitech/harmonylink/harmony/Command;

    return-object v0
.end method

.method public getHold()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->mHold:Z

    return v0
.end method

.method public getModifier()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/logitech/harmonylink/harmony/Dom$CommandBufferItem;->mModifier:I

    return v0
.end method
