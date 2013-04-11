.class public Lcom/logitech/harmonylink/util/ServiceDescription;
.super Ljava/lang/Object;
.source "ServiceDescription.java"


# instance fields
.field private mMethodName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "methodName"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/logitech/harmonylink/util/ServiceDescription;->mUrl:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/logitech/harmonylink/util/ServiceDescription;->mMethodName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/logitech/harmonylink/util/ServiceDescription;->mMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/logitech/harmonylink/util/ServiceDescription;->mUrl:Ljava/lang/String;

    return-object v0
.end method
