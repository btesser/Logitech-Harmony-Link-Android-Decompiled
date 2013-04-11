.class public Lcom/logitech/harmonylink/model/OneTouchContent;
.super Ljava/lang/Object;
.source "OneTouchContent.java"


# static fields
.field public static final ACTIVITIES:Ljava/lang/String; = "activities"

.field public static final APPLICATIONS:Ljava/lang/String; = "applications"

.field public static final BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field public static final CHANNEL:Ljava/lang/String; = "channels"

.field public static final SHORTCUTS:Ljava/lang/String; = "shortcuts"


# instance fields
.field private isExist:Z

.field private mCategory:Ljava/lang/String;

.field private mIconHash:Ljava/lang/String;

.field private mIconPath:Ljava/lang/String;

.field private mIsChanged:Z

.field private mLabel:Ljava/lang/String;

.field private mLauncherParameter:Ljava/lang/String;

.field private mResourceId:I

.field private mRowId:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "label"
    .parameter "category"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->isExist:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->position:I

    .line 30
    iput-boolean v1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mIsChanged:Z

    .line 35
    iput-object p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mLabel:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mCategory:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mIconHash:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPresent()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->isExist:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mLauncherParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->position:I

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mResourceId:I

    return v0
.end method

.method public getRowId()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mRowId:I

    return v0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mIsChanged:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mCategory:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setChanged(Z)V
    .locals 0
    .parameter "isChanged"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mIsChanged:Z

    .line 94
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mIconHash:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0
    .parameter "iconPath"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mIconPath:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setIsPresent(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->isExist:Z

    .line 78
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mLabel:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLauncherParameter(Ljava/lang/String;)V
    .locals 0
    .parameter "launcherParameter"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mLauncherParameter:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 85
    iput p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->position:I

    .line 86
    return-void
.end method

.method public setResourceId(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 101
    iput p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mResourceId:I

    .line 102
    return-void
.end method

.method public setRowId(I)V
    .locals 0
    .parameter "rowId"

    .prologue
    .line 109
    iput p1, p0, Lcom/logitech/harmonylink/model/OneTouchContent;->mRowId:I

    .line 110
    return-void
.end method
