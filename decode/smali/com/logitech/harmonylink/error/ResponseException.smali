.class public Lcom/logitech/harmonylink/error/ResponseException;
.super Lcom/logitech/harmonylink/error/HarmonyRuntimeException;
.source "ResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/error/HarmonyRuntimeException;-><init>(Ljava/lang/Exception;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/error/HarmonyRuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/logitech/harmonylink/error/HarmonyRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    return-void
.end method
