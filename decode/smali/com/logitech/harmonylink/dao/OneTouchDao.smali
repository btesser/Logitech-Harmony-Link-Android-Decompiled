.class public Lcom/logitech/harmonylink/dao/OneTouchDao;
.super Ljava/lang/Object;
.source "OneTouchDao.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/logitech/harmonylink/dao/OneTouchDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/dao/OneTouchDao;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bulkInsert(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "context"
    .parameter "revue_Id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, oneTouchContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    const/4 v5, 0x1

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 345
    .local v2, params:[Ljava/lang/String;
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "revue_uuid = ?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    invoke-static {p1, p2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->convertOneTouchContentsAsContentValues(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentValues;

    move-result-object v1

    .line 348
    .local v1, contentValues:[Landroid/content/ContentValues;
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 349
    return v5
.end method

.method public static bulkUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 9
    .parameter "context"
    .parameter "revue_uuid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, oneTouchContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    const/4 v8, 0x1

    .line 236
    const/4 v4, 0x0

    .line 237
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 249
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    .line 252
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 253
    .local v2, currentItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-virtual {v2}, Lcom/logitech/harmonylink/model/OneTouchContent;->isChanged()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 255
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v5, "display_order"

    invoke-virtual {v2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 258
    invoke-virtual {v2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 259
    sget-object v5, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "revue_uuid = ? AND launcher_parameter = ?"

    invoke-virtual {v0, v5, v1, v6, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #currentItem:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 267
    invoke-static {p1, p2}, Lcom/logitech/harmonylink/dao/OneTouchDao;->getIdsWithRevueId(Ljava/lang/String;Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v4

    .line 268
    sget-object v5, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revue_uuid = ? and _id not in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Lcom/logitech/harmonylink/dao/OneTouchDao;->getPlaceHolderQuestionMark(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    :cond_2
    return v8
.end method

.method private static convertOneTouchContentsAsContentValues(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentValues;
    .locals 7
    .parameter "revue_uuid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, oneTouchContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    const/4 v0, 0x0

    .line 358
    .local v0, contentValues:[Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 359
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Landroid/content/ContentValues;

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, counter:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 362
    .local v3, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v0, v1

    .line 363
    aget-object v4, v0, v1

    const-string v5, "revue_uuid"

    invoke-virtual {v4, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    aget-object v4, v0, v1

    const-string v5, "category"

    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    aget-object v4, v0, v1

    const-string v5, "display_name"

    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    aget-object v4, v0, v1

    const-string v5, "display_order"

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    aget-object v4, v0, v1

    const-string v5, "launcher_parameter"

    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    aget-object v4, v0, v1

    const-string v5, "image_hash"

    invoke-virtual {v3}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1           #counter:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    :cond_0
    return-object v0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x1

    return v1
.end method

.method public static fetchActivityIdsFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter "revue_Id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v8, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    const-string v2, "activities"

    aput-object v2, v4, v1

    .line 447
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 448
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 451
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "revue_uuid = ? AND category = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 454
    if-eqz v7, :cond_1

    .line 455
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    const-string v1, "launcher_parameter"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, associatedActivityID:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 463
    .end local v6           #associatedActivityID:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_0

    .line 464
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 463
    :cond_1
    if-eqz v7, :cond_2

    .line 464
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_2
    return-object v8
.end method

.method public static fetchLauncherParamsFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter "revue_Id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v8, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    const-string v2, "activities"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "shortcuts"

    aput-object v2, v4, v1

    .line 420
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 421
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "revue_uuid = ? AND (category = ? OR category = ?)"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 427
    if-eqz v7, :cond_1

    .line 428
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    const-string v1, "launcher_parameter"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, associatedActivityID:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    .end local v6           #associatedActivityID:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_0

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 436
    :cond_1
    if-eqz v7, :cond_2

    .line 437
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_2
    return-object v8
.end method

.method private static getIdsWithRevueId(Ljava/lang/String;Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 7
    .parameter "revue_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, oneTouchContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    .line 278
    .local v0, args:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    aput-object p0, v0, v6

    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 281
    const/4 v3, 0x1

    .line 282
    .local v3, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/logitech/harmonylink/model/OneTouchContent;

    .line 283
    .local v2, currentContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getRowId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 284
    invoke-virtual {v2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getRowId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 287
    .end local v2           #currentContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method public static getMaxColoumn(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "revue_Id"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "MAX(display_order)"

    aput-object v1, v2, v5

    .line 103
    .local v2, select:[Ljava/lang/String;
    const-string v3, "revue_uuid = ?"

    .line 104
    .local v3, where:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 105
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 106
    .local v6, cur:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 108
    .local v7, noOfItems:I
    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 114
    :cond_0
    if-eqz v6, :cond_1

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_1
    add-int/lit8 v1, v7, 0x1

    return v1

    .line 114
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private static getPlaceHolderQuestionMark(I)Ljava/lang/String;
    .locals 5
    .parameter "totalParameters"

    .prologue
    const/4 v4, 0x1

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 293
    const-string v2, "?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 299
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public static getTotalOneTouchItems(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "revue_Id"

    .prologue
    .line 482
    const/4 v7, 0x0

    .line 483
    .local v7, total_items:I
    const/4 v6, 0x0

    .line 484
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 487
    .local v4, values:[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "revue_uuid=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 491
    if-eqz v6, :cond_0

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_0
    return v7

    .line 491
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method public static insert(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/harmonylink/model/OneTouchContent;I)Z
    .locals 4
    .parameter "context"
    .parameter "revue_uuid"
    .parameter "oneTouchContent"
    .parameter "position"

    .prologue
    .line 314
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v2, "revue_uuid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "category"

    invoke-virtual {p2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "display_name"

    invoke-virtual {p2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "display_order"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v2, "launcher_parameter"

    invoke-virtual {p2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getLauncherParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "image_hash"

    invoke-virtual {p2}, Lcom/logitech/harmonylink/model/OneTouchContent;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 327
    const/4 v2, 0x1

    return v2
.end method

.method public static retrieveActvityName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "uuid"
    .parameter "activityId"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 385
    const/4 v8, 0x0

    .line 386
    .local v8, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 388
    .local v7, imageHash:Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v11

    .line 389
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 393
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "revue_uuid = ? AND launcher_parameter = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 395
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 397
    const-string v1, "image_hash"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 400
    :cond_0
    if-eqz v6, :cond_1

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_1
    new-array v9, v12, [Ljava/lang/String;

    aput-object v8, v9, v10

    aput-object v7, v9, v11

    .line 406
    .local v9, returnValues:[Ljava/lang/String;
    return-object v9

    .line 400
    .end local v9           #returnValues:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static retrieveContents(Landroid/content/Context;Lcom/logitech/harmonylink/harmony/Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .parameter "dom"
    .parameter "revue_Id"
    .parameter "hub_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/logitech/harmonylink/harmony/Dom;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .end local p1
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local p1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    aput-object p2, v4, p0

    .line 48
    .local v4, params:[Ljava/lang/String;
    const-string v3, "revue_uuid = ?"

    .line 49
    .local v3, whereString:Ljava/lang/String;
    const/4 p0, 0x0

    .line 51
    .local p0, cur:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "Revue 2.0"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string v3, "revue_uuid = ?"

    .line 60
    .end local p3
    :cond_0
    :goto_0
    sget-object v1, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p2

    .line 62
    .end local p0           #cur:Landroid/database/Cursor;
    .local p2, cur:Landroid/database/Cursor;
    if-eqz p2, :cond_3

    .line 63
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :goto_1
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 64
    const-string p0, "_id"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, id:Ljava/lang/String;
    const-string p0, "display_name"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, label:Ljava/lang/String;
    const-string p0, "category"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 69
    .local p0, contentType:Ljava/lang/String;
    const-string p3, "launcher_parameter"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, launcherParam:Ljava/lang/String;
    const-string p3, "image_hash"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 74
    .local p3, iconHash:Ljava/lang/String;
    const-string v5, "display_order"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, position:Ljava/lang/String;
    new-instance v5, Lcom/logitech/harmonylink/model/OneTouchContent;

    invoke-direct {v5, v1, p0}, Lcom/logitech/harmonylink/model/OneTouchContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v5, oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0           #contentType:Ljava/lang/String;
    invoke-virtual {v5, p0}, Lcom/logitech/harmonylink/model/OneTouchContent;->setRowId(I)V

    .line 79
    invoke-virtual {v5, p3}, Lcom/logitech/harmonylink/model/OneTouchContent;->setHash(Ljava/lang/String;)V

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v5, p0}, Lcom/logitech/harmonylink/model/OneTouchContent;->setPosition(I)V

    .line 81
    invoke-virtual {v5, v2}, Lcom/logitech/harmonylink/model/OneTouchContent;->setIconPath(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v5, v2}, Lcom/logitech/harmonylink/model/OneTouchContent;->setLauncherParameter(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #label:Ljava/lang/String;
    .end local v2           #launcherParam:Ljava/lang/String;
    .end local v5           #oneTouchContent:Lcom/logitech/harmonylink/model/OneTouchContent;
    .end local v6           #position:Ljava/lang/String;
    .end local p3           #iconHash:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    .end local p1           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    .end local p2           #cur:Landroid/database/Cursor;
    .local p0, cur:Landroid/database/Cursor;
    :goto_2
    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    .line 53
    .local v0, contentResolver:Landroid/content/ContentResolver;
    .restart local p1       #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    .local p2, revue_Id:Ljava/lang/String;
    .local p3, hub_id:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v1, "82"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    .end local p3           #hub_id:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 54
    const/4 p3, 0x2

    new-array v4, p3, [Ljava/lang/String;

    .line 55
    const/4 p3, 0x0

    aput-object p2, v4, p3

    .line 56
    const/4 p3, 0x1

    aput-object p2, v4, p3

    .line 57
    const-string v3, "revue_uuid = ? or (category = \'channels\' and revue_uuid != ? )"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 87
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local p0           #cur:Landroid/database/Cursor;
    .local p2, cur:Landroid/database/Cursor;
    :cond_3
    if-eqz p2, :cond_4

    .line 88
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_4
    return-object p1

    .line 87
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local p0       #cur:Landroid/database/Cursor;
    .local p2, revue_Id:Ljava/lang/String;
    :catchall_1
    move-exception p1

    goto :goto_2
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Lcom/logitech/harmonylink/model/OneTouchContent;II)Z
    .locals 6
    .parameter "context"
    .parameter "revueUuid"
    .parameter "oneTouchContentValue"
    .parameter "oldposition"
    .parameter "newposition"

    .prologue
    const/4 v5, 0x1

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v3, "display_order"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 158
    .local v2, whereArgs:[Ljava/lang/String;
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "revue_uuid = ? AND display_order = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    return v5
.end method

.method public static updateDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "hubUuid"
    .parameter "oldName"
    .parameter "newName"

    .prologue
    const/4 v5, 0x1

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v3, "display_name"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    .line 181
    .local v2, whereArgs:[Ljava/lang/String;
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "revue_uuid = ? AND display_name = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    return v5
.end method

.method public static updateImageHash(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "rowId"
    .parameter "imageHash"

    .prologue
    const/4 v5, 0x1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v3, "image_hash"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 135
    .local v2, whereArgs:[Ljava/lang/String;
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    return v5
.end method

.method public static updateImageHash(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "hubUuid"
    .parameter "activityId"
    .parameter "imageHash"

    .prologue
    const/4 v5, 0x1

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v3, "image_hash"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    .line 194
    .local v2, whereArgs:[Ljava/lang/String;
    sget-object v3, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "revue_uuid = ? AND launcher_parameter = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    return v5
.end method
