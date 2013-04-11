.class public Lcom/logitech/harmonylink/view/widget/ButtonDef;
.super Ljava/lang/Object;
.source "ButtonDef.java"


# instance fields
.field private mID:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mLabelResourceID:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mID:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabelResourceID:Ljava/lang/Integer;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "labelResourceID"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mID:Ljava/lang/String;

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabelResourceID:Ljava/lang/Integer;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "id"
    .parameter "labelResourceID"
    .parameter "viewID"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mID:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabelResourceID:Ljava/lang/Integer;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "label"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mID:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabelResourceID:Ljava/lang/Integer;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "label"
    .parameter "viewID"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mID:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabelResourceID:Ljava/lang/Integer;

    .line 33
    return-void
.end method


# virtual methods
.method public getHashKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabelResourceID:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabelResourceID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/ButtonDef;->mID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
