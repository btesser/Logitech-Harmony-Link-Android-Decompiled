.class public final Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$Favorites;
.super Ljava/lang/Object;
.source "LayoutSettings.java"

# interfaces
.implements Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$BaseLauncherColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field public static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_DESKTOP:I = -0x64

.field static final CONTENT_URI:Landroid/net/Uri; = null

.field static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field public static final DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field static final IS_SHORTCUT:Ljava/lang/String; = "isShortcut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ITEM_TYPE_APPWIDGET:I = 0x4

.field public static final ITEM_TYPE_LIVE_FOLDER:I = 0x3

.field public static final ITEM_TYPE_USER_FOLDER:I = 0x2

.field public static final ITEM_TYPE_WIDGET_CLOCK:I = 0x3e8

.field public static final ITEM_TYPE_WIDGET_PHOTO_FRAME:I = 0x3ea

.field public static final ITEM_TYPE_WIDGET_SEARCH:I = 0x3e9

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final SPANX:Ljava/lang/String; = "spanX"

.field public static final SPANY:Ljava/lang/String; = "spanY"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const-string v0, "content://com.logitech.harmonylink.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 204
    const-string v0, "content://com.logitech.harmonylink.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.logitech.harmonylink.settings/favorites/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
