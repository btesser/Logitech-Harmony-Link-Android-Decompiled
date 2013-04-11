.class public Lcom/logitech/harmonylink/error/ServerErrorResponse;
.super Ljava/lang/Object;
.source "ServerErrorResponse.java"


# instance fields
.field protected final mErrorCode:I

.field private final mId:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mRequestString:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/logitech/harmonylink/error/ServerErrorResponse;)V
    .locals 1
    .parameter "serverErrorResponse"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget v0, p1, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mErrorCode:I

    iput v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mErrorCode:I

    .line 48
    iget-object v0, p1, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mId:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mMessage:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mSource:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "responseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, jsonBody:Lorg/json/JSONObject;
    const-string v1, "ErrorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mErrorCode:I

    .line 41
    const-string v1, "Id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mId:Ljava/lang/String;

    .line 42
    const-string v1, "Message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mMessage:Ljava/lang/String;

    .line 43
    const-string v1, "Source"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mSource:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mErrorCode:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mRequestString:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public setRequestString(Ljava/lang/String;)V
    .locals 0
    .parameter "requestString"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/logitech/harmonylink/error/ServerErrorResponse;->mRequestString:Ljava/lang/String;

    .line 59
    return-void
.end method
