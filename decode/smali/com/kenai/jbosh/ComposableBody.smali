.class public final Lcom/kenai/jbosh/ComposableBody;
.super Lcom/kenai/jbosh/AbstractBody;
.source "ComposableBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/ComposableBody$1;,
        Lcom/kenai/jbosh/ComposableBody$Builder;
    }
.end annotation


# static fields
.field private static final BOSH_START:Ljava/util/regex/Pattern;


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

.field private final computed:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final payload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "<body(?:[\t\n\r ][^>]*?)?(/>|>)"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/ComposableBody;->BOSH_START:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/kenai/jbosh/BodyQName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/kenai/jbosh/AbstractBody;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->computed:Ljava/util/concurrent/atomic/AtomicReference;

    .line 199
    iput-object p1, p0, Lcom/kenai/jbosh/ComposableBody;->attrs:Ljava/util/Map;

    .line 200
    iput-object p2, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/kenai/jbosh/ComposableBody$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/kenai/jbosh/ComposableBody;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kenai/jbosh/ComposableBody;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public static builder()Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lcom/kenai/jbosh/ComposableBody$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/ComposableBody$Builder;-><init>(Lcom/kenai/jbosh/ComposableBody$1;)V

    return-object v0
.end method

.method private computeXML()Ljava/lang/String;
    .locals 7

    .prologue
    .line 316
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->getBodyQName()Lcom/kenai/jbosh/BodyQName;

    move-result-object v2

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const-string v0, "<"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->attrs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 321
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kenai/jbosh/BodyQName;

    .line 323
    invoke-virtual {v1}, Lcom/kenai/jbosh/BodyQName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 324
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 325
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    invoke-virtual {v1}, Lcom/kenai/jbosh/BodyQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, "=\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/ComposableBody;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    :cond_1
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v0, "xmlns"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v0, "=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v2}, Lcom/kenai/jbosh/BodyQName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v0, "\'>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_2
    const-string v0, "</body>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 307
    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static fromStaticBody(Lcom/kenai/jbosh/StaticBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/kenai/jbosh/StaticBody;->toXML()Ljava/lang/String;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/kenai/jbosh/ComposableBody;->BOSH_START:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not locate \'body\' element in XML.  The raw XML did not match the pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kenai/jbosh/ComposableBody;->BOSH_START:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const-string v2, ">"

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 229
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 230
    if-ge v2, v1, :cond_1

    move v2, v1

    .line 233
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    new-instance v1, Lcom/kenai/jbosh/ComposableBody;

    invoke-virtual {p0}, Lcom/kenai/jbosh/StaticBody;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/ComposableBody;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v1

    .line 235
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
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
    .line 272
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->attrs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;
    .locals 1

    .prologue
    .line 262
    #calls: Lcom/kenai/jbosh/ComposableBody$Builder;->fromBody(Lcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody$Builder;
    invoke-static {p0}, Lcom/kenai/jbosh/ComposableBody$Builder;->access$300(Lcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kenai/jbosh/ComposableBody;->computed:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/kenai/jbosh/ComposableBody;->computeXML()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/kenai/jbosh/ComposableBody;->computed:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 284
    :cond_0
    return-object v0
.end method
