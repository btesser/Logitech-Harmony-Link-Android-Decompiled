.class Lcom/logitech/harmonylink/context/SplashScreenActivity$1$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/logitech/harmonylink/context/SplashScreenActivity$1;


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/context/SplashScreenActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1$1;->this$1:Lcom/logitech/harmonylink/context/SplashScreenActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1$1;->this$1:Lcom/logitech/harmonylink/context/SplashScreenActivity$1;

    iget-object v0, v0, Lcom/logitech/harmonylink/context/SplashScreenActivity$1;->this$0:Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/logitech/harmonylink/context/SplashScreenActivity;->skip()V

    .line 120
    return-void
.end method
