.class public abstract Lcom/logitech/harmonylink/model/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# static fields
.field public static final ACTIVITIES:Ljava/lang/String; = "activities"

.field public static final APPLICATIONS:Ljava/lang/String; = "applications"

.field public static final BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field public static final SHORTCUTS:Ljava/lang/String; = "shortcuts"


# instance fields
.field protected contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation
.end field

.field private isPopulated:Z

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/logitech/harmonylink/model/ContentType;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/logitech/harmonylink/model/ContentType;
    .locals 1
    .parameter "context"
    .parameter "contentType"

    .prologue
    .line 46
    const-string v0, "bookmarks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/logitech/harmonylink/model/Bookmarks;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/model/Bookmarks;-><init>(Landroid/content/Context;)V

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string v0, "applications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/logitech/harmonylink/model/Applications;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/model/Applications;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lcom/logitech/harmonylink/model/HarmonyActivityContents;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/model/HarmonyActivityContents;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "shortcuts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    new-instance v0, Lcom/logitech/harmonylink/model/Shortcuts;

    invoke-direct {v0, p0}, Lcom/logitech/harmonylink/model/Shortcuts;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 56
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ContentType;->contents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/logitech/harmonylink/model/ContentType;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "encodedIcon"

    .prologue
    .line 98
    invoke-static {p1}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    .local v0, arr:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public isPopulated()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/logitech/harmonylink/model/ContentType;->isPopulated:Z

    return v0
.end method

.method public abstract retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;Z)V
.end method

.method public abstract retrieveContents(Lcom/logitech/connect/ConnectClient;Lcom/logitech/harmonylink/harmony/OneTouchManager;ZLjava/lang/String;)V
.end method

.method public retriveIcon(Lcom/logitech/connect/ConnectClient;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "connectClient"
    .parameter "kaBoxId"
    .parameter "path"
    .parameter "imageView"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 89
    return-void
.end method

.method public setContents(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/logitech/harmonylink/model/OneTouchContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/logitech/harmonylink/model/OneTouchContent;>;"
    iput-object p1, p0, Lcom/logitech/harmonylink/model/ContentType;->contents:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method public setPopulated(Z)V
    .locals 0
    .parameter "isPopulated"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/logitech/harmonylink/model/ContentType;->isPopulated:Z

    .line 65
    return-void
.end method
