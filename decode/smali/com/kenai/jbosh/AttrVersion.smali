.class final Lcom/kenai/jbosh/AttrVersion;
.super Lcom/kenai/jbosh/AbstractAttr;
.source "AttrVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kenai/jbosh/AbstractAttr",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# static fields
.field private static final DEFAULT:Lcom/kenai/jbosh/AttrVersion;


# instance fields
.field private final major:I

.field private final minor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    :try_start_0
    const-string v0, "1.8"

    invoke-static {v0}, Lcom/kenai/jbosh/AttrVersion;->createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrVersion;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/AttrVersion;->DEFAULT:Lcom/kenai/jbosh/AttrVersion;
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/AbstractAttr;-><init>(Ljava/lang/Comparable;)V

    .line 56
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 57
    if-gtz v0, :cond_0

    .line 58
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal ver attribute value (not in major.minor form): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 65
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kenai/jbosh/AttrVersion;->major:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget v1, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    if-gez v1, :cond_1

    .line 73
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Major version may not be < 0"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v2, Lcom/kenai/jbosh/BOSHException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse ver attribute value (major ver): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    if-gez v0, :cond_2

    .line 87
    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Minor version may not be < 0"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :catch_1
    move-exception v1

    .line 81
    new-instance v2, Lcom/kenai/jbosh/BOSHException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse ver attribute value (minor ver): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 90
    :cond_2
    return-void
.end method

.method static createFromString(Ljava/lang/String;)Lcom/kenai/jbosh/AttrVersion;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/AttrVersion;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/AttrVersion;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getSupportedVersion()Lcom/kenai/jbosh/AttrVersion;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/kenai/jbosh/AttrVersion;->DEFAULT:Lcom/kenai/jbosh/AttrVersion;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 147
    instance-of v0, p1, Lcom/kenai/jbosh/AttrVersion;

    if-eqz v0, :cond_4

    .line 148
    check-cast p1, Lcom/kenai/jbosh/AttrVersion;

    .line 149
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    iget v1, p1, Lcom/kenai/jbosh/AttrVersion;->major:I

    if-ge v0, v1, :cond_0

    move v0, v2

    .line 161
    :goto_0
    return v0

    .line 151
    :cond_0
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    iget v1, p1, Lcom/kenai/jbosh/AttrVersion;->major:I

    if-le v0, v1, :cond_1

    move v0, v4

    .line 152
    goto :goto_0

    .line 153
    :cond_1
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    iget v1, p1, Lcom/kenai/jbosh/AttrVersion;->minor:I

    if-ge v0, v1, :cond_2

    move v0, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    iget v1, p1, Lcom/kenai/jbosh/AttrVersion;->minor:I

    if-le v0, v1, :cond_3

    move v0, v4

    .line 156
    goto :goto_0

    :cond_3
    move v0, v3

    .line 158
    goto :goto_0

    :cond_4
    move v0, v3

    .line 161
    goto :goto_0
.end method

.method getMajor()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->major:I

    return v0
.end method

.method getMinor()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/kenai/jbosh/AttrVersion;->minor:I

    return v0
.end method
