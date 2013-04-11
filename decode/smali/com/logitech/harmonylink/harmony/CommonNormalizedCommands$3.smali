.class Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$3;
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
    .line 92
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    const-string v0, "PowerAVR"

    const-string v1, "PowerToggle"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "PowerSTB"

    const-string v1, "PowerToggle"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "PowerTV"

    const-string v1, "PowerToggle"

    invoke-virtual {p0, v0, v1}, Lcom/logitech/harmonylink/harmony/CommonNormalizedCommands$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
