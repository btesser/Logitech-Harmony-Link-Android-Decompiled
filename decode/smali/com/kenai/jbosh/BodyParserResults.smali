.class final Lcom/kenai/jbosh/BodyParserResults;
.super Ljava/lang/Object;
.source "BodyParserResults.java"


# instance fields
.field private final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BodyParserResults;->attrs:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method addBodyAttributeValue(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kenai/jbosh/BodyParserResults;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kenai/jbosh/BodyParserResults;->attrs:Ljava/util/Map;

    return-object v0
.end method
