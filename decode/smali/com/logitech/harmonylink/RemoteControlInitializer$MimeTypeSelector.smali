.class Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;
.super Ljava/lang/Object;
.source "RemoteControlInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/RemoteControlInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MimeTypeSelector"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MimeTypeSelector"

.field private static mMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "requestType"

    .prologue
    .line 193
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static prepareMimeTypes(Lcom/logitech/connect/Target;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/logitech/connect/Target;->getHubId()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, hubId:Ljava/lang/String;
    invoke-static {v0}, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->prepareMimeTypes(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static prepareMimeTypes(Ljava/lang/String;)V
    .locals 1
    .parameter "hubId"

    .prologue
    .line 183
    if-nez p0, :cond_1

    .line 184
    invoke-static {}, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->prepareMimeTypesForKa1x()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v0, "Revue 2.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-static {}, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->prepareMimeTypesForKa2x()V

    goto :goto_0

    .line 187
    :cond_2
    const-string v0, "82"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->prepareMimeTypesForOlive()V

    goto :goto_0
.end method

.method private static prepareMimeTypesForKa1x()V
    .locals 3

    .prologue
    .line 197
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 198
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "getUserConfig"

    const-string v2, "vnd.logitech.harmony/vnd.logitech.activity?get"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "activity"

    const-string v2, "vnd.logitech.harmony/vnd.logitech.activity?start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method private static prepareMimeTypesForKa2x()V
    .locals 3

    .prologue
    .line 205
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 206
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "getUserConfig"

    const-string v2, "vnd.logitech.harmony/vnd.logitech.harmony.engine?config"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "activity"

    const-string v2, "vnd.logitech.harmony/vnd.logitech.harmony.engine?startActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method private static prepareMimeTypesForOlive()V
    .locals 3

    .prologue
    .line 213
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 214
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "getUserConfig"

    const-string v2, "vnd.logitech.harmony/vnd.logitech.harmony.engine?config"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/logitech/harmonylink/RemoteControlInitializer$MimeTypeSelector;->mMimeTypeMap:Ljava/util/HashMap;

    const-string v1, "activity"

    const-string v2, "vnd.logitech.harmony/vnd.logitech.harmony.engine?startActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method
