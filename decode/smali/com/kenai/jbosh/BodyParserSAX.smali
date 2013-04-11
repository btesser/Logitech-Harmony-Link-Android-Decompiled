.class final Lcom/kenai/jbosh/BodyParserSAX;
.super Ljava/lang/Object;
.source "BodyParserSAX.java"

# interfaces
.implements Lcom/kenai/jbosh/BodyParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/BodyParserSAX$Handler;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PARSER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljavax/xml/parsers/SAXParser;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/kenai/jbosh/BodyParserSAX;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;

    .line 52
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    .line 53
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 54
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 63
    new-instance v0, Lcom/kenai/jbosh/BodyParserSAX$1;

    invoke-direct {v0}, Lcom/kenai/jbosh/BodyParserSAX$1;-><init>()V

    sput-object v0, Lcom/kenai/jbosh/BodyParserSAX;->PARSER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static getSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 3

    .prologue
    .line 184
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->PARSER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 185
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/SAXParser;

    .line 186
    if-nez v0, :cond_0

    .line 189
    :try_start_0
    sget-object v0, Lcom/kenai/jbosh/BodyParserSAX;->SAX_FACTORY:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 191
    sget-object v2, Lcom/kenai/jbosh/BodyParserSAX;->PARSER:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 198
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create SAX parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->reset()V

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/kenai/jbosh/BodyParserResults;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/kenai/jbosh/BodyParserResults;

    invoke-direct {v0}, Lcom/kenai/jbosh/BodyParserResults;-><init>()V

    .line 163
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 164
    invoke-static {}, Lcom/kenai/jbosh/BodyParserSAX;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 165
    new-instance v3, Lcom/kenai/jbosh/BodyParserSAX$Handler;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lcom/kenai/jbosh/BodyParserSAX$Handler;-><init>(Ljavax/xml/parsers/SAXParser;Lcom/kenai/jbosh/BodyParserResults;Lcom/kenai/jbosh/BodyParserSAX$1;)V

    invoke-virtual {v2, v1, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 172
    :goto_0
    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse body:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 167
    :catch_1
    move-exception v0

    goto :goto_0
.end method
