.class public Lcom/logitech/harmonylink/provider/OneTouchContentProvider;
.super Landroid/content/ContentProvider;
.source "OneTouchContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;,
        Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.logitech.harmonylink.provider.OneTouchContentProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "remoteonetouch.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_ONETOUCH:Ljava/lang/String; = "onetouch_item_detail"


# instance fields
.field private dbHelper:Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.logitech.harmonylink.provider.OneTouchContentProvider/onetouch_item_detail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 143
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 102
    const/4 v7, 0x0

    .line 103
    .local v7, total_inserted:I
    iget-object v8, p0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->dbHelper:Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 104
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_2

    array-length v8, p2

    if-lez v8, :cond_2

    .line 106
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 107
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ContentValues;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 108
    .local v3, currentValue:Landroid/content/ContentValues;
    const-string v8, "onetouch_item_detail"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 110
    .local v1, currentRowId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_0

    .line 111
    add-int/lit8 v7, v7, 0x1

    .line 107
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v1           #currentRowId:J
    .end local v3           #currentValue:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 119
    .end local v0           #arr$:[Landroid/content/ContentValues;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_2
    return v7

    .line 115
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->dbHelper:Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "onetouch_item_detail"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, total_rows_deleted:I
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 67
    const-string v0, "vnd.android.cursor.dir/onetouchitem"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->dbHelper:Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 73
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "onetouch_item_detail"

    invoke-virtual {v0, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 74
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    move-object v3, v5

    .line 79
    :goto_0
    return-object v3

    .line 77
    :cond_0
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v3, p1

    .line 79
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->dbHelper:Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v1, p0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->dbHelper:Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "onetouch_item_detail"

    if-nez p5, :cond_0

    const-string v2, "display_order"

    move-object v7, v2

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 137
    .local v8, cur:Landroid/database/Cursor;
    return-object v8

    .end local v8           #cur:Landroid/database/Cursor;
    :cond_0
    move-object v7, p5

    .line 133
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 84
    iget-object v3, p0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider;->dbHelper:Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 87
    const-string v3, "onetouch_item_detail"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, rowsUpdated:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v2

    .end local v2           #rowsUpdated:I
    :goto_0
    return v3

    .line 91
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 92
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 95
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method
