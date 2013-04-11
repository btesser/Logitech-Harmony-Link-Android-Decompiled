.class public abstract Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;
.super Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;
.source "AbstractMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractKeyValue",
        "<TK;TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 75
    :goto_0
    return v0

    .line 71
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    move v0, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->value:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractMapEntry;->value:Ljava/lang/Object;

    .line 56
    return-object v0
.end method
