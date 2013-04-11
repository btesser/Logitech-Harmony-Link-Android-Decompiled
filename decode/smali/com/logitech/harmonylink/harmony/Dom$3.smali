.class Lcom/logitech/harmonylink/harmony/Dom$3;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/IConnectClientObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/harmony/Dom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/harmony/Dom;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/harmony/Dom;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$3;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(IZI)V
    .locals 1
    .parameter "mConnected"
    .parameter "errorCondition"
    .parameter "errorCode"

    .prologue
    .line 228
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$3;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/harmony/Dom;->onConnectedAndAuthorized()V

    .line 232
    :cond_0
    return-void
.end method

.method public onTargetsChanged(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/connect/Target;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/connect/Target;>;"
    return-void
.end method
