.class abstract Lcom/kenai/jbosh/BOSHClient$ExchangeInterceptor;
.super Ljava/lang/Object;
.source "BOSHClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/BOSHClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ExchangeInterceptor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method


# virtual methods
.method abstract interceptExchange(Lcom/kenai/jbosh/HTTPExchange;)Lcom/kenai/jbosh/HTTPExchange;
.end method
