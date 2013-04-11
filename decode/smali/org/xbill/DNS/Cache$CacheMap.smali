.class Lorg/xbill/DNS/Cache$CacheMap;
.super Ljava/util/LinkedHashMap;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheMap"
.end annotation


# instance fields
.field private maxsize:I


# direct methods
.method constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 132
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Cache$CacheMap;->maxsize:I

    .line 133
    iput p1, p0, Lorg/xbill/DNS/Cache$CacheMap;->maxsize:I

    .line 134
    return-void
.end method


# virtual methods
.method getMaxSize()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/xbill/DNS/Cache$CacheMap;->maxsize:I

    return v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter

    .prologue
    .line 152
    iget v0, p0, Lorg/xbill/DNS/Cache$CacheMap;->maxsize:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/Cache$CacheMap;->size()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/Cache$CacheMap;->maxsize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setMaxSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput p1, p0, Lorg/xbill/DNS/Cache$CacheMap;->maxsize:I

    .line 149
    return-void
.end method
