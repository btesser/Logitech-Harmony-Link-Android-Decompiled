.class public final Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;
.super Ljava/lang/Object;
.source "OneTouchContentProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/provider/OneTouchContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneTouchColummns"
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/onetouchitem"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final IMAGE_HASH:Ljava/lang/String; = "image_hash"

.field public static final LAUNCHER_PARAMETER:Ljava/lang/String; = "launcher_parameter"

.field public static final ONETOUCH_ID:Ljava/lang/String; = "_id"

.field public static final REVUE_UUID:Ljava/lang/String; = "revue_uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "content://com.logitech.harmonylink.provider.OneTouchContentProvider/onetouch_item_detail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/provider/OneTouchContentProvider$OneTouchColummns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method
