.class final Lcom/kenai/jbosh/StaticBody;
.super Lcom/kenai/jbosh/AbstractBody;
.source "StaticBody.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final PARSER:Lcom/kenai/jbosh/BodyParser;


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

.field private final raw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/kenai/jbosh/BodyParserXmlPull;

    invoke-direct {v0}, Lcom/kenai/jbosh/BodyParserXmlPull;-><init>()V

    sput-object v0, Lcom/kenai/jbosh/StaticBody;->PARSER:Lcom/kenai/jbosh/BodyParser;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
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
    .line 70
    invoke-direct {p0}, Lcom/kenai/jbosh/AbstractBody;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/kenai/jbosh/StaticBody;->attrs:Ljava/util/Map;

    .line 72
    iput-object p2, p0, Lcom/kenai/jbosh/StaticBody;->raw:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/kenai/jbosh/StaticBody;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 91
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 92
    if-lez v2, :cond_1

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_1
    if-gez v2, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/StaticBody;->fromString(Ljava/lang/String;)Lcom/kenai/jbosh/StaticBody;

    move-result-object v0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    const-string v2, "Could not read body data"

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/kenai/jbosh/StaticBody;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/kenai/jbosh/StaticBody;->PARSER:Lcom/kenai/jbosh/BodyParser;

    invoke-interface {v0, p0}, Lcom/kenai/jbosh/BodyParser;->parse(Ljava/lang/String;)Lcom/kenai/jbosh/BodyParserResults;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/kenai/jbosh/StaticBody;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BodyParserResults;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/kenai/jbosh/StaticBody;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
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
    .line 123
    iget-object v0, p0, Lcom/kenai/jbosh/StaticBody;->attrs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kenai/jbosh/StaticBody;->raw:Ljava/lang/String;

    return-object v0
.end method
