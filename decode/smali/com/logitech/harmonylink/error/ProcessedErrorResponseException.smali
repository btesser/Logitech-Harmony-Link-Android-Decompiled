.class public Lcom/logitech/harmonylink/error/ProcessedErrorResponseException;
.super Lcom/logitech/harmonylink/error/ResponseException;
.source "ProcessedErrorResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mServerErrorResponse:Lcom/logitech/harmonylink/error/ServerErrorResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/logitech/harmonylink/error/ServerErrorResponse;)V
    .locals 0
    .parameter "msg"
    .parameter "serverErrorResponse"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/logitech/harmonylink/error/ResponseException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/logitech/harmonylink/error/ProcessedErrorResponseException;->mServerErrorResponse:Lcom/logitech/harmonylink/error/ServerErrorResponse;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/logitech/harmonylink/error/ServerErrorResponse;Ljava/lang/Exception;)V
    .locals 0
    .parameter "msg"
    .parameter "serverErrorResponse"
    .parameter "e"

    .prologue
    .line 34
    invoke-direct {p0, p1, p3}, Lcom/logitech/harmonylink/error/ResponseException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    iput-object p2, p0, Lcom/logitech/harmonylink/error/ProcessedErrorResponseException;->mServerErrorResponse:Lcom/logitech/harmonylink/error/ServerErrorResponse;

    .line 36
    return-void
.end method


# virtual methods
.method public getServerErrorResponse()Lcom/logitech/harmonylink/error/ServerErrorResponse;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/logitech/harmonylink/error/ProcessedErrorResponseException;->mServerErrorResponse:Lcom/logitech/harmonylink/error/ServerErrorResponse;

    return-object v0
.end method
