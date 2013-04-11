.class public Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;
.super Ljava/lang/Object;
.source "ChoiceCallback.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x372c6568bccd79c7L


# instance fields
.field private choices:[Ljava/lang/String;

.field private defaultChoice:I

.field private multipleSelectionsAllowed:Z

.field private prompt:Ljava/lang/String;

.field private selections:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setPrompt(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setChoices([Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p3}, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->setDefaultChoice(I)V

    .line 72
    iput-boolean p4, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    .line 73
    return-void
.end method

.method private setChoices([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 43
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_4
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method private setDefaultChoice(I)V
    .locals 2
    .parameter

    .prologue
    .line 60
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.1D"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->defaultChoice:I

    .line 64
    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "auth.14"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->prompt:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public allowMultipleSelections()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    return v0
.end method

.method public getChoices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->choices:[Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultChoice()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->defaultChoice:I

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIndexes()[I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    return-object v0
.end method

.method public setSelectedIndex(I)V
    .locals 2
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 98
    return-void
.end method

.method public setSelectedIndexes([I)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->multipleSelectionsAllowed:Z

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/callback/ChoiceCallback;->selections:[I

    .line 108
    return-void
.end method
