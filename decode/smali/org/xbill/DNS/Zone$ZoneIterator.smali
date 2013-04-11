.class Lorg/xbill/DNS/Zone$ZoneIterator;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Zone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoneIterator"
.end annotation


# instance fields
.field private count:I

.field private current:[Lorg/xbill/DNS/RRset;

.field final synthetic this$0:Lorg/xbill/DNS/Zone;

.field private wantLastSOA:Z

.field private zentries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Zone;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 39
    iput-object p1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    #getter for: Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iput-boolean p2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    .line 44
    #getter for: Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v0

    #calls: Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    invoke-static {p1, v0}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 45
    array-length v1, v0

    new-array v1, v1, [Lorg/xbill/DNS/RRset;

    iput-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    move v1, v7

    move v2, v6

    .line 46
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 47
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    .line 48
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 49
    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    aget-object v4, v0, v2

    aput-object v4, v3, v6

    .line 46
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 50
    :cond_0
    if-ne v3, v7, :cond_1

    .line 51
    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    const/4 v4, 0x1

    aget-object v5, v0, v2

    aput-object v5, v3, v4

    goto :goto_1

    .line 53
    :cond_1
    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    add-int/lit8 v4, v1, 0x1

    aget-object v5, v0, v2

    aput-object v5, v3, v1

    move v1, v4

    goto :goto_1

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone$ZoneIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    if-nez v0, :cond_1

    .line 68
    iput-boolean v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    .line 69
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    #getter for: Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;
    invoke-static {v1}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    #calls: Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Zone;->access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 71
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    iget v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    aget-object v1, v0, v1

    .line 72
    iget v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    iget-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 74
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zentries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    #getter for: Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;
    invoke-static {v3}, Lorg/xbill/DNS/Zone;->access$400(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    iget-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    #calls: Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    invoke-static {v2, v0}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    .line 79
    array-length v2, v0

    if-eqz v2, :cond_2

    .line 81
    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:[Lorg/xbill/DNS/RRset;

    .line 82
    iput v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->count:I

    :cond_3
    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
