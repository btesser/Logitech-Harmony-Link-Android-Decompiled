.class public abstract Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;
.super Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$WeakRef;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$SoftRef;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceMapIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceIteratorBase;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySet;,
        Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final HARD:I = 0x0

.field public static final SOFT:I = 0x1

.field public static final WEAK:I = 0x2


# instance fields
.field protected keyType:I

.field protected purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;

.field protected valueType:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>()V

    .line 127
    return-void
.end method

.method protected constructor <init>(IIIFZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p3, p4}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;-><init>(IF)V

    .line 144
    const-string v0, "keyType"

    invoke-static {v0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 145
    const-string v0, "valueType"

    invoke-static {v0, p2}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 146
    iput p1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    .line 147
    iput p2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    .line 148
    iput-boolean p5, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeValues:Z

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static verify(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be HARD, SOFT, WEAK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->clear()V

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 201
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    move v0, v1

    .line 205
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public createEntry(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v1, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-object v3, v0

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySetIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValuesIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    .line 1007
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    .line 1008
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeValues:Z

    .line 1009
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->loadFactor:F

    .line 1010
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1011
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->init()V

    .line 1012
    new-array v0, v0, [Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    .line 1014
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1015
    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->threshold:I

    .line 1023
    return-void

    .line 1018
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1019
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keyType:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 976
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->valueType:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 977
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 978
    iget v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 979
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 980
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 982
    invoke-interface {v0}, Lorg/jivesoftware/smack/util/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 984
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 986
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntrySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->entrySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 230
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-result-object v0

    goto :goto_0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 419
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 156
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 190
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 438
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySet;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceKeySet;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->keySet:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/jivesoftware/smack/util/collections/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smack/util/collections/MapIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceMapIterator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceMapIterator;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected purge()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 360
    :goto_0
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    .line 362
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method protected purge(Ljava/lang/ref/Reference;)V
    .locals 5
    .parameter

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 376
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->hashIndex(II)I

    move-result v3

    .line 377
    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v3

    move-object v4, v1

    .line 379
    :goto_0
    if-eqz v2, :cond_0

    .line 380
    move-object v0, v2

    check-cast v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceEntry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    if-nez v4, :cond_1

    .line 382
    iget-object v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->data:[Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iget-object v2, v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    aput-object v2, v1, v3

    .line 386
    :goto_1
    iget v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->size:I

    .line 393
    :cond_0
    return-void

    .line 384
    :cond_1
    iget-object v1, v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    iput-object v1, v4, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 390
    :cond_2
    iget-object v1, v2, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;->next:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$HashEntry;

    move-object v4, v2

    move-object v2, v1

    goto :goto_0
.end method

.method protected purgeBeforeRead()V
    .locals 0

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purge()V

    .line 339
    return-void
.end method

.method protected purgeBeforeWrite()V
    .locals 0

    .prologue
    .line 347
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purge()V

    .line 348
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    if-nez p2, :cond_1

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 256
    invoke-super {p0, p1, p2}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 270
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->purgeBeforeRead()V

    .line 180
    invoke-super {p0}, Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap$ReferenceValues;-><init>(Lorg/jivesoftware/smack/util/collections/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/collections/AbstractReferenceMap;->values:Lorg/jivesoftware/smack/util/collections/AbstractHashedMap$Values;

    return-object v0
.end method
