.class Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;
.super Ljava/lang/Object;
.source "OliveSyncProcessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->changeAlertMessage(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

.field final synthetic val$messageType:I


# direct methods
.method constructor <init>(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    iput p2, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->val$messageType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 935
    iget v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->val$messageType:I

    const v2, 0x7f060094

    if-ne v1, v2, :cond_0

    .line 936
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    .line 947
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    #getter for: Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->mIsFromLoginScreen:Z
    invoke-static {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->access$2800(Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    goto :goto_0

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->finish()V

    .line 941
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    const-class v2, Lcom/logitech/harmonylink/context/SplashScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 943
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 945
    iget-object v1, p0, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity$15;->this$0:Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;

    invoke-virtual {v1, v0}, Lcom/logitech/harmonylink/olive/ui/OliveSyncProcessActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
