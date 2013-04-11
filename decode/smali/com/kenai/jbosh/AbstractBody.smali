.class public abstract Lcom/kenai/jbosh/AbstractBody;
.super Ljava/lang/Object;
.source "AbstractBody.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static getBodyQName()Lcom/kenai/jbosh/BodyQName;
    .locals 1

    .prologue
    .line 101
    const-string v0, "body"

    invoke-static {v0}, Lcom/kenai/jbosh/BodyQName;->createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAttribute(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/kenai/jbosh/AbstractBody;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 72
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getAttributeNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/kenai/jbosh/AbstractBody;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAttributes()Ljava/util/Map;
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
.end method

.method public abstract toXML()Ljava/lang/String;
.end method
