.class public final Lcom/logitech/harmonylink/view/widget/dragdrop/LayoutSettings$AllTables;
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
    name = "AllTables"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 183
    const-string v0, "content://com.logitech.harmonylink.settings/*/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
