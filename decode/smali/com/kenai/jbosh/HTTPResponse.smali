.class interface abstract Lcom/kenai/jbosh/HTTPResponse;
.super Ljava/lang/Object;
.source "HTTPResponse.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract getBody()Lcom/kenai/jbosh/AbstractBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation
.end method

.method public abstract getHTTPStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation
.end method
