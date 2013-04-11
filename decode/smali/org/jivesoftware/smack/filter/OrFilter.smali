.class public Lorg/jivesoftware/smack/filter/OrFilter;
.super Ljava/lang/Object;
.source "OrFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# instance fields
.field private filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    .line 63
    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 66
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 92
    move v0, v2

    :goto_0
    iget v1, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_1
    return v0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    goto :goto_1
.end method

.method public addFilter(Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    iget-object v1, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 81
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 82
    iget-object v2, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    iput-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 87
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    iget v1, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    aput-object p1, v0, v1

    .line 88
    iget v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->size:I

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:[Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
