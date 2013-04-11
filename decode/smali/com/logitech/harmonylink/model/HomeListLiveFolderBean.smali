.class public Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;
.super Ljava/lang/Object;
.source "HomeListLiveFolderBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;",
        ">;"
    }
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPath:Ljava/lang/String;

.field private mSectionOrder:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "path"
    .parameter "title"
    .parameter "section_order"
    .parameter "icon"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mPath:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mTitle:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mSectionOrder:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 17
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;)I
    .locals 5
    .parameter "another"

    .prologue
    const/4 v4, 0x0

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mSectionOrder:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, position:I
    iget-object v3, p1, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mSectionOrder:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    .local v0, anotherPosition:I
    if-ge v2, v0, :cond_0

    .line 64
    const/4 v3, -0x1

    .line 72
    .end local v0           #anotherPosition:I
    .end local v2           #position:I
    :goto_0
    return v3

    .line 65
    .restart local v0       #anotherPosition:I
    .restart local v2       #position:I
    :cond_0
    if-le v2, v0, :cond_1

    .line 66
    const/4 v3, 0x1

    goto :goto_0

    .line 68
    .end local v0           #anotherPosition:I
    .end local v2           #position:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/Exception;
    move v3, v4

    .line 69
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #anotherPosition:I
    .restart local v2       #position:I
    :cond_1
    move v3, v4

    .line 72
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    check-cast p1, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->compareTo(Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;)I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mSectionOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSectionOrder(Ljava/lang/String;)V
    .locals 0
    .parameter "sectionOrder"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mSectionOrder:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mTitle:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/logitech/harmonylink/model/HomeListLiveFolderBean;->mTitle:Ljava/lang/String;

    return-object v0
.end method
