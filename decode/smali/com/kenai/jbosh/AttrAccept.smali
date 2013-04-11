.class final Lcom/kenai/jbosh/AttrAccept;
.super Lcom/kenai/jbosh/AbstractAttr;
.source "AttrAccept.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/AbstractAttr",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final encodings:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractAttr;-><init>(Ljava/lang/Comparable;)V

    .line 38
    const-string v0, "[\\s,]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/AttrAccept;->encodings:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrAccept;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/AttrAccept;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrAccept;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method isAccepted(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Lcom/kenai/jbosh/AttrAccept;->encodings:[Ljava/lang/String;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 71
    :goto_1
    return v0

    .line 66
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 71
    goto :goto_1
.end method
