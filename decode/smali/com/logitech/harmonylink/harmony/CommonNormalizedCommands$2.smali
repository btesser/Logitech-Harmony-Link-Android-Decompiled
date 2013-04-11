.class Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$2;
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
    .line 84
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    const-string v0, "ChannelUp"

    const-string v1, "ChannelUp"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "ChannelDown"

    const-string v1, "ChannelDown"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method
