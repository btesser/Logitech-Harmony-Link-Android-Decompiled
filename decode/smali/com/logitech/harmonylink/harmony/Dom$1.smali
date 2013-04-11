.class Lcom/logitech/harmonylink/harmony/Dom$1;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


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
    .line 113
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/logitech/harmonylink/harmony/Dom;->onDomChanged(Ljava/lang/Class;)V

    .line 111
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, newConfigHash:Ljava/lang/String;
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, res:Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 117
    .local v0, indexOfEqual:I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 118
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    #getter for: Lcom/logitech/harmonylink/harmony/Dom;->mOliveConfigHash:Ljava/lang/String;
    invoke-static {v3}, Lcom/logitech/harmonylink/harmony/Dom;->access$000(Lcom/logitech/harmonylink/harmony/Dom;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iput-boolean v4, v3, Lcom/logitech/harmonylink/harmony/Dom;->mInitialized:Z

    .line 124
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    iput-boolean v4, v3, Lcom/logitech/harmonylink/harmony/Dom;->mSetupRequired:Z

    .line 125
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/harmony/Dom;->refresh()V

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v3, v1}, Lcom/logitech/harmonylink/harmony/Dom;->setOliveHash(Ljava/lang/String;)V

    .line 131
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/logitech/harmonylink/harmony/Dom$1;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/logitech/harmonylink/harmony/Dom;->onDomChanged(Ljava/lang/Class;)V

    goto :goto_0
.end method
