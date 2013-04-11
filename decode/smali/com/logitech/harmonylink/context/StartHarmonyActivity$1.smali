.class Lcom/logitech/harmonylink/context/StartHarmonyActivity$1;
.super Ljava/lang/Object;
.source "StartHarmonyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/logitech/harmonylink/context/StartHarmonyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$1;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/logitech/harmonylink/context/StartHarmonyActivity$1;->this$0:Lcom/logitech/harmonylink/context/StartHarmonyActivity;

    #calls: Lcom/logitech/harmonylink/context/StartHarmonyActivity;->sendHeartbeat()V
    invoke-static {v0}, Lcom/logitech/harmonylink/context/StartHarmonyActivity;->access$000(Lcom/logitech/harmonylink/context/StartHarmonyActivity;)V

    .line 79
    return-void
.end method
