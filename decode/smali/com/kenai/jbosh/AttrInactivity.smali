.class final Lcom/kenai/jbosh/AttrInactivity;
.super Lcom/kenai/jbosh/AbstractIntegerAttr;
.source "AttrInactivity.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractIntegerAttr;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/AttrInactivity;->checkMinValue(I)V

    .line 34
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrInactivity;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/AttrInactivity;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrInactivity;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
