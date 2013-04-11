.class final Lcom/kenai/jbosh/AttrSessionID;
.super Lcom/kenai/jbosh/AbstractAttr;
.source "AttrSessionID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/AbstractAttr",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractAttr;-><init>(Ljava/lang/Comparable;)V

    .line 32
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrSessionID;
    .locals 1
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/kenai/jbosh/AttrSessionID;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrSessionID;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
