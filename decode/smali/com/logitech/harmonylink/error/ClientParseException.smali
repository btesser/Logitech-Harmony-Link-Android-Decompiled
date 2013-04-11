.class public Lcom/logitech/harmonylink/error/ClientParseException;
.super Lcom/logitech/harmonylink/error/ResponseException;
.source "ClientParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/error/ResponseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method
