.class public Lcom/kenai/jbosh/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final emptyString:Ljava/lang/String;


# instance fields
.field private localPart:Ljava/lang/String;

.field private namespaceURI:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/QName;->emptyString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    sget-object v0, Lcom/kenai/jbosh/QName;->emptyString:Ljava/lang/String;

    sget-object v1, Lcom/kenai/jbosh/QName;->emptyString:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/kenai/jbosh/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/kenai/jbosh/QName;->emptyString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/kenai/jbosh/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p1, :cond_0

    sget-object v0, Lcom/kenai/jbosh/QName;->emptyString:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    .line 116
    if-nez p2, :cond_1

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid QName local part"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    .line 122
    if-nez p3, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid QName prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/QName;->prefix:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 264
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/QName;->prefix:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kenai/jbosh/QName;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 223
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid QName literal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    .line 228
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 230
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid QName literal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid QName literal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_3
    new-instance v1, Lcom/kenai/jbosh/QName;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lcom/kenai/jbosh/QName;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/QName;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    if-ne p1, p0, :cond_0

    move v1, v4

    .line 202
    :goto_0
    return v1

    .line 193
    :cond_0
    instance-of v1, p1, Lcom/kenai/jbosh/QName;

    if-nez v1, :cond_1

    move v1, v3

    .line 194
    goto :goto_0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/kenai/jbosh/QName;

    move-object v1, v0

    iget-object v1, v1, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    check-cast p1, Lcom/kenai/jbosh/QName;

    iget-object v2, p1, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    move v1, v4

    .line 199
    goto :goto_0

    :cond_2
    move v1, v3

    .line 202
    goto :goto_0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    sget-object v1, Lcom/kenai/jbosh/QName;->emptyString:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kenai/jbosh/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kenai/jbosh/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
