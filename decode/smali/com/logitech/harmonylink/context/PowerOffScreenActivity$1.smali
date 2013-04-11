.class Lcom/logitech/harmonylink/context/PowerOffScreenActivity$1;
.super Ljava/lang/Object;
.source "PowerOffScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/context/PowerOffScreenActivity;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/PowerOffScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/PowerOffScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/logitech/harmonylink/context/PowerOffScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/PowerOffScreenActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/PowerOffScreenActivity;->finish()V

    .line 49
    return-void
.end method
