.class Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$1;
.super Ljava/util/LinkedHashMap;
.source "CommonNormalizedCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    const-string v0, "VolumeUp"

    const-string v1, "VolumeUp"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "VolumeDown"

    const-string v1, "VolumeDown"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "VolumeMute"

    const-string v1, "Mute"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method
