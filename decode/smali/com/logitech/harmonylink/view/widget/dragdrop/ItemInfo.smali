.class public Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field cellX:I

.field cellY:I

.field public container:J

.field id:J

.field isGesture:Z

.field public itemType:I

.field protected mCell:Landroid/view/View;

.field screen:I

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->id:J

    .line 54
    iput-wide v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    .line 59
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    .line 64
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    .line 69
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    .line 74
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanX:I

    .line 79
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanY:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->isGesture:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->id:J

    .line 54
    iput-wide v2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    .line 59
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    .line 64
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    .line 69
    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    .line 74
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanX:I

    .line 79
    iput v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanY:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->isGesture:Z

    .line 92
    iget-wide v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->id:J

    .line 93
    iget v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    .line 94
    iget v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    .line 95
    iget v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanX:I

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanX:I

    .line 96
    iget v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanY:I

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanY:I

    .line 97
    iget v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    .line 98
    iget v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->itemType:I

    iput v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->itemType:I

    .line 99
    iget-wide v0, p1, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    .line 100
    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 170
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 172
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 173
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 174
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 176
    const-string v3, "icon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v2           #size:I
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #size:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 178
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Lcom/logitech/harmonylink/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCell()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->mCell:Landroid/view/View;

    return-object v0
.end method

.method public getCellX()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    return v0
.end method

.method public getHashKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanY:I

    return v0
.end method

.method protected onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 154
    const-string v0, "itemType"

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    iget-boolean v0, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->isGesture:Z

    if-nez v0, :cond_0

    .line 156
    const-string v0, "container"

    iget-wide v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string v0, "screen"

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v0, "cellX"

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v0, "cellY"

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v0, "spanX"

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v0, "spanY"

    iget v1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setCell(II)V
    .locals 0
    .parameter "_cellX"
    .parameter "_cellY"

    .prologue
    .line 103
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellX:I

    .line 104
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->cellY:I

    .line 105
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->id:J

    .line 138
    return-void
.end method

.method public setScreen(I)V
    .locals 0
    .parameter "_screen"

    .prologue
    .line 113
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->screen:I

    .line 114
    return-void
.end method

.method public setSpan(II)V
    .locals 0
    .parameter "_spanX"
    .parameter "_spanY"

    .prologue
    .line 108
    iput p1, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanX:I

    .line 109
    iput p2, p0, Lcom/logitech/harmonylink/view/widget/dragdrop/ItemInfo;->spanY:I

    .line 110
    return-void
.end method
