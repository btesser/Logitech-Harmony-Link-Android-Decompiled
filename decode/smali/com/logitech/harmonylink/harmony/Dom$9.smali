.class Lcom/logitech/harmonylink/harmony/Dom$9;
.super Ljava/lang/Object;
.source "Dom.java"

# interfaces
.implements Lcom/logitech/connect/client/transport/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/harmony/Dom;->getCurrentActivityFromKa()V
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
    .line 470
    iput-object p1, p0, Lcom/logitech/harmonylink/harmony/Dom$9;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 468
    return-void
.end method

.method public onResponseReceived(Lcom/logitech/connect/client/transport/IOpenApiRequest;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 476
    invoke-interface {p1}, Lcom/logitech/connect/client/transport/IOpenApiRequest;->getResponseAsString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, responseString:Ljava/lang/String;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 481
    .local v0, indexOfEqual:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom$9;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/logitech/harmonylink/harmony/Dom$9;->this$0:Lcom/logitech/harmonylink/harmony/Dom;

    invoke-virtual {v2, v1}, Lcom/logitech/harmonylink/harmony/Dom;->setCurrentActivity(Ljava/lang/String;)V

    goto :goto_0
.end method
