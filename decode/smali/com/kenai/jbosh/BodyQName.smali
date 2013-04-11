.class public final Lcom/kenai/jbosh/BodyQName;
.super Ljava/lang/Object;
.source "BodyQName.java"


# static fields
.field static final BOSH_NS_URI:Ljava/lang/String; = "http://jabber.org/protocol/httpbind"


# instance fields
.field private final qname:Lcom/kenai/jbosh/QName;


# direct methods
.method private constructor <init>(Lcom/kenai/jbosh/QName;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    .line 47
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    return-object v0
.end method

.method static createBOSH(Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;
    .locals 2
    .parameter

    .prologue
    .line 150
    const-string v0, "http://jabber.org/protocol/httpbind"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v0

    return-object v0
.end method

.method public static createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is required and may not be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local arg is required and may not be null/empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 84
    :cond_4
    new-instance v0, Lcom/kenai/jbosh/BodyQName;

    new-instance v1, Lcom/kenai/jbosh/QName;

    invoke-direct {v1, p0, p1}, Lcom/kenai/jbosh/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BodyQName;-><init>(Lcom/kenai/jbosh/QName;)V

    .line 86
    :goto_0
    return-object v0

    :cond_5
    new-instance v0, Lcom/kenai/jbosh/BodyQName;

    new-instance v1, Lcom/kenai/jbosh/QName;

    invoke-direct {v1, p0, p1, p2}, Lcom/kenai/jbosh/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BodyQName;-><init>(Lcom/kenai/jbosh/QName;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 123
    instance-of v0, p1, Lcom/kenai/jbosh/BodyQName;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/kenai/jbosh/BodyQName;

    .line 125
    iget-object v0, p0, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    iget-object v1, p1, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method equalsQName(Lcom/kenai/jbosh/QName;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    invoke-virtual {v0, p1}, Lcom/kenai/jbosh/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    invoke-virtual {v0}, Lcom/kenai/jbosh/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    invoke-virtual {v0}, Lcom/kenai/jbosh/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    invoke-virtual {v0}, Lcom/kenai/jbosh/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kenai/jbosh/BodyQName;->qname:Lcom/kenai/jbosh/QName;

    invoke-virtual {v0}, Lcom/kenai/jbosh/QName;->hashCode()I

    move-result v0

    return v0
.end method
