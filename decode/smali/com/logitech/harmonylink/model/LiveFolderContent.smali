.class public Lcom/logitech/harmonylink/model/LiveFolderContent;
.super Ljava/lang/Object;
.source "LiveFolderContent.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsAvailable:Z

.field private mLabel:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mIsAvailable:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0
    .parameter "isAvailable"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mIsAvailable:Z

    .line 53
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mLabel:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/logitech/harmonylink/model/LiveFolderContent;->mType:Ljava/lang/String;

    .line 29
    return-void
.end method
