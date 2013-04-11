.class public final Lcom/kenai/jbosh/ComposableBody$Builder;
.super Ljava/lang/Object;
.source "ComposableBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/ComposableBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private doMapCopy:Z

.field private map:Ljava/util/Map;
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

.field private payloadXML:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/kenai/jbosh/ComposableBody$1;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/kenai/jbosh/ComposableBody$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-static {p0}, Lcom/kenai/jbosh/ComposableBody$Builder;->fromBody(Lcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static fromBody(Lcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 2
    .parameter

    .prologue
    .line 109
    new-instance v0, Lcom/kenai/jbosh/ComposableBody$Builder;

    invoke-direct {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/kenai/jbosh/ComposableBody;->getAttributes()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kenai/jbosh/ComposableBody$Builder;->doMapCopy:Z

    .line 112
    #getter for: Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;
    invoke-static {p0}, Lcom/kenai/jbosh/ComposableBody;->access$000(Lcom/kenai/jbosh/ComposableBody;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kenai/jbosh/ComposableBody$Builder;->payloadXML:Ljava/lang/String;

    .line 113
    return-object v0
.end method


# virtual methods
.method public build()Lcom/kenai/jbosh/ComposableBody;
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->payloadXML:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->payloadXML:Ljava/lang/String;

    .line 184
    :cond_1
    new-instance v0, Lcom/kenai/jbosh/ComposableBody;

    iget-object v1, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->payloadXML:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/kenai/jbosh/ComposableBody;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/kenai/jbosh/ComposableBody$1;)V

    return-object v0
.end method

.method public setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    .line 147
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 148
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_1
    return-object p0

    .line 143
    :cond_1
    iget-boolean v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->doMapCopy:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->doMapCopy:Z

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setNamespaceDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "xmlns"

    invoke-static {v0, p1, v1}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, p2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPayloadXML(Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 2
    .parameter

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload XML argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/kenai/jbosh/ComposableBody$Builder;->payloadXML:Ljava/lang/String;

    .line 129
    return-object p0
.end method
