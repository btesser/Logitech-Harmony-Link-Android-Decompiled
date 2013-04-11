.class final Lcom/kenai/jbosh/BodyParserSAX$1;
.super Ljava/lang/ThreadLocal;
.source "BodyParserSAX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/BodyParserSAX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/kenai/jbosh/BodyParserSAX$1;->initialValue()Ljava/lang/ref/SoftReference;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/ref/SoftReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljavax/xml/parsers/SAXParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
